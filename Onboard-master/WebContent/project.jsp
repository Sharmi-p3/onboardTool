<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
<title>Projects</title>
<meta name="description" content="Blueprint: View Mode Switch" />
<meta name="keywords" content="view mode, switch, css, style, grid, list, template" />
<meta name="author" content="Codrops" />
<link rel="stylesheet" type="text/css" href="css/default.css" />
<link rel="stylesheet" type="text/css" href="css/component.css" />
<script src="js/modernizr.custom.js"></script>
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
 <script type='text/javascript'
  src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
   <!--  jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>

<!-- Isolated Version of Bootstrap, not needed if your site already uses Bootstrap -->
<link rel="stylesheet" href="https://formden.com/static/cdn/bootstrap-iso.css" />

<!-- Bootstrap Date-Picker Plugin -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
<script src="js/multiplepages.js"></script>
<style>
   body
    {
     margin:0; padding:0; 
   
    font-family: "Helvetica Neue",Roboto,Arial,"Droid Sans",sans-serif;
    }
    .navbar-brand {
    
    padding: 10px;
  border: 0px;
  border-radius: 1px;
   font-size: 1.15em;
  font-weight: 400;
    }
    .
    
   .navbar-brand {
  color: black;
}

.navbar-brand:hover {
  color: #ffffff;
  text-shadow: 1px -1px 8px #b3e9ff;
}
    
    
    #sitetitle{
    
    font-size: 22px;
    margin:auto;
}


    
    

   #sidemenu
   {
   
   background:#3276B1 ;
   position: fixed;
top: 45px;
left: -1%;
padding-left:0px;
width:300px !important;
bottom: 0px;
overflow: auto;
color:white;
text-size:30%;
} 
 


#sidemenu a:hover {
    background-color: #ddd;
    color: black;
    }

  
  .sidebar{
  
  position:relative;
  left:5px;
  width:22%;
  
  background:#F7F7F7 ;
  }
  
  
  #panels1
  {
 
    width: 110%;
    
    display: inline-block;
    background: white;
    right:10%;
    border: 1px solid #E6E9ED;
   
    opacity: 1;
    transition: all .2s ease;
}
  
  
  
  .form-control{
  
  height:40px;
  }
  
  
 #descr{
  height:40px;
  }
  
  #projectname{
    height:40px;
  
  }
  #pid{
  height:40px;
  }
  </style>

<script>
    $(document).ready(function(){
      var date_input=$('input[name="Startdate"]'); //our date input has the name "date"
      var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
      var options={
        format: 'mm/dd/yyyy',
        container: container,
        todayHighlight: true,
        autoclose: true,
      };
      date_input.datepicker(options);
    })
    $(document).ready(function(){
      var date_input=$('input[name="Enddate"]'); //our date input has the name "date"
      var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
      var options={
        format: 'mm/dd/yyyy',
        container: container,
        todayHighlight: true,
        autoclose: true,
      };
      date_input.datepicker(options);
    })
</script>   
  
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
<script>
function edit(id,nam)
{

var f=document.form;
f.method="post";
f.action="setid?id="+id+"&name="+nam;
f.submit();
}



</script>

  
</head>
<!--from  w  w w  . ja  va 2 s.co  m-->
  <body style='margin:20px'>
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
HttpSession role_ses=request.getSession();  
String frole=(String)role_ses.getAttribute("role");
%>
<%
Connection con = null;
String url = "jdbc:mysql://localhost:3306/";
String db = "strutsdb";
String driver = "com.mysql.jdbc.Driver";
String userName ="root";
String password="password123";

