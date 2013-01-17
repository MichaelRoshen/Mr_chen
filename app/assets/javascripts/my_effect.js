//create come_in_bill
$(document).ready(function(){
    var come_in_bill_money = $("#come_in_bill_money");
    var come_in_type = $("#come_in_type_id");  
    var billdate = $("#come_in_bill_billdate");  
    var remarks = $("#come_in_bill_remarks");    
    $("#bt_create_cib").click(function(){
        var v_money = come_in_bill_money.val();
        var v_come_in_type_id = come_in_type.val();
        var v_come_in_type = $("#come_in_type_id").find("option:selected").text();  
        var v_date= billdate.val();  
        var v_remarks = remarks.val();    
        $.post("create_come_in_bill", {  
           money: v_money, 
           type: v_come_in_type_id, 
           date: v_date,
           remarks: v_remarks  
       },  
       function(data) {  
        var come_in_bill = "";
        come_in_bill += "<tr><td>" + v_come_in_type +"</td>"
        come_in_bill += "<td>" + data["money"] +"</td>"
        come_in_bill += "<td>" + data["billdate"] +"</td>"
        come_in_bill += "<td><a class='btn btn-mini' href='/come_in_bills/"+ data["id"]+"/edit'><span class='translation_missing' title='translation missing: en.helpers.links.edit'>Edit</span></a>"
        come_in_bill += " <a class='btn btn-mini btn-danger' href='/come_in_bills/" +data["id"]+ "' data-confirm='Are you sure?' data-method='delete' rel='nofollow'><span class='translation_missing' title='translation missing: en.helpers.links.destroy'>Destroy</span></a></td></tr>"
        
        $("#table_cil").append(come_in_bill);
    },  
    "json")  
    });
});

//create cost_bill
$(document).ready(function(){
    var cost_bill_money = $("#cost_bill_money");
    var cost_type = $("#cost_type_id");  
    var billdate = $("#cost_bill_billdate");  
    var remarks = $("#cost_bill_remarks");  
    $("#bt_create_cb").click(function(){
      alert("xxx");
        var v_money = cost_bill_money.val();
        var v_cost_id = cost_type.val();
        var v_cost_type = $("#cost_type_id").find("option:selected").text();  
        var v_date= billdate.val();  
        var v_remarks = remarks.val();    
        $.post("create_cost_bill", {  
           money: v_money, 
           type: v_cost_id, 
           date: v_date,
           remarks: v_remarks  
       },  
       function(data) {  
        var cost_bill = "";
        cost_bill += "<tr><td>" + v_cost_type +"</td>"
        cost_bill += "<td>" + data["money"] +"</td>"
        cost_bill += "<td>" + data["billdate"] +"</td>"
        cost_bill += "<td><a class='btn btn-mini' href='/cost_bills/"+ data["id"]+"/edit'><span class='translation_missing' title='translation missing: en.helpers.links.edit'>Edit</span></a>"
        cost_bill += " <a class='btn btn-mini btn-danger' href='/cost_bills/" +data["id"]+ "' data-confirm='Are you sure?' data-method='delete' rel='nofollow'><span class='translation_missing' title='translation missing: en.helpers.links.destroy'>Destroy</span></a></td></tr>"
        
        $("#table_cb").append(cost_bill);
    },  
    "json")  
    });
});


