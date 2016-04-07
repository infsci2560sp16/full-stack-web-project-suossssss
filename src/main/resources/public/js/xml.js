$(function() {
    $.ajax({
         url : "/detail",
         type : "get",
         success : function(result) {
           detail = result.getElementsByTagName("Detail");
           $("div.product_detail").append(
               '<p>Information:'+detail[0].childNodes[0].firstChild.nodeValue+'</p>'+
               '<p>Discount:'+detail[0].childNodes[1].firstChild.nodeValue+'</p>'+
               '<p>Since:'+detail[0].childNodes[2].firstChild.nodeValue+'</p>'+
               '<p>Original_price:'+detail[0].childNodes[3].firstChild.nodeValue+'</p>'+
               '<p>Sale_price:'+detail[0].childNodes[4].firstChild.nodeValue+'</p>'+
               '<p>Availability:'+detail[0].childNodes[5].firstChild.nodeValue+'</p>'+
               '<p>SKU:'+detail[0].childNodes[6].firstChild.nodeValue+'</p>'+
               '<p>Size:'+detail[0].childNodes[7].firstChild.nodeValue+'</p>'+
               '<p>Color:'+detail[0].childNodes[8].firstChild.nodeValue+'</p>'+
               '<p>Material:'+detail[0].childNodes[9].firstChild.nodeValue+'</p>'
             );
           }
         });
       });
