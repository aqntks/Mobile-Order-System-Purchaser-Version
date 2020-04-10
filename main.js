$(function(){
   $("main.html").on("pagebeforehide",function(event, ui){
       alert("1페이지에서 2페이지로 전환 전에 1페이지에서 작동합니다.");
   });
   
   $("order_page.html").on("pagebeforeshow",function(event, ui){
       alert("1페이지에서 2페이지로 전환 전에 2페이지에서 작동합니다.");
   });
   
   $("main.html").on("pagehide",function(event, ui){
       alert("1페이지에서 2페이지로 전환이 끝난 후에 1페이지에서 작동합니다.");
   });
   
   $("order_page.html").on("pageshow",function(event, ui){
       alert("1페이지에서 2페이지로 전환이 끝난 후에 2페이지에서 작동합니다.");
   });
   
   
   
   $("order_page.html").on("pagebeforehide",function(event, ui){
       alert("2페이지에서 1페이지로 전환 전에 2페이지에서 작동합니다.");
   });
   
   $("main.html").on("pagebeforeshow",function(event, ui){
       alert("2페이지에서 1페이지로 전환 전에 1페이지에서 작동합니다.");
   });
   
   $("order_page.html").on("pagehide",function(event, ui){
       alert("2페이지에서 1페이지로 전환이 끝난 후에 2페이지에서 작동합니다.");
   });
   
   $("main.html").on("pageshow",function(event, ui){
       alert("2페이지에서 1페이지로 전환이 끝난 후에 1페이지에서 작동합니다.");
   });
});