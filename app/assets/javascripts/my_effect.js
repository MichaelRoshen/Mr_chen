$(document).ready(function(){
    var come_in_bill_money = $("#come_in_bill_money");
    var come_in_type = $("#come_in_type_id");  
    var billdate = $("#come_in_bill_billdate");  
    var remarks = $("#come_in_bill_remarks");    
    $("#bt_create_cib").click(function(){
        alert("hello");
        var v_money = come_in_bill_money.val();
        var v_come_in_type = come_in_type.val();  
        var v_date= billdate.val();  
        var v_remarks = remarks.val();    
        $.post("create_come_in_bill", {  
           money: v_money, 
           type: v_come_in_type, 
           date: v_date,
           remarks: v_remarks  
       },  
       function(data) {  
        var come_in_bill = "";
        come_in_bill += "<tr><td>" + "" +"</td>"
        come_in_bill += "<td>" + data["money"] +"</td>"
        come_in_bill += "<td>" + data["billdate"] +"</td></tr>"
        $("#table_cil").append(come_in_bill);
    },  
    "json")  
    });
});