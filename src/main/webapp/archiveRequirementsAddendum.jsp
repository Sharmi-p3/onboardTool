<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- ========== COMMON STYLES ========== -->
<link rel="stylesheet" href="css/bootstrap.min.css" media="screen" >
<link rel="stylesheet" href="css/font-awesome.min.css" media="screen" >
<link rel="stylesheet" href="css/animate-css/animate.min.css" media="screen" >

<title>Decom3Sixty - Archive Requirements</title>
<!-- ========== PAGE STYLES ========== -->
<link rel="stylesheet" href="css/prism/prism.css" media="screen" > <!-- USED FOR DEMO HELP - YOU CAN REMOVE IT -->
 <link rel="stylesheet" href="css/toastr/toastr.min.css" media="screen" >
 <link rel="stylesheet" href="css/icheck/skins/line/blue.css" >
 <link rel="stylesheet" href="css/icheck/skins/line/red.css" >
 <link rel="stylesheet" href="css/icheck/skins/line/green.css" >
 <link rel="stylesheet" href="css/bootstrap-tour/bootstrap-tour.css" >
<link rel="stylesheet" href="css/UserInfo/userinfo.css" >
<!-- ========== THEME CSS ========== -->
<link rel="stylesheet" href="css/main.css" media="screen" >

<!-- =========== Header Icon ========= -->
 <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"/>
 <link rel="stylesheet" href="css/headerIcon/headerIcon.css" media="screen" >

<!-- ========== MODERNIZR ========== -->
<script src="js/modernizr/modernizr.min.js"></script>
<script src="js/jquery/jquery-2.2.4.min.js"></script>   
<link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel = "stylesheet">
<script src = "js/Requirements/ArchiveRequirements/addendumInfo/archiveReqAddendumDataRetrieve.js">
<script src="js/jquery/jquery-2.2.4.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>	
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<link rel="stylesheet" href="js_in_pages/requirements.css" type="text/css"/>
<link rel="stylesheet" href="css/Responsive/intake-opportunity.css"
	media="screen">
<link rel="stylesheet" href="css/Responsive/responsive.css"
	media="screen">

    


</head><!--from  w  w w  . ja  va 2 s.co  m-->

<style>
   body {
  background-color: #fff;
  margin: 0;
  padding: 0;
}

.page-title-div {
background:#1565c0;
padding: 15px; 
}

    h1 {
        text-align: center;
        font-family: Tahoma, Arial, sans-serif;
        color: #06D85F;
        margin: 80px 0;
    }

    .box {
        width: 40%;
        margin: 0 auto;
        background: rgba(255, 255, 255, 0.2);
        padding: 50px;
        border: 2px solid #fff;
        border-radius: 20px/50px;
        background-clip: padding-box;
        text-align: center;
    }

    .overlay {
        position: fixed;
        top: 0;
        bottom: 0;
        left: 0;
        right: 0;
        background: rgba(0, 0, 0, 0.7);
        transition: opacity 500ms;
        visibility: hidden;
    }

    .overlay:target {
        visibility: visible;
        opacity: 1;
    }

    .popup {
        margin: 210px auto;
        padding: 20px;
        background: #fff;
        border-radius: 5px;
        width: 40%;
        position: relative;

    }

    .popup h2 {
        margin-top: 0;
        color: #333;
        font-family: Tahoma, Arial, sans-serif;
    }

    .popup .close {
        position: absolute;
        top: 20px;
        right: 30px;
        transition: all 200ms;
        font-size: 30px;
        font-weight: bold;
        text-decoration: none;
        color: black;
    }

    .popup .close:hover {
        color: black;
    }

    .popup .content {
        max-height: 30%;
        overflow: auto;
    }

    .button {
        color: white;
    }

    @media screen and (max-width: 700px) {
        .box {
            width: 70%;
        }

        .popup {
            width: 70%;
        }

    }

    #nav_userid {
        color: green;
    }

    #nav_role {
        color: blue;
    }

    .ScrollStyle {
        max-height: 350px;
        overflow-y: scroll;
    }
    .table-title .add-new {
    float: right;
    height: 30px;
    font-weight: bold;
    font-size: 12px;
    text-shadow: none;
    min-width: 100px;
    border-radius: 50px;
    line-height: 13px;
	}
	.table-title .add-new i {
    margin-right: 4px;
	}
	table.table td a {
    cursor: pointer;
    display: inline-block;
    margin: 0 5px;
    min-width: 24px;
	}    
	table.table td a.add {
    color: #27C46B;
	}
	table.table td a.edit {
    color: #FFC107;
	}
	table.table td a.delete {
    color: #E34724;
	}
	table.table td i {
    font-size: 19px;
	}
	table.table td a.add i {
    font-size: 24px;
    margin-right: -1px;
    position: relative;
    top: 3px;
	}    
	table.table .form-control {
    height: 32px;
    line-height: 32px;
    box-shadow: none;
    border-radius: 2px;
	}
	table.table .form-control.error {
    border-color: #f50000;
	}
	table.table td .add {
    display: none;
	}

