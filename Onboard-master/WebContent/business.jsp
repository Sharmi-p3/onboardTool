<!DOCTYPE html>
<html lang="en">
<head>
<script type='text/javascript'
  src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
<link rel="stylesheet"
  href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet"
  href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<script
  src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
  src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
   <meta name="keywords" content="jQuery Tree, Tree Widget, TreeView" />
    <meta name="description" content="The jqxTree displays a hierarchical collection of items. You
        can populate it from 'UL' or by using its 'source' property." />

    <link rel="stylesheet" href="jqwidgets/styles/jqx.base.css" type="text/css" />
    <script type="text/javascript" src="scripts/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="scripts/demos.js"></script>
    <script type="text/javascript" src="jqwidgets/jqxcore.js"></script>
    <script type="text/javascript" src="jqwidgets/jqxbuttons.js"></script>
    <script type="text/javascript" src="jqwidgets/jqxscrollbar.js"></script>
    <script type="text/javascript" src="jqwidgets/jqxpanel.js"></script>
    <script type="text/javascript" src="jqwidgets/jqxtree.js"></script>
    <script type="text/javascript" src="jqwidgets/jqxcheckbox.js"></script>
    <script type="text/javascript" src="jqwidgets/jqxmenu.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            // Create jqxTree
            $('#jqxTree').jqxTree({ height: '550px', width: '300px' });
            $('#jqxTree').css('visibility', 'visible');
            var contextMenu = $("#jqxMenu").jqxMenu({ width: '120px',  height: '56px', autoOpenPopup: false, mode: 'popup' });
            var clickedItem = null;
            
            var attachContextMenu = function () {
                // open the context menu when the user presses the mouse right button.
                $("#jqxTree li").on('mousedown', function (event) {
                    var target = $(event.target).parents('li:first')[0];
                    var rightClick = isRightClick(event);
                    if (rightClick && target != null) {
                        $("#jqxTree").jqxTree('selectItem', target);
                        var scrollTop = $(window).scrollTop();
                        var scrollLeft = $(window).scrollLeft();
                        contextMenu.jqxMenu('open', parseInt(event.clientX) + 5 + scrollLeft, parseInt(event.clientY) + 5 + scrollTop);
                        return false;
                    }
                });
            }
            attachContextMenu();
            $("#jqxMenu").on('itemclick', function (event) {
                var item = $.trim($(event.args).text());
                switch (item) {
                    case "Add Item":
                        var selectedItem = $('#jqxTree').jqxTree('selectedItem');
                        if (selectedItem != null) {
                            $('#jqxTree').jqxTree('addTo', { label: 'Item' }, selectedItem.element);
                            attachContextMenu();
                        }
                        break;
                    case "Remove Item":
                        var selectedItem = $('#jqxTree').jqxTree('selectedItem');
                        if (selectedItem != null) {
                            $('#jqxTree').jqxTree('removeItem', selectedItem.element);
                            attachContextMenu();
                        }
                        break;
                }
            });
            // disable the default browser's context menu.
            $(document).on('contextmenu', function (e) {
                if ($(e.target).parents('.jqx-tree').length > 0) {
                    return false;
                }
                return true;
            });
            function isRightClick(event) {
                var rightclick;
                if (!event) var event = window.event;
                if (event.which) rightclick = (event.which == 3);
                else if (event.button) rightclick = (event.button == 2);
                return rightclick;
            }
        });
    </script>
     <style>
    .bar {
  background-color: lightblue;
  height: 100%;
  text-align:center;
} 

</style>
  
<script type="text/javascript">
    function EnableDisableTextBox(chkROD) {
        var txtROD = document.getElementById("txtROD");
        txtROD.disabled = chkROD.checked ? false : true;
        if (!txtROD.disabled) {
            txtROD.focus();
        }
        
    }
</script>
<script>

$(function() {
    $("#datamig").change(function() {
        if ($(this).val() == "yes") {
            console.log(true);
            $("#textbox").removeAttr("disabled");
        }
        else {
            console.log(false);
            $("#textbox").attr("disabled", "disabled");
        }
    });
});
$(function() {
    $("#datamig").change(function() {
        if ($(this).val() == "yes") {
            console.log(true);
            $("#textbox1").removeAttr("disabled");
        }
        else {
            console.log(false);
            $("#textbox1").attr("disabled", "disabled");
        }
    });
});


</script>
<script type="text/javascript">
    function ShowHideDiv() {
        var adMigrated = document.getElementById("adMigrated");
        var adMigratedDet = document.getElementById("adMigratedDet");
        adMigratedDet.style.display = adMigrated.value == "Y" ? "block" : "none";
    }
</script>

<script type="text/javascript">
    function ShowHideDiv() {
        var arcNeed = document.getElementById("arcNeed");
        var arcReason = document.getElementById("arcReason");
        arcReason.style.display = arcNeed.value == "N" ? "block" : "none";
        var arcComment = document.getElementById("arcComment");
        arcComment.style.display = arcNeed.value == "O" ? "block" : "none";
    }
</script>
<style>
.bs-wizard {margin-top: 40px;}

