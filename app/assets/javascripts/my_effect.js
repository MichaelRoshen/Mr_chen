
$(document).ready(function(){
  DeleteClick();
  EditClick();
});


function DeleteClick() {
  $("table tr input[value='删除']").each(function () {
    $(this).unbind("click");
    $(this).bind("click", function () {
      if ($(this).val() == "删除") {
        var isDelete=confirm("确认删除?");
        if (isDelete){
          $(this).parent().parent().remove();
          var come_in_bill_id = $(this).parent().parent().find("input[type='hidden']").val();
          $.post("destroy_come_in_bill", {
            cib_id: come_in_bill_id
          },function(data){
          },"json")
        }
      }
    });
  });
}

function EditClick() {
  $("table tr input[value='修改']").each(function () {
    $(this).unbind("click");
    $(this).bind("click", function () {
      if ($(this).val() == "修改") {
        var come_in_bill_id = $(this).parent().parent().find("input[type='hidden']").val();
        var come_in_bill_money = $("#come_in_bill_money");
        var come_in_type = $("#come_in_type_id");  
        var billdate = $("#come_in_bill_billdate");  
        var remarks = $("#come_in_bill_remarks");    
        $.post("edit_come_in_bill", {
          cib_id: come_in_bill_id
        },function(data){
          come_in_bill_money.attr("value", data["money"]);
          come_in_type.attr("value", data["come_in_type_id"]);
          billdate.attr("value", data["billdate"]);
          remarks.attr("value", data["remarks"]);
        },"json")
        $("#bt_update_cib").attr('disabled',false);
      }
    });
  });
}

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
    come_in_bill += "<tr><input type='hidden' value='" + data["id"] + "' name='come_in_bill_id'>"
    come_in_bill += "<td>" + v_come_in_type +"</td>"
    come_in_bill += "<td>" + data["money"] +"</td>"
    come_in_bill += "<td>" + data["billdate"] +"</td>"
    come_in_bill += "<td><input id='bt_edit_cib' class='btn btn-mini' type='button' value='修改''></a>"
    come_in_bill += " <input class='btn btn-mini btn-danger' type='button' value='删除' id='bt_destroy_cib'></td></tr>"

    $("#table_cil").append(come_in_bill);
    DeleteClick();
    EditClick();
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
    cost_bill += " <a class='btn btn-mini btn-danger' href='/cost_bills/" +data["id"]+ "' rel='nofollow' onclick='deleteCurrentRow(this);'><span class='translation_missing' title='translation missing: en.helpers.links.destroy'>Destroy</span></a></td></tr>"

    $("#table_cb").append(cost_bill);
  },  
  "json")  
  });
});