.panelSize {
  display: flex;
  justify-content: center;
}

.editable
    {
      display: inline-block;
      min-width: 30px;
      min-height: 30px;
      overflow: hidden;
    }

/* table { 
	box-shadow: 5px 5px 5px #999; 
	} */
    /*END Form Wizard*/
     .active1{
    background:#1565c0;
}
 .page-title-div {
    background:#1565c0;
	padding: 15px;  
}
   
</style>

<body class="top-navbar-fixed">

<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%
    SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
    Date date = new Date();
    System.out.println("[INFO]-----" + formatter.format(date) + "-----Accessed IntakeArchiveRequirements JSP PAGE-----[INFO]"); %>
<%@page language="java" %>
<%@page import="java.sql.*" %>
<%@ page import="onboard.DBconnection" %>


<%
    try {
        HttpSession details = request.getSession();
        String roles = (String) details.getAttribute("role");
        String det = (String) session.getAttribute("theName");
        String idd = (String) session.getAttribute("appidd");
        String Opportunityname=(String)session.getAttribute("SelectedOpportunity");
        DBconnection d = new DBconnection();
        Connection conn = (Connection) d.getConnection();
        
%>
<form class="form-signin" name="loginForm" method="post">

    <div class="main-wrapper">

           <!-- <nav class="navbar top-navbar bg-white box-shadow">
        <div class="container-fluid">
            <div class="row">
                <div class="navbar-header no-padding" style = "height : 100px;">
                    <a class="navbar-brand" href="OpportunityList.jsp" id="sitetitle">
                        <img src="images/Decom3Sixty_logo.png" alt="Decom3Sxity" class="logo" style = "margin-top : 50px;">
                    </a>
                </div>
                /.navbar-header
                <div class="tabs-content">
                  <ul class="nav navbar-nav headerTab navAlign">
		              <li class="active1"><a href="OpportunityList.jsp" style= "color:#fff;"><i class="fad fa-folders fa-2x iconAlign activeIcon"></i>Applications</a></li>
		              <li><a href="Admin_Module_Send_Invites.jsp"><i class="fad fa-user-cog iconAlign iconColor fa-2x"></i>Administration</a></li>
		              <li><a href="PhaseList.jsp"><i class="fad fa-desktop iconAlign iconColor fa-2x"></i>Governance</a></li>
		              <li><a href="#"><i class="fad fa-wallet iconAlign iconColor fa-2x"></i>Finance</a></li>
		              <li ><a href="DashBoard.jsp"><i class="fad fa-chart-pie iconAlign iconColor fa-2x"></i>Dashboards</a></li>
		              <li><a href="#"><i class="fad fa-comment-lines iconAlign iconColor fa-2x"></i>Compliance</a></li>
		          </ul>
		         <ul class="nav navbar-nav navbar-right" style = "margin-top:45px;">
                      <li><a href="#"><span id="nav_userid">admin &nbsp;</span>logged in as &nbsp;<span id='nav_role'> admin </span></a></li>
                        <li><a href="Logout" class="text-center"> Logout</a> </li>
                    </ul>
                </div>
      </div>
      <nav class="navbar navbar-down">
				  <div class="container-fluid fixed-top">
                    <div class="row page-title-div">
                             <div class="col-sm-6">
                          <p class="sub-title" style="color:#fff ; margin-right: -26px; "> <a  href="OpportunityList.jsp" id="sitetitle1" style="color:#fff"><span class="glyphicon glyphicon-home"></span> Home</a>  >> <a  href="ArchiveRequirementsIntroDetails.jsp" id="sitetitle1" style="color:#fff">
                           Introduction</a> >>
                           <a  href="archiveRequirementsLegacyDetails.jsp" id="sitetitle1" style="color:#fff">
                           Legacy Application Info</a> >>
                           <a  href="archiveRequirementsRetentionDetails.jsp" id="sitetitle1" style="color:#fff">
                           Retention Details</a> >> 
                           <a  href="ArchiveBusinessRequirements.jsp" id="sitetitle1" style="color:#fff">
                           Business Requirements</a> >>
                            <a  href="archiveReqAbbrevation.jsp" id="sitetitle1" style="color:#fff">
                           Abbreviations</a> >>
                           <a  href="archiveRequirementsDocumentRevisions.jsp" id="sitetitle1" style="color:#fff">
                           Document Revision</a> >> Addendum</p>

                    </div>

                </div></div>
			</nav>
      
        </div>
        /.container-fluid
    </nav> -->
     <%@include file="Nav-Bar.jspf"%>
		<nav class="nav nav-height-70 nav-font" id="bg-color"
			style="font-size: 14px;">
			<div class="container-fluid" id="container-fluid-margin">
				<div class="row" id="d3s-mt-10">
						<div class="col-lg-12 col-md-12">
							<div class="sub-title" style="color: #fff">
								<a  href="OpportunityList.jsp" id="sitetitle1" style="color:#fff"><span class="glyphicon glyphicon-home"></span> Home</a>  >> <a  href="ArchiveRequirementsIntroDetails.jsp" id="sitetitle1" style="color:#fff">
                           			Introduction</a> >>
                           		<a  href="archiveRequirementsLegacyDetails.jsp" id="sitetitle1" style="color:#fff">
                           			Legacy Application Info</a> >>
                           		<a  href="archiveRequirementsRetentionDetails.jsp" id="sitetitle1" style="color:#fff">
                           			Retention Details</a> >> 
                           		<a  href="ArchiveBusinessRequirements.jsp" id="sitetitle1" style="color:#fff">
                           			Business Requirements</a> >>
                            	<a  href="archiveReqAbbrevation.jsp" id="sitetitle1" style="color:#fff">
                           			Abbreviations</a> >>
                           		<a  href="archiveRequirementsDocumentRevisions.jsp" id="sitetitle1" style="color:#fff">
                           			Document Revision</a> >> Addendum
							</div>
						</div>
					</div>
			</div>
		</nav>
    
        <div class="content-wrapper">
         <br/>
        <div class="content-wrapper">
        <div class="col-md-12">
				<div style="margin-bottom: -138px;" class="form-wizard">
						<div class="form-wizard-header">
							
							<ul class="list-unstyled form-wizard-steps clearfix nav-font">
							<p class="nav-font" style="margin-bottom: -52px;">Fill all the required fields to go next step</p>
								<li class="activated"><span>1</span><i>Introduction</i></li>
								<li class="activated"><span>2</span><i>Legacy Application Info</i></li>
								<li class="activated"><span>3</span><i>Retention Details</i></li>
								<li class="activated"><span>4</span><i>Business requirements</i></li>
								<li class="activated"><span>5</span><i>Abbreviations</i></li>
								<li class="activated"><span>6</span><i>Revisions</i></li>
								<li class="active"><span>7</span><i>Addendum</i></li>
								<li><span>8</span><i>StakeHolders</i></li>
								<li><span>9</span><i>Review</i></li>
								<li><span>10</span><i>Approval</i></li>
						
							</ul>
						</div>
						</div></div>
            <div class="content-container">

      
                <!-- Projects List Start -->

                <div class="main-page">

                    <section>

                        <div class="row">
<div class="container" id="module_header">
                                <div>
										<div class="form-wizard">

                                    <%
                                        String initiate = (String) session.getAttribute("Ideation and Initiate");
                                        String plan = (String) session.getAttribute("Plan");
                                        String execute = (String) session.getAttribute("Execute");
                                        String hypercare = (String) session.getAttribute("Closure");
                                        if (initiate == null)
                                            initiate = "0";
                                        if (plan == null)
                                            plan = "0";
                                        if (execute == null)
                                            execute = "0";
                                        if (hypercare == null)
                                            hypercare = "0";
                                    %>
                                         
                                  <div class="tab-pane" role="tabpanel" id="step4">
                                    
                                     <!-- Business Requirements Table -->
                                     
                            <div class="card-container-1 card d3s-mt-75">
                                        <div class="card-header" id="cd-header">
                                        	Addendum
                                            
                                        </div>
                                        
                                        <div id="collapse4" class="panel-collapse ">
                                          
                                            <div id="collapse1" class="panel-collapse " name="collapse">
                                                <div class="panel-body">
                                                    <div id="inputFieldsAddendum">
                                                 
											    </div>
									              
                                          
                                            <button type="button" class="btn btn-primary pull-right" id="addendumAddId" data-bs-toggle="modal" data-bs-target="#addendumAddPopUp" style="display: none;">Delete PopUp</button>
                                            
                                            <button type="button" class="btn btn-primary pull-right" id="addendumDeleteId" data-bs-toggle="modal" data-bs-target="#addendumDeletePopUp" style="display: none;">Delete PopUp</button>
                                            
                                            <div class="col-12" align="end">
                                            <!--  <div class = "btn-group dropup dropright">
                                            <button class="btn btn-primary dropdown-toggle " type="button" data-toggle="dropdown">Actions
                              <span class="caret"></span></button>
                             
                                <ul class="dropdown-menu" style = "min-width: inherit;" >
                                <li><a href="#" id = "addendumAdd" data-toggle="modal" data-target="#AddPopUp" class="fa fa-plus" style="font-size:19px;color:black;">&nbsp;&nbsp;&nbsp;Add</a></li>
                                <li><a href="#" id = "addendumDelete" class="fa fa-trash" style="font-size:18px;color:black">&nbsp;&nbsp;&nbsp;Delete</a></li>
                                </ul></div>
                                 -->
                                 </br>
                                <div class="dropdown">
									<button type="button"
										class="btn btn-secondary dropdown-toggle"
										id="dropdownMenuButton1" data-bs-toggle="dropdown"
										aria-expanded="false">Actions</button>
									<ul class="dropdown-menu"
										aria-labelledby="dropdownMenuButton1">
										<li><a class="dropdown-item dropDown-font"
											id="addendumAdd" href="#" data-bs-toggle="modal"
												data-bs-target="#AddPopUp"> <i
												class="fas fa-plus" aria-hidden="true">&nbsp;&nbsp;&nbsp;
											</i>Add</a></li>
																			
										<li><a class="dropdown-item dropDown-font"
											id="addendumDelete" href="#"><i class="fas fa-trash"
												aria-hidden="true">&nbsp;&nbsp;&nbsp; </i>Delete</a></li>

									</ul>
								</div>
																	 
								<button type="submit" class="btn btn-primary" id="addendumSave">Save</button>
					            </div>
                                        <div class="col-12">
                                        	<br/>
                                        <div class="col-4"> 
                                    
                                       <button type="button" class="btn btn-secondary" style="padding-top: 5px; padding-left: 10px; float: left;" onclick="location.href='archiveRequirementsDocumentRevisions.jsp';" >Prev</button></div>
                                       <div class="col-12" align="end">
                                       
                                     <a href='archiveRequirementsReviewDetails.jsp' class="btn btn-primary" id="addendumNext" disabled="true">
                                                                 Next</a>
                                     
                                       </div>
                                     </div>
                                     
                                     
                                     
								</div>
					            </div>
                                  </div>
					            </div>
					        </div>
                        </div>
                </div>
                <!-- /.row -->
            </div>
            </div>
            
            </section>
            <!-- /.section -->

        </div>
        <!-- /.main-page -->

        <!-- Project List End -->

    </div>
    <!-- /.content-container -->

    <!-- /.main-wrapper -->
    <script>
        function validateform9() {

            var f = document.loginForm;
            f.method = "post";
            f.action = 'ArchivalRequirements';
            f.submit();

        }
    </script>


    <%
       //     }
    //    }
    %>
    </div></div></form>
   
    <!-- Add popup -->
   <div class="modal" id="addendumAddPopUp" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
     
      <div class="modal-header">
		<h5 class="modal-title" id="exampleModalLabel">Add Input Field</h5>
		<button type="button" id="addendumAddClose" class="btn-close"
			data-bs-dismiss="modal" aria-label="Close"></button>
	 </div>
      <div class="modal-body">
        <form name="PopUpform">
            <div class="row">
                    <div class="form-group">
                        <div class="col-lg-8">
                            <label class="control-label" for="formInput526">Label:</label>
                            <input type = "text" id="addendumLabelId" class="form-control" name="addendumLabelName" required >
                                
                            </input>
                        </div>
                    </div>
                </div>
                <br/>
                <input type="text" id="addendumAddSeqNum" name="" value="" style="display:none;"/>
               
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" id="addendumAddSubmit" class="btn btn-primary" data-bs-dismiss="modal">Submit</button>
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" id = "closeIdAddendum" aria-label="Close">Cancel</button>
        
      </div>
    </div>
  </div>
</div> 
   
<!-- Delete PopUp -->  
  <div class="modal" id="addendumDeletePopUp" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      
       <div class="modal-header">
		<h5 class="modal-title" id="exampleModalLabel">Delete Field</h5>
		<button type="button" id="addendumDeleteClose" class="btn-close"
			data-bs-dismiss="modal" aria-label="Close"></button>
	 </div>
      <div class="modal-body">
        <form name="DeleteForm">
                <div class="modal-body">
                    <p>Do you want to delete this Row permanently?</p>
                    <input type="hidden" id="addendumDeleteSeq"/>
                </div>
            </form>
      </div>
      <div class="modal-footer">
        <button type="button" id="addendumDeleteSubmit" class="btn btn-primary submitDisableAddendum" data-bs-dismiss="modal">Yes</button>
        <button type="button" class="btn btn-secondary" id = "closeAddendumIdDelete" data-bs-dismiss="modal" aria-label="Close" >No</button>
      </div>
    </div>
  </div>
</div>

<jsp:include page="samp_forms.jsp">
    <jsp:param name="ProjectName" value="<%=Opportunityname %>"/>
    <jsp:param name="AppName" value="<%=idd %>"/>
    <jsp:param name="number" value="2"/>
    <jsp:param name="servlet" value="Requirements"/>
</jsp:include>
<%
     //       }
    //    }
    } 
    catch (Exception e) {
    }