/*Form Wizard*/
.bs-wizard {border-bottom: solid 1px #e0e0e0; padding: 0 0 10px 0;}
.bs-wizard > .bs-wizard-step {padding: 0; position: relative;}
.bs-wizard > .bs-wizard-step + .bs-wizard-step {}
.bs-wizard > .bs-wizard-step .bs-wizard-stepnum {color: #428bca; font-size: 16px; margin-bottom: 5px;}
.bs-wizard > .bs-wizard-step .bs-wizard-info {color: #999; font-size: 14px;}
.bs-wizard > .bs-wizard-step > .bs-wizard-dot {position: absolute; width: 30px; height: 30px; display: block; background:#428bca; top: 45px; left: 50%; margin-top: -15px; margin-left: -15px; border-radius: 100%;} 
.bs-wizard > .bs-wizard-step > .bs-wizard-dot:after {content: ' '; width: 14px; height: 14px; background: lightblue; border-radius: 50px; position: absolute; top: 8px; left: 8px; } 
.bs-wizard > .bs-wizard-step > .progress {position: relative; border-radius: 0px; height: 8px; box-shadow: none; margin: 20px 0;}
.bs-wizard > .bs-wizard-step > .progress > .progress-bar {width:0px; box-shadow: none; background: #428bca;}
.bs-wizard > .bs-wizard-step.complete > .progress > .progress-bar {width:100%;}
.bs-wizard > .bs-wizard-step.active > .progress > .progress-bar {width:50%;}
.bs-wizard > .bs-wizard-step:first-child.active > .progress > .progress-bar {width:0%;}
.bs-wizard > .bs-wizard-step:last-child.active > .progress > .progress-bar {width: 100%;}
.bs-wizard > .bs-wizard-step.disabled > .bs-wizard-dot {background-color: #f5f5f5;}
.bs-wizard > .bs-wizard-step.disabled > .bs-wizard-dot:after {opacity: 0;}
.bs-wizard > .bs-wizard-step:first-child  > .progress {left: 50%; width: 50%;}
.bs-wizard > .bs-wizard-step:last-child  > .progress {width: 50%;}
.bs-wizard > .bs-wizard-step.disabled a.bs-wizard-dot{ pointer-events: none; }
/*END Form Wizard*/

</style>

<style class="cp-pen-styles">@-webkit-keyframes myanimation {
  from {
    left: 0%;
  }
  to {
    left: 100%;
  }
}
h1 {
  text-align: center;
  font-family: 'PT Sans Caption', sans-serif;
  font-weight: 400;
  font-size: 30px;
  padding: 20px 0;
  color: #777;
}

#panels1
{
    /* Do not display it on entry */
    display: block; 
 
    /* Display it on the layer with index 1001.
       Make sure this is the highest z-index value
       used by layers on that page */
   
    /* make it white but fully transparent */
    
}

ul.checkout-bar {
  margin: 0 20px;
}
ul.checkout-bar li {
  color: #ccc;
  display: block;
  font-size: 16px;
  font-weight: 600;
  padding: 14px 20px 14px 80px;
  position: relative;
}
ul.checkout-bar li:before {
  -webkit-box-shadow: inset 2px 2px 2px 0px rgba(0, 0, 0, 0.2);
  box-shadow: inset 2px 2px 2px 0px rgba(0, 0, 0, 0.2);
  background: #ddd;
  border: 2px solid #FFF;
  border-radius: 50%;
  color: #fff;
  font-size: 16px;
  font-weight: 700;
  left: 20px;
  line-height: 37px;
  height: 35px;
  position: absolute;
  text-align: center;
  text-shadow: 1px 1px rgba(0, 0, 0, 0.2);
  top: 4px;
  width: 35px;
  z-index: 999;
}
ul.checkout-bar li.active {
  color: #8bc53f;
  font-weight: bold;
}
ul.checkout-bar li.active:before {
  background: #8bc53f;
}
ul.checkout-bar li.visited {
  background: #ECECEC;
  color: #57aed1;
}
ul.checkout-bar li.visited:before {
  background: #57aed1;

}
ul.checkout-bar li:nth-child(1):before {
  content: "1";
}
ul.checkout-bar li:nth-child(2):before {
  content: "2";
}
ul.checkout-bar li:nth-child(3):before {
  content: "3";
}
ul.checkout-bar li:nth-child(4):before {
  content: "4";
}
ul.checkout-bar a {
  color: #57aed1;
  font-size: 16px;
  font-weight: 600;
  text-decoration: none;
}

@media all and (min-width: 800px) {
  .checkout-bar li.active:after {
    -webkit-animation: myanimation 3s 0;
    background-size: 35px 35px;
    background-color: #8bc53f;
    background-image: -webkit-linear-gradient(-45deg, rgba(255, 255, 255, 0.2) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.2) 50%, rgba(255, 255, 255, 0.2) 75%, transparent 75%, transparent);
    background-image: -moz-linear-gradient(-45deg, rgba(255, 255, 255, 0.2) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.2) 50%, rgba(255, 255, 255, 0.2) 75%, transparent 75%, transparent);
    -webkit-box-shadow: inset 2px 2px 2px 0px rgba(0, 0, 0, 0.2);
    box-shadow: inset 2px 2px 2px 0px rgba(0, 0, 0, 0.2);
    content: "";
    height: 15px;
    width: 100%;
    left: 50%;
    position: absolute;
    top: -50px;
    z-index: 0;
  }

 

  ul.checkout-bar {
    -webkit-box-shadow: inset 2px 2px 2px 0px rgba(0, 0, 0, 0.2);
    box-shadow: inset 2px 2px 2px 0px rgba(0, 0, 0, 0.2);
    background-size: 35px 35px;
    background-color: #EcEcEc;
    background-image: -webkit-linear-gradient(-45deg, rgba(255, 255, 255, 0.4) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.4) 50%, rgba(255, 255, 255, 0.4) 75%, transparent 75%, transparent);
    background-image: -moz-linear-gradient(-45deg, rgba(255, 255, 255, 0.4) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.4) 50%, rgba(255, 255, 255, 0.4) 75%, transparent 75%, transparent);
    border-radius: 15px;
    height: 15px;
    margin: 0 auto;
    padding: 0;
    position: absolute;
    width: 100%;
  }
  ul.checkout-bar:before {
    background-size: 35px 35px;
    background-color: #57aed1;
    background-image: -webkit-linear-gradient(-45deg, rgba(255, 255, 255, 0.2) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.2) 50%, rgba(255, 255, 255, 0.2) 75%, transparent 75%, transparent);
    background-image: -moz-linear-gradient(-45deg, rgba(255, 255, 255, 0.2) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.2) 50%, rgba(255, 255, 255, 0.2) 75%, transparent 75%, transparent);
    -webkit-box-shadow: inset 2px 2px 2px 0px rgba(0, 0, 0, 0.2);
    box-shadow: inset 2px 2px 2px 0px rgba(0, 0, 0, 0.2);
    border-radius: 15px;
    content: " ";
    height: 15px;
    left: 0;
    position: absolute;
    width: 50%;
  }
  ul.checkout-bar li {
    display: inline-block;
    margin: 50px 0 0;
    padding: 0;
    text-align: center;
    width: 19%;
  }
  ul.checkout-bar li:before {
    height: 45px;
    left: 40%;
    line-height: 45px;
    position: absolute;
    top: -65px;
    width: 45px;

  }
  ul.checkout-bar li.visited {
    background: none;
  }
  ul.checkout-bar li.visited:after {
    background-size: 35px 35px;
    background-color: #57aed1;
    background-image: -webkit-linear-gradient(-45deg, rgba(255, 255, 255, 0.2) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.2) 50%, rgba(255, 255, 255, 0.2) 75%, transparent 75%, transparent);
    background-image: -moz-linear-gradient(-45deg, rgba(255, 255, 255, 0.2) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.2) 50%, rgba(255, 255, 255, 0.2) 75%, transparent 75%, transparent);
    -webkit-box-shadow: inset 2px 2px 2px 0px rgba(0, 0, 0, 0.2);
    box-shadow: inset 2px 2px 2px 0px rgba(0, 0, 0, 0.2);
    content: "";
    height: 15px;
    left: 50%;
    position: absolute;
    top: -50px;
    width: 100%;
    z-index: 99;
  }
}
</style>
<script>
function switchColors0()  
{  
links=document.getElementsByTagName("li") ;  
var element=document.getElementById("a");
for (var i = 0 ; i < links.length ; i ++)  
links.item(i).style.backgroundColor = 'white' ; 
element.style.borderRadius="5px";
element.style.marginRight = "70px";
element.style.boxSizing = "content-box";
element.style.borderColor = "#999";
element.style.background="#d1d1d1";
var list = document.getElementsByTagName("OL")[0];
var x=list.getElementsByTagName("LI");
for (var i = 0 ; i < x.length ; i ++)  
x.item(i).style.backgroundColor = 'black' ; 


} 
</script>
<script>
function switchColors(){
links=document.getElementsByTagName("li") ;  
var element=document.getElementById("b");
for (var i = 0 ; i < links.length ; i ++)  
links.item(i).style.backgroundColor = 'white' ; 
element.style.borderRadius="5px";
element.style.marginRight = "70px";
element.style.boxSizing = "content-box";
element.style.borderColor = "#999";
element.style.background="#d1d1d1";
var list = document.getElementsByTagName("OL")[0];
var x=list.getElementsByTagName("LI");
for (var i = 0 ; i < x.length ; i ++)  
x.item(i).style.backgroundColor = 'black' ; 
}

