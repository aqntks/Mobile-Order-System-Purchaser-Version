$(function(){
   $("main.html").bind("pagebeforehide",function(event, ui){
       alert("1페이지에서 2페이지로 전환 전에 1페이지에서 작동합니다.");
   });
   
   $("order_page.html").bind("pagebeforeshow",function(event, ui){
       alert("1페이지에서 2페이지로 전환 전에 2페이지에서 작동합니다.");
   });
   
   $("main.html").bind("pagehide",function(event, ui){
       alert("1페이지에서 2페이지로 전환이 끝난 후에 1페이지에서 작동합니다.");
   });
   
   $("order_page.html").bind("pageshow",function(event, ui){
       alert("1페이지에서 2페이지로 전환이 끝난 후에 2페이지에서 작동합니다.");
   });
   
   
   
   $("order_page.html").bind("pagebeforehide",function(event, ui){
       alert("2페이지에서 1페이지로 전환 전에 2페이지에서 작동합니다.");
   });
   
   $("main.html").bind("pagebeforeshow",function(event, ui){
       alert("2페이지에서 1페이지로 전환 전에 1페이지에서 작동합니다.");
   });
   
   $("order_page.html").bind("pagehide",function(event, ui){
       alert("2페이지에서 1페이지로 전환이 끝난 후에 2페이지에서 작동합니다.");
   });
   
   $("main.html").bind("pageshow",function(event, ui){
       alert("2페이지에서 1페이지로 전환이 끝난 후에 1페이지에서 작동합니다.");
   });
});