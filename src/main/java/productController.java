import static spark.Spark.*;
import spark.*;
import com.google.gson.Gson;

public class productController {

  public productController(final productService productService) {

    get("/product", new Route() {
      @Override
      public Object handle(Request request, Response response) {
        // process request
        return new Gson().toJson(productService.getAllProducts());
      }
    });

    // more routes
  }
}