%>

<!-- Active Icon Color changes  -->
<script>
$(document).on('mouseenter','.active1', function(){
		
		 $('.activeIcon').css('color','#1565c0');
		 
	 });
	 
	 $(document).on('mouseleave','.active1', function(){
			
		 $('.activeIcon').css('color','#fff');
		 
	 });
</script>

<!-- ========== COMMON JS FILES ========== -->
<script src="js/jquery/jquery-2.2.4.min.js"></script>
<script src="js/jquery-ui/jquery-ui.min.js"></script>
<script src="js/bootstrap/bootstrap.min.js"></script>
<script src="js/pace/pace.min.js"></script>

<script src="js/iscroll/iscroll.js"></script>


<!-- ========== PAGE JS FILES ========== -->
<script src="js/prism/prism.js"></script>
<script src="js/waypoint/waypoints.min.js"></script>
<script src="js/counterUp/jquery.counterup.min.js"></script>
<script src="js/amcharts/amcharts.js"></script>
<script src="js/amcharts/serial.js"></script>
<script src="js/amcharts/plugins/export/export.min.js"></script>
<link rel="stylesheet" href="js/amcharts/plugins/export/export.css"
        type="text/css" media="all" />
<script src="js/amcharts/themes/light.js"></script>
<script src="js/toastr/toastr.min.js"></script>
<script src="js/icheck/icheck.min.js"></script>
<script src="js/bootstrap-tour/bootstrap-tour.js"></script>

<!-- ========== THEME JS ========== -->
<script src="js/production-chart.js"></script>
<script src="js/traffic-chart.js"></script>
<script src="js/task-list.js"></script>

<!-- ========== THEME JS ========== -->

<script id ="scripttag"></script>

<!-- ========== PAGE JS FILES ========== -->
<script src="js/prism/prism.js"></script>
<script type="text/javascript" src="js/date-picker/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="js/date-picker/jquery.timepicker.js"></script>
<script type="text/javascript" src="js/date-picker/datepair.js"></script>
<script type="text/javascript" src="js/date-picker/moment.js"></script>

<script src="js/notification/notification.js"></script>

<script src = "js/Requirements/ArchiveRequirements/addendumInfo/archiveReqAddendumAddAjaxCall.js"></script>
<script src = "js/Requirements/ArchiveRequirements/addendumInfo/archiveReqAddendumDeleteAjaxCall.js"></script>
<script src = "js/Requirements/ArchiveRequirements/addendumInfo/archiveReqAddendumSaveAjaxCall.js"></script>
<script src="js/navigation/navigation.js"></script>
<!-- ========== Toastr ========== -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
<link href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" rel="stylesheet">

</body>
</html>