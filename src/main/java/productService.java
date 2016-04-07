import java.util.ArrayList;
import java.util.List;

public class ProductService {
	private List<Product> products = new ArrayList<Product>();
	ProductService(){
		products.add(new Product("Ring","handmade Cut Emerald Ring"));

	}



	  public List<Product> getAllProducts() {
		  return products;
	  }


	  public Product getProduct(String name) {
		  for(int i = 0; i<products.size();i++){
			  if(products.get(i).getName()==name){
				  return products.get(i);
			  }
		  }
		  return null;
	  }


	  public Product createProduct(String name, String description) {
		return new Product (name,description);

	  }


	  public Product  updateProduct (String name, String description) {
		  Product f = null;
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
