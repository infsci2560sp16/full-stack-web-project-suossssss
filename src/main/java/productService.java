import java.util.ArrayList;
import java.util.List;

public class productService {
	private List<product> products = new ArrayList<product>();
	productService(){
		products.add(new product("Ring","handmade Cut Emerald Ring"));

	}



	  public List<product> getAllProducts() {
		  return products;
	  }


	  public product getProduct(String name) {
		  for(int i = 0; i<products.size();i++){
			  if(products.get(i).getName()==name){
				  return products.get(i);
			  }
		  }
		  return null;
	  }


	  public product createProduct(String name, String description) {
		return new product (name,description);

	  }


	  public product  updateProduct (String name, String description) {
		  product f = null;
		  for(int i = 0; i<products.size();i++){
			  if(products.get(i).getName()==name){
				  products.get(i).setName(name);
				  products.get(i).setDescription(description);
				  f=products.get(i);

			  }
		  }

		  return f;
	  }
}
