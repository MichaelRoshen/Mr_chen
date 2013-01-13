 function create_come_in_bill()  
 {  
  alert("xxxx");
 var xmlhttp;  
    if (window.XMLHttpRequest)  
    {// code for IE7+, Firefox, Chrome, Opera, Safari  
         xmlhttp=new XMLHttpRequest();  
    }  
    else  
     {// code for IE6, IE5  
         xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");  
     }  
     //回调函数  
     xmlhttp.onreadystatechange=function()  
    {  
        if (xmlhttp.readyState==4 && xmlhttp.status==200)  
         {  
            document.getElementById("new_come_in_bill").innerHTML="haha";  
        }  
     }  
     xmlhttp.open("POST","/purse/create_come_in_bill");  
     xmlhttp.send();  
   }  