import com.google.gson.Gson;
import org.json.JSONObject;
import java.sql.*;
import java.util.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Date;
import java.text.SimpleDateFormat;

import java.net.URI;
import java.net.URISyntaxException;

import static spark.Spark.*;
import spark.template.freemarker.FreeMarkerEngine;
import spark.ModelAndView;
import static spark.Spark.get;

import com.heroku.sdk.jdbc.DatabaseUrl;
import spark.Request;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;

public class Main {

  public static void main(String[] args) {

    port(Integer.valueOf(System.getenv("PORT")));
    staticFileLocation("/public");

    new ProductController (new ProductService());

    Gson gson=new Gson();

    get("/showindex", (request, response) -> {
            Map<String, Object> attributes = new HashMap<>();
            SimpleDateFormat formatter = new SimpleDateFormat("EEEE");
            String date = formatter.format(new Date());
            attributes.put("date",date);
            attributes.put("message", "Hello World!");

            return new ModelAndView(attributes, "showindex.ftl");
        }, new FreeMarkerEngine());

    get("/detail", (req, res) -> {

              Connection connection = null;
              // res.type("application/xml"); //Return as XML

              Map<String, Object> attributes = new HashMap<>();
              try {


                  String xml = "<?xml version=\"1.0\" encoding=\"utf-8\"?>";
                  xml += "<About>";

                      xml += "<Detail>";
                      xml += "<Information>Diamond beautiful ring </Information>";
                      xml += "<Discount>-25%</Discount>";
                      xml += "<Since>03/2016</Since>";
                      xml += "<Original_price>$1,725.00</Original_price>";
                      xml += "<Sale_price>$1,550.00</Sale_price>";
                      xml += "<Availability>Yes</Availability>";
                      xml += "<SKU>Candles OV</SKU>";
                      xml += "<Size>6</Size>";
                      xml += "<Color>Silver</Color>";
                      xml += "<Material>Diamond</Material>";
                      xml += "</Detail>";

                  xml += "</About>";
                  res.type("text/xml");
                  return xml;

              } catch (Exception e) {
                  attributes.put("message", "There was an error: " + e);
                  return attributes;
              } finally {
                  if (connection != null) try{connection.close();} catch(SQLException e){}
              }
          });

          post("/login", (req, res) -> {
                    Map<String, Object> data = new HashMap<>();
                    data.put("username", "suo");
                    data.put("password","123456");
                    return data;
                }, gson::toJson);

                post("/register", (req, res) -> {
                       Connection connection = null;
                          try {
                              connection = DatabaseUrl.extract().getConnection();
                              JSONObject obj = new JSONObject(req.body());
                              String username = obj.getString("email");
                              String password = obj.getString("password");

                              String sql = "INSERT INTO User(username, email, password) VALUES ('"
                                            + username + "','" + password + "')";

                              connection = DatabaseUrl.extract().getConnection();
                              Statement stmt = connection.createStatement();
                              stmt.executeUpdate("CREATE TABLE IF NOT EXISTS User");
                              stmt.executeUpdate(sql);

                             return req.body();
                            } catch (Exception e) {
                              return e.getMessage();
                            } finally {

                            }
                          });
    /*get("/", (request, response) -> {
            Map<String, Object> attributes = new HashMap<>();
            attributes.put("message", "Hello World!");

            return new ModelAndView(attributes, "index.ftl");
        }, new FreeMarkerEngine());*/

    get("/db", (req, res) -> {
      Connection connection = null;
      Map<String, Object> attributes = new HashMap<>();
      try {
        connection = DatabaseUrl.extract().getConnection();

        Statement stmt = connection.createStatement();
        stmt.executeUpdate("CREATE TABLE IF NOT EXISTS ticks (tick timestamp)");
        stmt.executeUpdate("INSERT INTO ticks VALUES (now())");
        ResultSet rs = stmt.executeQuery("SELECT tick FROM ticks");

        ArrayList<String> output = new ArrayList<String>();
        while (rs.next()) {
          output.add( "Read from DB: " + rs.getTimestamp("tick"));
        }

        attributes.put("results", output);
        return new ModelAndView(attributes, "db.ftl");
      } catch (Exception e) {
        attributes.put("message", "There was an error: " + e);
        return new ModelAndView(attributes, "error.ftl");
      } finally {
        if (connection != null) try{connection.close();} catch(SQLException e){}
      }
    }, new FreeMarkerEngine());

  }

}
