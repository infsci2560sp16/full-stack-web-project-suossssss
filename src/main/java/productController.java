import static spark.Spark.*;
import spark.*;
import com.google.gson.Gson;

public class ProductController {

  public ProductController(final ProductService productService) {

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