</script>
<script>
function switchColors1()  
{  
links=document.getElementsByTagName("li") ;  
var element=document.getElementById("c");
for (var i = 0 ; i < links.length ; i ++)  
links.item(i).style.backgroundColor = 'white' ; 
element.style.borderRadius="5px";
element.style.marginRight = "100px";
element.style.boxSizing = "content-box";
element.style.borderColor = "#999";
element.style.background="#d1d1d1";
var list = document.getElementsByTagName("OL")[0];
var x=list.getElementsByTagName("LI");
for (var i = 0 ; i < x.length ; i ++)  
x.item(i).style.backgroundColor = 'black' ; 


} 
</script>
<script>
function switchColors2()  
{  
links=document.getElementsByTagName("li") ;  
var element=document.getElementById("d");
for (var i = 0 ; i < links.length ; i ++)  
links.item(i).style.backgroundColor = 'white' ; 
element.style.borderRadius="5px";
element.style.marginRight = "120px";
element.style.boxSizing = "content-box";
element.style.borderColor = "#999";
element.style.background="#d1d1d1";
var list = document.getElementsByTagName("OL")[0];
var x=list.getElementsByTagName("LI");
for (var i = 0 ; i < x.length ; i ++)  
x.item(i).style.backgroundColor = 'black' ; 


} 
</script>
<script>
function checkk()
{
document.getElementById('legappname').readOnly = true;
document.getElementById('reftoapp').readOnly = true;
document.getElementById('tid').readOnly = true;
document.getElementById('descr').readOnly = true;
document.getElementById('vendor').readOnly = true;
document.getElementById('expdate').readOnly = true;
document.getElementById('noticeperiod').readOnly = true;
document.getElementById('contractvalue').readOnly = true;
document.getElementById('businessunits').disabled = true;
document.getElementById('rodch').disabled = true;
document.getElementById('rod').readOnly = true;
document.getElementById('cmnt').readOnly = true; 
document.getElementById('hasdep').readOnly = true; 
document.getElementById('daterange').readOnly = true; 
document.getElementById('dbsize').readOnly = true; 
document.getElementById('dataloc').readOnly = true; 
document.getElementById('siteloc').readOnly = true; 
document.getElementById('needarch').disabled = true; 
document.getElementById('archreason').readOnly = true; 
document.getElementById('archcmnt').readOnly = true; 
document.getElementById('sourceoft').disabled = true; 
document.getElementById('btt').disabled = true; 
document.getElementById('reccode').readOnly = true; 
document.getElementById('triggerdate').readOnly = true; 
document.getElementById('retentionperiod').readOnly = true; 
document.getElementById('retentiontable').readOnly = true; 
document.getElementById('file').readOnly = true;
document.getElementById('retentionname').readOnly = true; 
document.getElementById('reason_for_access').disabled = true; 
document.getElementById('wholegal').readOnly = true; 
document.getElementById('reason_for_access1').disabled = true; 
document.getElementById('archexp').readOnly = true; 
document.getElementById('btt').disabled = true;
document.getElementById('btn_new').disabled = true; 
document.getElementById('reason_for_access2').disabled = true; 
document.getElementById('checkbox').disabled = true; 
document.getElementById('checkbox1').disabled = true; 
document.getElementById('reccode').readOnly = true; 
document.getElementById('checkbox23').disabled = true; 
document.getElementById('checkbox2').disabled = true;
document.getElementById('checkbox3').disabled = true;
document.getElementById('checkbox4').disabled = true;
document.getElementById('checkbox5').disabled = true;
document.getElementById('checkbox6').disabled = true;
document.getElementById('checkbox7').disabled = true;
document.getElementById('checkbox8').disabled = true;
document.getElementById('checkbox9').disabled = true;
document.getElementById('checkbox10').disabled = true;
document.getElementById('checkbox11').disabled = true;
document.getElementById('checkbox12').disabled = true;
document.getElementById('checkbox13').disabled = true;
document.getElementById('checkbox14').disabled = true;
document.getElementById('checkbox15').disabled = true;
document.getElementById('checkbox16').disabled = true;
document.getElementById('checkbox17').disabled = true;
document.getElementById('checkbox18').disabled = true;
document.getElementById('checkbox19').disabled = true;
document.getElementById('checkbox20').disabled = true;
document.getElementById('checkbox21').disabled = true;
document.getElementById('checkbox22').disabled = true;
document.getElementById('expl').readOnly = true; 
document.getElementById('reason_for_access4').disabled = true;
document.getElementById('reason_for_access5').disabled = true;
document.getElementById('reason_for_access6').disabled = true;
document.getElementById('vendor1').readOnly = true;
document.getElementById('reason_for_access7').disabled = true; 
document.getElementById('vendor2').readOnly = true;
document.getElementById('vendor3').readOnly = true;
document.getElementById('vendor4').readOnly = true;
document.getElementById('vendor5').readOnly = true;
document.getElementById('vendor6').readOnly = true; 
document.getElementById('sysreq').readOnly = true; 
}
</script>
  </head><!--from  w  w w  . ja  va 2 s.co  m-->
  <body>
  <%@page language="java"%>
