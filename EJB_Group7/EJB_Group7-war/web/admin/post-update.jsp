<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
        <meta name="author" content="Coderthemes">

        <jsp:include page="page/css.jsp"/>

        <link href="assets/notifications/notification.css" rel="stylesheet" />
        <link href="assets/timepicker/bootstrap-timepicker.min.css" rel="stylesheet" />
        <link href="assets/timepicker/bootstrap-datepicker.min.css" rel="stylesheet" />
        <link href="assets/select2/select2.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" type="text/css" href="assets/bootstrap-wysihtml5/bootstrap-wysihtml5.css" />
        <link href="assets/summernote/summernote.css" rel="stylesheet" />
        <script src="js/modernizr.min.js"></script>
        <title>Post Update | Page</title>
    </head>



    <body class="fixed-left">
        <script>
            function myFunction(){
                var x1 = document.getElementById('upload').value;
                var x1_temp = x1.match(/[^\/\\]+$/)
                document.getElementById('image').value = x1_temp;
            } 
        </script>    
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
                                            <!--signupForm-->
                                            <form class="cmxform form-horizontal tasi-form" method="post" action="PostController" novalidate="novalidate">
                                                <div class="form-group ">
                                                    <label for="firstname" class="control-label col-lg-2">Post ID *</label>
                                                    <div class="col-lg-10">
                                                        <input class=" form-control" id="username" name="postid" type="text" value="${post_edit.getPostID()}" readonly required="">
                                                    </div>
                                                </div>
                                                <div class="form-group ">
                                                    <label for="fullname" class="control-label col-lg-2">Title *</label>
                                                    <div class="col-lg-10">
                                                        <input class=" form-control" id="fullname" name="title" type="text" value="${post_edit.getTitle()}" required="" >
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="control-label col-lg-2">Category ID</label>
                                                    <div class="col-lg-3">
                                                        <select name="category" class="select2" data-placeholder="Choose a Country...">
                                                            <option value="10">&nbsp;</option>
                                                            <c:forEach var="p" items="${category}">
                                                                <c:choose>
                                                                    <c:when test="${ post_edit.getCategoryID().getCategoryID() == p.getCategoryID()}">
                                                                        <option name="" value="${p.getCategoryID()}" selected="">${p.getName()}</option>
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        <option name="" value="${p.getCategoryID()}">${p.getName()}</option>
                                                                    </c:otherwise>
                                                                </c:choose>
                                                            
                                                            </c:forEach>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="form-group ">
                                                    <label for="confirm_password" class="control-label col-lg-2">Create Date</label>
                                                    <div class="col-lg-10">
                                                        <div class="input-group">
                                                            <input class="form-control" placeholder="yyyy-mm-dd" id="datepicker" type="text" name="createdate" value="${post_edit.getCreateDate()}">
                                                            <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                                        </div><!-- input-group -->
                                                    </div>
                                                </div>
                                                <div class="form-group ">
                                                    <label for="email" class="control-label col-lg-2">Image Thumbnail *</label>
                                                    <div class="col-lg-10">
                                                        <!--<input class="form-control " id="email" name="image" type="text" value="" required="">-->
                                                        <div class="fileUpload btn btn-primary waves-effect waves-light">
                                                            <span>Upload</span>
                                                            <input class="upload" name ="upload" type="file" id="upload" onchange="myFunction()" >
                                                        </div>
                                                        <br></br>
                                                        <input class="form-control col-lg-10" id="image" name="image" type="text" value="${post_edit.getImage()}" placeholder="url your image">
                                                        <!--<input type="file" accept="image/*" id="example-input1-group2" name="image" class="form-control" placeholder="Search" value="${post_edit.getImage()}">-->
                                                    </div>
                                                </div>
                                                 <div class="form-group ">
                                                    <label for="email" class="control-label col-lg-2">Rate *</label>
                                                    <div class="col-lg-10">
                                                        <input class="form-control " id="email" name="rate" type="text" value="${post_edit.getRate()}">
                                                    </div>
                                                </div>                                          
                                                <div class="form-group ">
                                                    <label for="agree" class="control-label col-lg-2 col-sm-3">Author</label>
                                                    <div class="col-lg-10">
                                                        <input class=" form-control" id="phone" name="author" type="text" value="${post_edit.getAuthor()}">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-lg-offset-2 col-lg-10">
                                                        <button class="btn btn-success btn-custom waves-effect waves-light m-b-5" 
                                                                type="submit" name="act" value="Update"/>Update</button>
                                                        <a href="MemberView" class="btn btn-custom btn-inverse waves-effect waves-light m-b-5">Cancel</a>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                <div class="col-sm-12">
                                                    <div class="panel panel-default">
                                                        <div class="panel-heading"><h3 class="panel-title">Content of post</h3></div>
                                                        <div class="panel-body"> 
                                                            <!--<div class="summernote">Hello Summernote</div>--> 
                                                            <textarea class="summernote" name="note" id="summernote">${post_edit.getContent()}</textarea>
                                                            <!--<input class="summernote" id="email" name="summernote" type="text" value="">-->
                                                        </div>
                                                    </div>
                                                    <%--<c:out value="Quylk" escapeXml="true" ></c:out>--%>
                                                </div>
                                            </div> <!-- End row -->
                                            </form>
                                        </div> <!-- .form -->
                                    </div> <!-- panel-body -->
                                </div> <!-- panel -->
                            </div>
                        </div>
                       
                        <div class="row"> 
                            <div class="col-sm-6">
                                <div class="panel panel-default">
                                    <div class="panel-heading"><h3 class="panel-title">Datepicker</h3></div>
                                    <div class="panel-body">
                                        <br>
                                        <label>Default Functionality</label>
                                        <div class="input-group">
                                            <input class="form-control" placeholder="mm/dd/yyyy" id="datepicker" type="text">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                        </div><!-- input-group -->
                                        <br>
                                        <p>Set the <code>numberOfMonths</code> option to an integer of 2 or more to show multiple months in a single datepicker.</p>
                                        <br>
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
        
        <script type="text/javascript" src="assets/bootstrap-wysihtml5/wysihtml5-0.3.0.js"></script>
        <script type="text/javascript" src="assets/bootstrap-wysihtml5/bootstrap-wysihtml5.js"></script>

        <!--form validation init-->
        <script src="assets/summernote/summernote.min.js"></script>
        <script src="assets/tagsinput/jquery.tagsinput.min.js"></script>
        <script src="assets/toggles/toggles.min.js"></script>
        <script src="assets/timepicker/bootstrap-timepicker.min.js"></script>
        <script src="assets/timepicker/bootstrap-datepicker.js"></script>
        <script type="text/javascript" src="assets/colorpicker/bootstrap-colorpicker.js"></script>
        <script type="text/javascript" src="assets/jquery-multi-select/jquery.multi-select.js"></script>
        <script type="text/javascript" src="assets/jquery-multi-select/jquery.quicksearch.js"></script>
        <script src="assets/bootstrap-inputmask/bootstrap-inputmask.min.js" type="text/javascript"></script>
        <script type="text/javascript" src="assets/spinner/spinner.min.js"></script>
        <script src="assets/select2/select2.min.js" type="text/javascript"></script>
        <script src="assets/notifications/notify.min.js"></script>
        <script src="assets/notifications/notify-metro.js"></script>
        <script src="assets/notifications/notifications.js"></script>

        <script>          
            jQuery(document).ready(function(){
                $('.wysihtml5').wysihtml5();
                $('.summernote').summernote({
                    height: 200,                 // set editor height

                    minHeight: null,             // set minimum height of editor
                    maxHeight: null,             // set maximum height of editor

                    focus: false                // set focus to editable area after initializing summernote
                });


                // Tags Input
                jQuery('#tags').tagsInput({width:'auto'});

                // Form Toggles
                jQuery('.toggle').toggles({on: true});
                // Time Picker
                jQuery('#timepicker').timepicker({defaultTIme: false});
                jQuery('#timepicker2').timepicker({showMeridian: false});
                jQuery('#timepicker3').timepicker({minuteStep: 15});

                // Date Picker
                jQuery('#datepicker').datepicker();
                jQuery('#datepicker-inline').datepicker();
                jQuery('#datepicker-multiple').datepicker({
                    numberOfMonths: 3,
                    showButtonPanel: true
                });
                //colorpicker start

                $('.colorpicker-default').colorpicker({
                    format: 'hex'
                });
                $('.colorpicker-rgba').colorpicker();

                //spinner start
                $('#spinner1').spinner();
                $('#spinner2').spinner({disabled: true});
                $('#spinner3').spinner({value:0, min: 0, max: 10});
                $('#spinner4').spinner({value:0, step: 5, min: 0, max: 200});
                //spinner end

                // Select2
                jQuery(".select2").select2({
                    width: '100%'
                });

            });
        </script>
	</body>
</html>