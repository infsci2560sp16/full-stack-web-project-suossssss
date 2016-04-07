$(function (){
  $.ajax({
    url : "/products",
    success : function(result) {
      var products = JSON.parse(result);
      if(products.length>0){
        for ( var i = 0; i < products.length; i++) {
          $("div.product_introduction").append(
            '<p>' +products[i].name + '</p>' + '<br/>'+
            '<p>' + products[i].description+ '</p>' + '<br/>'
          );
        }
      }
    }
  });
});
