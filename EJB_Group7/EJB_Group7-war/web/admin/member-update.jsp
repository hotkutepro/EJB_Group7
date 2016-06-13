<%-- 
    Document   : member-update
    Created on : Jun 4, 2016, 11:58:31 PM
    Author     : Quy.heo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
        <meta name="author" content="Coderthemes">

        <jsp:include page="page/css.jsp"/>

        <link href="assets/select2/select2.css" rel="stylesheet" type="text/css" />

        <script src="js/modernizr.min.js"></script>
        <title>Member Update | Page</title>
    </head>



    <body class="fixed-left">
        
        <!-- Begin page -->
        <div id="wrapper">
        

            <!-- Top Bar Start -->
            <jsp:include page="page/topbar.jsp"/>
            <!-- Top Bar End -->


            <!-- ========== Left Sidebar Start ========== -->
            <jsp:include page="page/left-sidebar.jsp"/>
            <!-- Left Sidebar End --> 



            <!-- ============================================================== -->
            <!-- Start right Content here -->
            <!-- ============================================================== -->                      
            <div class="content-page">
                <!-- Start content -->
                <div class="content">
                    <div class="container">

                        <!-- Page-Title -->
                        <div class="row">
                            <div class="col-sm-12">
                                <h4 class="pull-left page-title">Editors</h4>
                                <ol class="breadcrumb pull-right">
                                    <li><a href="#">Group7.UIT</a></li>
                                    <li><a href="#">Forms</a></li>
                                    <li class="active">Editors</li>
                                </ol>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="panel panel-default">
                                    <div class="panel-heading"><h3 class="panel-title">Form validations</h3></div>
                                    <div class="panel-body">
                                        <div class=" form">
                                            <form class="cmxform form-horizontal tasi-form" id="signupForm" method="get" action="UserController" novalidate="novalidate">
                                                <div class="form-group ">
                                                    <label for="firstname" class="control-label col-lg-2">User name *</label>
                                                    <div class="col-lg-10">
                                                        <input class=" form-control" id="username" name="username" type="text" value="${user_edit.getUserName()}">
                                                    </div>
                                                </div>
                                                <div class="form-group ">
                                                    <label for="fullname" class="control-label col-lg-2">Full name  *</label>
                                                    <div class="col-lg-10">
                                                        <input class=" form-control" id="fullname" name="fullname" type="text" value="${user_edit.getFullName()}">
                                                    </div>
                                                </div>
                                                <div class="form-group ">
                                                    <label for="password" class="control-label col-lg-2">Password *</label>
                                                    <div class="col-lg-10">
                                                        <input class="form-control " id="password" name="password" type="password" value="${user_edit.getPassword()}">
                                                    </div>
                                                </div>
                                                <div class="form-group ">
                                                    <label for="confirm_password" class="control-label col-lg-2">Confirm Password *</label>
                                                    <div class="col-lg-10">
                                                        <input class="form-control " id="confirm_password" name="confirm_password" type="password" value="${user_edit.getPassword()}">
                                                    </div>
                                                </div>
                                                <div class="form-group ">
                                                    <label for="email" class="control-label col-lg-2">Email *</label>
                                                    <div class="col-lg-10">
                                                        <input class="form-control " id="email" name="email" type="email" value="${user_edit.getMail()}">
                                                    </div>
                                                </div>
                                                <div class="form-group ">
                                                    <label for="email" class="control-label col-lg-2">Gender</label>
                                                    <div class="radio radio-info radio-inline">
                                                        <input id="inlineRadio1" value="0" name="radioInline" checked="" type="radio">
                                                        <label for="inlineRadio1"> Male </label>
                                                    </div>
                                                    <div class="radio radio-inline">
                                                        <input id="inlineRadio2" value="1" name="radioInline" type="radio">
                                                        <label for="inlineRadio2"> Female </label>
                                                    </div>
                                                </div>                                                
                                                <div class="form-group ">
                                                    <label for="agree" class="control-label col-lg-2 col-sm-3">Phone Number *</label>
                                                    <div class="col-lg-10">
                                                        <input class=" form-control" id="phone" name="phone" type="text" value="${user_edit.getPhoneNumber()}">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-lg-offset-2 col-lg-10">
                                                        <button class="btn btn-success btn-custom waves-effect waves-light m-b-5" type="submit" name="btSubmit" value="Update">Update</button>
                                                        <a href="MemberView" class="btn btn-custom btn-inverse waves-effect waves-light m-b-5">Cancel</a>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="control-label col-lg-2">Role</label>
                                                    <div class="col-lg-3">
                                                        <select name="role" class="select2" data-placeholder="Choose a Country...">
                                                          <option value="10">&nbsp;</option>
                                                          <% 
                                                             //String a = request.getSession().getAttribute("ssRole").toString();
                                                             //if(request.getSession().getAttribute("ssRole").toString() != "0"){
                                                              if(((session.getAttribute("ssRole")).toString()).equals("0")
                                                                      && (session.getAttribute("ssRole"))!= null ){
                                                            %>
                                                                <option value="#">&nbsp;</option>
                                                            <%
                                                             }
                                                             if(((session.getAttribute("ssRole")).toString()).equals("0")
                                                                     && (session.getAttribute("ssRole"))!= null ){
                                                                 %>
                                                                    <option name="" value="1">Administrator</option>
                                                                    <option name="" value="2">Manager</option>
                                                                    <option name="" value="3">Poster</option>
                                                                    <option name="" value="4">Writer</option>
                                                                    <option name="" value="5">Reader</option>  
                                                                 <%
                                                              }
                                                          %>
                                                                                                       
                                                          
                                                        </select>
                                                    </div>
                                                </div>
                                            </form>
                                        </div> <!-- .form -->
                                    </div> <!-- panel-body -->
                                </div> <!-- panel -->
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-6">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">Button-Custom</h3>
                                    </div>
                                    <div class="panel-body">
                                        <button type="button" class="btn btn-success btn-custom waves-effect waves-light m-b-5">.btn-success</button>
                                        <button type="button" class="btn btn-inverse btn-custom waves-effect waves-light m-b-5">.btn-inverse</button>
                                        <button class="btn btn-default waves-effect m-b-5"> <i class="fa fa-heart"></i> <span>Like</span> </button>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="panel panel-default">
                                    <div class="panel-heading"> 
                                        <h3 class="panel-title">Notification (bottom-right)</h3> 
                                    </div> 
                                    <div class="panel-body"> 
                                        <a class="btn btn-info waves-effect waves-light" href="javascript:;" onclick="$.Notification.notify('info','bottom right', 'Sample Notification', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas vitae orci ut dolor scelerisque aliquam.')">Info</a>
                                        <a class="btn btn-success waves-effect waves-light" href="javascript:;" onclick="$.Notification.notify('success','bottom right', 'Sample Notification', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas vitae orci ut dolor scelerisque aliquam.')">Success</a>
                                        <a class="btn btn-warning waves-effect waves-light" href="javascript:;" onclick="$.Notification.notify('warning','bottom right', 'Sample Notification', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas vitae orci ut dolor scelerisque aliquam.')">Warning</a>
                                        <a class="btn btn-danger waves-effect waves-light" href="javascript:;" onclick="$.Notification.notify('error','bottom right', 'Sample Notification', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas vitae orci ut dolor scelerisque aliquam.')">Error</a>
                                        <a class="btn btn-inverse waves-effect waves-light" href="javascript:;" onclick="$.Notification.notify('black','bottom right', 'Sample Notification', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas vitae orci ut dolor scelerisque aliquam.')">Black</a>
                                        <a class="btn btn-default waves-effect" href="javascript:;" onclick="$.Notification.notify('white','bottom right', 'Sample Notification', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas vitae orci ut dolor scelerisque aliquam.')">White</a>
                                    </div> 
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="panel panel-default">
                                    <div class="panel-heading"> 
                                        <h3 class="panel-title">Basic</h3> 
                                    </div> 
                                    <div class="panel-body"> 
                                        <p>
                                            Supports bootstrap brand colors: <code>.radio-primary</code>, <code>.radio-danger</code> etc.
                                        </p>
                                        <p>Gender</p>
                                        <div class="radio radio-info radio-inline">
                                            <input id="inlineRadio1" value="option1" name="radioInline" checked="" type="radio">
                                            <label for="inlineRadio1"> Male </label>
                                        </div>
                                        <div class="radio radio-inline">
                                            <input id="inlineRadio2" value="option2" name="radioInline" type="radio">
                                            <label for="inlineRadio2"> Female </label>
                                        </div>
                                    </div> 
                                </div>
                            </div>
                        </div>
                    </div> <!-- container -->
                               
                </div> <!-- content -->

                <footer class="footer text-right">
                    2015 Â© Quylk.UIT.
                </footer>

            </div>
            <!-- ============================================================== -->
            <!-- End Right content here -->
            <!-- ============================================================== -->


            <!-- Right Sidebar -->
            <jsp:include page="page/right-sidebar.jsp"/>
            <!-- /Right-bar -->


        </div>
        <!-- END wrapper -->
    
        <script>
            var resizefunc = [];
        </script>

        <!-- jQuery  -->
        <jsp:include page="page/jquery.jsp"/>
        
        <jsp:include page="page/jquery.jsp"/>

        <script type="text/javascript" src="assets/jquery-multi-select/jquery.multi-select.js"></script>
        <script type="text/javascript" src="assets/jquery-multi-select/jquery.quicksearch.js"></script>
        <script src="assets/bootstrap-inputmask/bootstrap-inputmask.min.js" type="text/javascript"></script>
        <script type="text/javascript" src="assets/spinner/spinner.min.js"></script>
        <script src="assets/select2/select2.min.js" type="text/javascript"></script>



        <!--form validation init-->
        <script type="text/javascript" src="assets/jquery.validate/jquery.validate.min.js"></script>
        <script src="assets/jquery.validate/form-validation-init.js"></script>

        <script>

            jQuery(document).ready(function(){
                // Select2
                jQuery(".select2").select2({
                    width: '100%'
                });

            });
        </script>
	</body>
</html>