$(function(){
  $.ajax({
    url : "/product",
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

function post_login(){
  var email = $("#email").val();
  var password = $("#password").val();
  var info = JSON.stringify({"email":email,"password":password});
  alert(info);
  $.ajax({
    contentType:'application/json',
    url : "/login",
    type : "post",
    dataType: "json",
    data:info,
    success : function() {
      alert("welcome!");
      window.location.href='/index.html';
    }
  });
}