int sumcount=0;
Statement st,st1;
try{
String query;
HttpSession details=request.getSession();
String prj=(String)details.getAttribute("projects");
String roles=(String)details.getAttribute("role");
Class.forName(driver).newInstance();
con = DriverManager.getConnection(url+db,userName,password);
if(prj.equals("all"))
 query = "select * from projinfo";
else
 query = "select * from projinfo where projectname='"+prj+"'";
st = con.createStatement();
ResultSet rs = st.executeQuery(query);

%>
<form method="post" name="form" action="Appin">
<div class="container">
<nav class=" navbar-fixed-top" style="background:#3276B1">
            <div class="container-fluid">
                
                    
                    <a class="navbar-brand" href="project.jsp" style="color:white" id="sitetitle">Onboarding Tool</a>
              
                <div id="navbar" class="navbar-collapse collapse">
                
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                        
              <img src="assets/images/logo1.png" id="image" class="img-rounded" height="50" width="80" alt="Platform3Solutions" />&nbsp;
</li>
 <li><%
                         String uid=(String)details.getAttribute("username");
                         String role=(String)details.getAttribute("role");%>
 <p style="color:white; padding-top:15px;"><%=uid%>&nbsp;logged in as &nbsp;<span><%=role%></span></p>
</li> 
                        <li>
                            <a href="logout.jsp" style="color:white; background:#3276B1">Logout</a>
                        </li>
                    </ul>
                    
                </div>
            </div>
        </nav>
        </div>
       
            <div class="row">
            <br>
                <div class="col-md-1 sidebar">
                    <ul class="nav nav-sidebar">
                    <br>
                       
                    </ul>
                </div>
                
                <div class="col-md-8">
                    <h1 class="page-header">Projects</h1>
                    
                    <div class="main">
<div id="cbp-vm" class="cbp-vm-switcher cbp-vm-view-grid">
<div class="cbp-vm-options">
<button type="button" class="btn btn-primary pull-right"  name="newpr"   onclick="location.href = 'newproject.jsp';" ><span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
  New Project
</button>
<a href="#" class="cbp-vm-icon cbp-vm-grid cbp-vm-selected" data-view="cbp-vm-view-grid">Grid View</a>
<a href="#" class="cbp-vm-icon cbp-vm-list" data-view="cbp-vm-view-list">List View</a>
</div>

<ul>
<%
int k=0;
while(rs.next()){
	k++;
%> 
<li>
<h3 class="cbp-vm-title left-col primary" name="name"><%=rs.getString(1)%></h3>
<% String q="select * from archive_exec where level=1 and projects='"+rs.getString(1)+"'order by seq_num";
st1 = con.createStatement();
ResultSet rs1 = st1.executeQuery(q);

while(rs1.next())
{
	
if(rs1.getString(15).equals("100"))
continue;
else
{%>
	<center><div class="progress center-col cbp-vm-detail">
	  <div class="progress-bar progress-bar-success progress-bar-striped" id="prog_bar<%=k %>" role="progressbar" aria-valuenow="<%=rs1.getString(15) %>"
	  aria-valuemin="0" aria-valuemax="100" style="width:<%=rs1.getString(15) %>%">
	  <%=rs1.getString(15) %>%
	  </div>
	  
	</div>
	</center>
	<%

	if(Integer.parseInt(rs1.getString(15))<35){
%>
<script>
document.getElementById('prog_bar<%=k%>').className='progress-bar progress-bar-danger progress-bar-striped';</script>
<%

	} 
else if(Integer.parseInt(rs1.getString(15))<65){
%>
<script>
document.getElementById('prog_bar<%=k%>').className='progress-bar progress-bar-warning progress-bar-striped';
</script>
<%
} %>
<h5 class="cbp-vm-title right-col primary" ><%=rs1.getString(3) %></h5>
<%
break;
}
} %>
<button type="button" class="btn btn-primary" name="btn" onClick="edit('<%=rs.getString(10)%>','<%=rs.getString(1)%>');">
 View/Update
</button>
</li>
<%
}
%>
</ul>
<%
}
catch(Exception e){
e.printStackTrace();
}
%>
</div>
</div> 
   
       </div>
                
            </div>
            
      
        
</form>
<script src="js/classie.js"></script>
<script src="js/cbpViewModeSwitch.js"></script>
  </body>
</html>