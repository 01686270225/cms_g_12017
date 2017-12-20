// khai bao 
$(document).ready(function(){
    
   
   setTimeout(function(){
       
       $('.m-splash-screen-progress').addClass('active100');
   }, 2000);
   setTimeout(function(){
       $('.type-7000').addClass('loaded');
       
   }, 1000);
   
   setTimeout(function(){
       $('.type-7000').removeClass('loaded');
       
   }, 3500);
   
   
});