<%@page import="java.sql.*"%>
<%

response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
response.setHeader("Expires", "0"); // Proxies.

if (session.getAttribute("username")==null)
{
	response.sendRedirect("Login.html");
}
%>


<%
try {
	HttpSession details=request.getSession();
	String info=(String)details.getAttribute("intake");
String det=(String)session.getAttribute("theName");
String idd = request.getParameter("id");
if (idd != null && !idd.isEmpty()) {
session.setAttribute("appidd", idd);
}
idd=(String)session.getAttribute("appidd");
Class.forName("org.gjt.mm.mysql.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/strutsdb", "root", "password123");
String query3 = "select * from projinfo where id = "+det;
Statement st3 = conn.createStatement();
ResultSet rs3 = st3.executeQuery(query3);
System.out.println(query3);
String query4 = "select * from appinfo where appname ='"+idd+"'";
Statement st4 = conn.createStatement();
ResultSet rs4 = st4.executeQuery(query4);
System.out.println(query4);

{
%>

<form class="form-signin"name="loginForm" method="post" action="business" >
<div class="container">
<nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container-fluid">
                
                   <% if(rs3.next()){ %>
                    <% if(rs4.next()){ %>
                    <a class="navbar-brand" href="project.jsp">Onboarding Tool-<%=rs3.getString("projectname") %>-<%=rs4.getString("appname") %></a>
                    <%} }%>
              
                <div id="navbar" class="navbar-collapse collapse">
                    <ol class="nav navbar-nav navbar-right">
                        <li>
                        <img src="assets/images/Logo sized.jpg" class="img-rounded" height="50" width="80" alt="Avatar">
</li>
                        <li>
                            <a href="logout.jsp">Logout</a>
                        </li>
                    </ol>
                    
                </div>
            </div>
        </nav>
        </div>
       
            <div class="row">
            <br>
                <div class="col-md-3 sidebar">
                  <div id='jqxWidget'>
        <div id='jqxTree' style='visibility: hidden;  padding-top:40px; float:left;  margin-left: -45px; padding-left:0 '>
                    <ul class="nav nav-sidebar">
                        

            <ul>
                <li id='home' item-selected='true'> <a href="project.jsp">Home </a></li>
                <li item-expanded='true'>App Emphasize Module
                    <ul>
                       <li item-expanded='true'>Project Details
                    <ul>
                        <li><a href="editproject.jsp">Project Information</a></li>
                        <li><a href="application1.jsp">Application Details</a></li>
                        </ul>
                        </li>
                        <li item-expanded='true'> <a href="tree.jsp">Application Prioritization</a>
                         <ul>
                                <li > Parameters</li>
                                <li>Archival Complexity Calculation</li>
                                <li>Archival Cost Estimate</li>
                               
                            </ul>
                        </li>
                         <li><a href="applnprior.jsp">Application-Prioritized</a></li>
                       <li> <a href="demo.jsp">ROI Calculation</a></li>
                     

                    </ul>
                </li>
                <li item-expanded='true'><a href='firstinsert.jsp'>Intake Module</a>
                <ul>
                <li item-expanded='true'><a href="business.jsp">Business</a>
                <ul>
                <li id='a'>Application Information</li>
                <li id='b'>Legacy Retention Information</li>
                <li id='c'>Archive Data Management</li>
                <li id='d'>System Requirements</li>
                
                </ul></li>
                <li item-expanded='true'><a href="component.jsp">Technical</a>
                <ul>
                <li>Application Data Information</li>
                <li>Infrastructure & Environment Inforamation</li>
                <li>Technical Information</li>
                </ul>
                </li>
                
                 <li item-expanded='true'><a href="requirements.jsp">Archival Requirements</a>
                 <ul>
                 <li>Screen/Report Requirements</li>
                 <li>Archive Requirements</li>
                 </ul>
                 </li>
                </ul>
                </li>
                <li><a href="archive_exec_samp.jsp">Archive Execution Module</a>
               </li> 
                
               
                          </ul>
    
     </ul>
         </div>
   </div>
                </div>
                
                <script>
  $(function () {
    // 6 create an instance when the DOM is ready
    $('#jstree').jstree();
    // 7 bind to events triggered on the tree
    $('#jstree').on("changed.jstree", function (e, data) {
      console.log(data.selected);
    });
    // 8 interact with the tree - either way is OK
    $('button').on('click', function () {
      $('#jstree').jstree(true).select_node('child_node_1');
      $('#jstree').jstree('select_node', 'child_node_1');
      $.jstree.reference('#jstree').select_node('child_node_1');
    });
  });
  </script>
                
                
                <div class="col-md-8">
                <br><br><br>
                <div class="row">

  <div class="col-md-3">
  <div class="form-group">
  <center><label >Requirements</label></center>
  <div class="progress">
  <div class="progress-bar" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">100%</div>
</div></div></div>

  <div class="col-md-3">
  <div class="form-group">
  <center><label >Development</label></center>
  <div class="progress">
  <div id="one" class="bar" role="progressbar" style="width: 30%" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100">30%</div>
</div></div></div>

  <div class="col-md-3">
  <div class="form-group">
  <center><label >Testing</label></center>
  <div class="progress">
  <div class="progress-bar" role="progressbar" style="width: 30%" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
</div></div></div>

 <div class="col-md-3">
 <div class="form-group">
 <center><label >Deployement</label></center>
 <div class="progress">
  <div class="progress-bar" role="progressbar" style="width: 30%" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
</div></div></div>
</div>



<br/><br/><br/>

<div class="row">
        
            <div class="row bs-wizard" style="border-bottom:0;">
                
                <div class="col-xs-2 bs-wizard-step active">
                  <div class="text-center bs-wizard-stepnum">Intake Information</div>
                  <div class="progress"><div class="progress-bar"></div></div>
                  <a href="#" class="bs-wizard-dot"></a>
                
                </div>
                
                <div class="col-xs-2 bs-wizard-step disabled"><!-- complete -->
                  <div class="text-center bs-wizard-stepnum">Summary</div>
                  <div class="progress"><div class="progress-bar"></div></div>
                  <a href="#" class="bs-wizard-dot"></a>
                </div>
                
                <div class="col-xs-2 bs-wizard-step disabled"><!-- complete -->
                  <div class="text-center bs-wizard-stepnum">Review</div>
                  <div class="progress"><div class="progress-bar"></div></div>
                  <a href="#" class="bs-wizard-dot"></a>
                </div>
                
                <div class="col-xs-2 bs-wizard-step disabled"><!-- active -->
                  <div class="text-center bs-wizard-stepnum">Approval</div>
                  <div class="progress"><div class="progress-bar"></div></div>
                  <a href="#" class="bs-wizard-dot"></a>
                </div>
                
                 <div class="col-xs-2 bs-wizard-step disabled"><!-- active -->
                  <div class="text-center bs-wizard-stepnum">Final</div>
                  <div class="progress"><div class="progress-bar"></div></div>
                  <a href="#" class="bs-wizard-dot"></a>
                </div>
            </div>
        
        
        
</div>

<script>

links=document.getElementsByTagName("li") ;  
var element=document.getElementById("a");
for (var i = 0 ; i < links.length ; i ++)  
links.item(i).style.backgroundColor = 'white' ; 
element.style.borderRadius="5px";
element.style.marginRight = "70px";
element.style.boxSizing = "content-box";
element.style.borderColor = "#999";
element.style.background="#d1d1d1";
var list = document.getElementsByTagName("OL")[0];
var x=list.getElementsByTagName("LI");
for (var i = 0 ; i < x.length ; i ++)  
x.item(i).style.backgroundColor = 'black' ; 

</script>



<div class="panel-group" id="panels1" > 
                       <br><br><br>
                 <div class="panel panel-default"> 
                    <div class="panel-heading"> 
                                <h4 class="panel-title"> <a class="collapsed" data-toggle="collapse" data-parent="#panels1" href="#collapse1" onclick="switchColors0();">Application Information</a> </h4> 
                            </div>                             
                        <div id="collapse1" class="panel-collapse collapse in"> 
                              <div class="panel-body">
                                  <form role="form"> 
                                       <div class="form-group"> 
                                            <label class="control-label" for="formInput198">Legacy Application Name&nbsp;</label>
                                            <input type="text" class="form-control" id="legappname" placeholder="Legacy Application Name" name="legappname" >
                                        </div>
                                       <div class="form-group"> 
                                            <label class="control-label" for="formInput229">References to Application</label>
                                            <input type="text" class="form-control" id="reftoapp" placeholder="References" name="reftoapp" >
                                     </div>
                                       <div class="form-group row log-date">
           <div class="col-md-12">
            <label class="control-label required">Tracking ID</label>
            <input placeholder="ID" id="tid" name="tid" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
            </div>
          
                                       </div>  
        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Description</label>
            <input placeholder="Description" id="descr" name="descr" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div>  
        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Legacy Application Vendor/Manufacturer</label>
            <input placeholder="Vendor/Manufacturer" id="vendor" name="vendor" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
        
        </div>  
        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Contract Expiration Date</label>
            <input placeholder="dd/mm/yyyy" id="expdate" name="expdate" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div>  
                    <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Notice Period for Expiration of Contract</label>
            <input placeholder="Description" id="noticeperiod" name="noticeperiod" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div>  
        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Contract Value of Application</label>
            <input placeholder="Vendor/Manufacturer" id="contractvalue" name="contractvalue" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div>  
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox"  id="businessunits" name="businessunits">Business Units Involved
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox"  id="rodch" name="rodch">&nbsp;Read Only Date                       
                                            </label>                                             
                                        </div>
                                        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Read Only Date</label>
            <input placeholder="dd/mm/yyyy" id="rod" name="rod" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div>
         <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Comment</label>
            <input placeholder="Description" id="cmnt" name="cmnt" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div>  
        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">If the applications transitions has dependencies?</label>
            <input placeholder="Vendor/Manufacturer" id="hasdep" name="hasdep" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div>    
         <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">What is the date Range of this Data?</label>
            <input placeholder="dd/mm/yyyy" id="daterange" name="daterange" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div>  
        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Size of Database</label>
            <input placeholder="Vendor/Manufacturer" id="dbsize" name="dbsize" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div>  
        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Location of Data</label>
            <input placeholder="Vendor/Manufacturer" id="dataloc" name="dataloc" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div>  
        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Site Location of Data</label>
            <input placeholder="Vendor/Manufacturer" id="siteloc" name="siteloc" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div>
         <div class="form-group"> 
                                            <label class="control-label" for="formInput26">Does the application needs archival?</label>                                             
                                            <select id="needarch" class="form-control" name="needarch" > 
                                            <option></option>
                                                <option>Yes</option>                                                 
                                                <option>No</option>  
                                                <option>Other</option>                                                 
                                            </select>
                                        </div>  
        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Reason</label>
            <input placeholder="Vendor/Manufacturer" id="archreason" name="archreason" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div>  
        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Comments</label>
            <input placeholder="Vendor/Manufacturer" id="archcmnt" name="archcmnt" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div> 
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input type="checkbox"  id="sourceoft" name="sourceoft">Is this Application's data the source of Truth?
                                            </label>                                             
                                        </div> 
                                        
                                     <button type="button"  class="btn btn-primary  pull-right" data-toggle="modal" data-target="#myModal" id="btt" onclick="switchColors();"> <a class="collapsed" data-toggle="collapse" data-parent="#panels1" href="#collapse2" style="color:white">  Next</a><span class="glyphicon glyphicon-chevron-right"></span></button> 
                                       
                                </div>                                 
                            </div>                             
                        </div>
                        
                 <div class="panel panel-default"> 
                     <div class="panel-heading"> 
                                <h4 class="panel-title"> <a class="collapsed" data-toggle="collapse" data-parent="#panels1" href="#collapse2" onclick="switchColors();">Legacy Retention Information</a> </h4> 
                      </div>                             
                         <div id="collapse2" class="panel-collapse collapse"> 
                             <div class="panel-body">
                                <form role="form">
                                    <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Record code of Application</label>
            <input placeholder="Vendor/Manufacturer" id="reccode" name="reccode" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div> 
                                    <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Trigger Date</label>
            <input placeholder="Vendor/Manufacturer" type="date" id="triggerdate" name="triggerdate" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div> 
        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Period of Retention</label>
            <input placeholder="Vendor/Manufacturer" id="retentionperiod" name="retentionperiod" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div> 
        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Table Name/s where Retention need to apply</label>
            <input placeholder="Vendor/Manufacturer" id="retentiontable" name="retentiontable" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div> 
                                        <label text-align:"left">Retention Requirement</label>
                                        <input type="file" name="file" id="file" size="60" />
                                                            
        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Name of the Legal Retention & e-Discovery SME</label>
            <input placeholder="Vendor/Manufacturer" id="retentionname" name="retentionname" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div> 
        <div class="form-group"> 
                                            <label class="control-label" for="formInput26">Does any Records have legal holds/Tax Holds or any indication?</label>                                             
                                            <select id="reason_for_access" class="form-control" name="reason_for_access" > 
                                            <option></option>
                                                <option>Yes</option>                                                 
                                                <option>No</option>  
                                                <option>Other</option>                                                 
                                            </select>
                                        </div>   
        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Who or what entity provided legal or tax hold identification</label>
            <input placeholder="Vendor/Manufacturer" id="wholegal" name="wholegal" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div> 
         <div class="form-group"> 
                                            <label class="control-label" for="formInput26">Should this application's data be aechived?</label>                                             
                                            <select id="reason_for_access1" class="form-control" name="reason_for_access" > 
                                            <option></option>
                                                <option>Yes</option>                                                 
                                                <option>No</option>  
                                                                                           
                                            </select>
                                        </div>  
        <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Brief Explanation</label>
            <input placeholder="Vendor/Manufacturer" id="archexp" name="archexp" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div>             
           <button type="button"  class="btn btn-primary  pull-right" data-toggle="modal" data-target="#myModal" id="btt" onclick="switchColors1();"> <a class="collapsed" data-toggle="collapse" data-parent="#panels1" href="#collapse3" style="color:white">  Next</a><span class="glyphicon glyphicon-chevron-right"></span></button>
                                       <button type="button"  class="btn btn-default  pull-right" data-toggle="modal" data-target="#myModal" id="btn_new" onclick="switchColors0();"> <a class="collapsed" data-toggle="collapse" data-parent="#panels1" href="#collapse1" style="color:black"><span class="glyphicon glyphicon-chevron-left"></span>  Previous</a></button>
                                        
                                    </form>
                                </div>                                 
                            </div>                             
                        </div>
                       
                 <div class="panel panel-default"> 
                     <div class="panel-heading"> 
                                <h4 class="panel-title"> <a class="collapsed" data-toggle="collapse" data-parent="#panels1" href="#collapse3" onclick="switchColors1();">Archive Data Management</a> </h4> 
                            </div>                             
                         <div id="collapse3" class="panel-collapse collapse"> 
                              <div class="panel-body">
                                   <form role="form"> 
                                         <div class="form-group"> 
                                            <label class="control-label" for="formInput26">Is this application's been used for BI report?</label>                                             
                                            <select id="reason_for_access2" class="form-control" name="reason_for_access" > 
                                            <option></option>
                                                <option>Yes</option>                                                 
                                                <option>No</option>  
                                                                                           
                                            </select>
                                        </div>  
                                         <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input id="checkbox" type="checkbox">Is BI aware of using new/alternate target application data to support operational report                                            </label>                                             
                                        </div>
                                         <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input id="checkbox1" type="checkbox">)- BI Engagement should be initiated by Application owner and completed prior archiving     </label>
                                        </div>
                                                                              
                                    </form>
                                     <button type="button"  class="btn btn-primary  pull-right" data-toggle="modal" data-target="#myModal" id="btt" onclick="switchColors2();"> <a class="collapsed" data-toggle="collapse" data-parent="#panels1" href="#collapse4" style="color:white">  Next</a><span class="glyphicon glyphicon-chevron-right"></span></button>
                                      <button type="button"  class="btn btn-default  pull-right" data-toggle="modal" data-target="#myModal" id="btn_new" onclick="switchColors();"> <a class="collapsed" data-toggle="collapse" data-parent="#panels1" href="#collapse2" style="color:black"><span class="glyphicon glyphicon-chevron-left"></span>  Previous</a></button>
                                       
                                </div>                                 
                            </div>                             
                        </div>
                        
                 <div class="panel panel-default"> 
                      <div class="panel-heading"> 
                                <h4 class="panel-title"> <a class="collapsed" data-toggle="collapse" data-parent="#panels1" href="#collapse4" onclick="switchColors2();">System Requirements</a> </h4> 
                            </div>                             
                          <div id="collapse4" class="panel-collapse collapse"> 
                              <div class="panel-body">
                                   <form role="form"> 
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input id="checkbox23" type="checkbox">Account Credit Card
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input id="checkbox2" type="checkbox">Account Number - Financial
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input id="checkbox3" name="dob" type="checkbox">Date of Birth
                                            </label>
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input  id="checkbox4" name="driverlic" type="checkbox">Driver's License Number
                                                <br>
                                            </label>                                             
                                        </div> 
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input id="checkbox5" name="email" type="checkbox">Email Address
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input id="checkbox6"  name="family" type="checkbox">family Status
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input id="checkbox7"  name="gender" type="checkbox">Gender
                                            </label>
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input id="checkbox8" name="geoloc" type="checkbox">Geo Location
                                                <br>
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input id="checkbox9" name="img" type="checkbox">Image/Video
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input id="checkbox10" type="checkbox">Income
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input id="checkbox11" type="checkbox">IP Address
                                            </label>
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input id="checkbox12" type="checkbox">Martial Status
                                                <br>
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input id="checkbox13" type="checkbox">Mobile Device Id
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input id="checkbox14" name="name" type="checkbox">Name
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input id="checkbox15" name="phno" type="checkbox">Phone Number
                                            </label>
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input id="checkbox16" type="checkbox">Physical/Mailing Address
                                                <br>
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input id="checkbox17" type="checkbox">Physical Description
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input id="checkbox18" type="checkbox">Race/Ethnicity
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input id="checkbox19" type="checkbox">Religion
                                            </label>
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input id="checkbox20" type="checkbox">Sexual Preference
                                                <br>
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input id="checkbox21" name="ssn" type="checkbox">SSN/SIN
                                            </label>                                             
                                        </div>
                                        <div class="checkbox"> 
                                            <label class="control-label"> 
                                                <input  id="checkbox22" name="others" type="checkbox">Others
                                            </label>                                             
                                        </div>
                                         <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Brief Explanation</label>
            <input placeholder="Vendor/Manufacturer" id="expl" name="expl" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div> 
                           <h5>Security Information:
                                         <div class="form-group"> 
                                            <label class="control-label" for="formInput26">Does the application have localization requirement/ regulations</label>                                             
                                            <select id="reason_for_access4" class="form-control" name="reason_for_access" > 
                                            <option></option>
                                                <option>Yes</option>                                                 
                                                <option>No</option>  
                                                                                           
                                            </select>
                                        </div> 
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput26">List of Countries where localization requirement/ regulations apply</label>                                             
                                            <select id="reason_for_access5" class="form-control" name="reason_for_access" > 
                                            <option></option>
                                                <option>Yes</option>                                                 
                                                <option>No</option>  
                                                                                           
                                            </select>
                                        </div> 
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput26">Are the Localization requirements/regulations enforced with infrastructure or geofencing</label>                                             
                                            <select id="reason_for_access6" class="form-control" name="reason_for_access" > 
                                            <option></option>
                                                <option>Yes</option>                                                 
                                                <option>No</option>  
                                                                                           
                                            </select>
                                        </div> 
                                         <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Infrastructure Localization enforcement, please list the locations of the datacenters</label>
            <input placeholder="Vendor/Manufacturer" id="vendor1" name="vendor" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div> 
                                        <div class="form-group"> 
                                            <label class="control-label" for="formInput26">External access required for archived data</label>                                             
                                            <select id="reason_for_access7" class="form-control" name="reason_for_access" > 
                                            <option></option>
                                                <option>Yes</option>                                                 
                                                <option>No</option>  
                                                                                           
                                            </select>
                                        </div>  
                                         <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Describe who or what external entity needs access </label>
            <input placeholder="Vendor/Manufacturer" id="vendor2" name="vendor" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div> 
         <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">User Name</label>
            <input placeholder="Vendor/Manufacturer" id="vendor3" name="vendor" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div> 
         <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Role Description</label>
            <input placeholder="Vendor/Manufacturer" id="vendor4" name="vendor" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div> 
         <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Reason for Access</label>
            <input placeholder="Vendor/Manufacturer" id="vendor5" name="vendor" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div> 
         <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Frequency of Access</label>
            <input placeholder="Vendor/Manufacturer" id="vendor6" name="vendor" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div> 
         <div class="form-group row log-date">
          <div class="col-md-12">
            <label class="control-label required">Additional System Requirements</label>
            <input placeholder="Countries/Modules" id="sysreq" name="sysreq" class="form-control ember-text-field zf-date-picker date-picker ember-view" type="text">
          </div>
          
        </div> 
                                         <button type="button"  class="btn btn-default  pull-right" data-toggle="modal" data-target="#myModal" id="btn_new" onclick="switchColors1();"> <a class="collapsed" data-toggle="collapse" data-parent="#panels1" href="#collapse3" style="color:black"><span class="glyphicon glyphicon-chevron-left"></span>  Previous</a></button>
                                                                              
                                    </form>
                                </div>                                 
                            </div>                             
                        </div>
        </div>
                     <input type="text" id="pwqej" value="<%= info %>" hidden>   
       
                    <button type="submit" class="btn btn-primary btn pull-left" >Save</button>&nbsp;

                    <button type="button" class="btn btn-default" onclick="location.href = 'grid.jsp';">Cancel</button> 
 </div>  
                    
                    
       </div>
                
            
       <script>
 if(document.getElementById('pwqej').value=="XR" ||document.getElementById('pwqej').value=="R" )
 
checkk();
 
 </script>        
            
      
        <%
}
}
catch(Exception e){}
%>
</form>


  </body>
</html>