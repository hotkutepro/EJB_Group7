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

        <link rel="stylesheet" href="assets/magnific-popup/magnific-popup.css" />
        <link rel="stylesheet" href="assets/jquery-datatables-editable/datatables.css" />
        <script src="js/modernizr.min.js"></script>
        <title>Management Members | Page</title>
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
                                <h4 class="pull-left page-title">Editable Table</h4>
                                <ol class="breadcrumb pull-right">
                                    <li><a href="#">Group7.UIT</a></li>
                                    <li><a href="#">Tables</a></li>
                                    <li class="active">Editable Table</li>
                                </ol>
                            </div>
                        </div>


                        <div class="panel">
                            
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="m-b-30">
                                            <button onclick="location.href = 'PostController?act=add';" class="btn btn-success waves-effect waves-light">Add <i class="fa fa-plus"></i></button>
                                        </div>
                                    </div>
                                </div>
                                <table class="table table-bordered table-striped" id="datatable-editable">
                                    <thead>
                                        <tr>
                                            <th style="width: 80px;">Post ID</th>
                                            <th>Title</th>
                                            <th>Date Create(s)</th>
                                            <th>Category ID(s)</th>
                                            <th style="width: 80px;">Author(s)</th>
                                            <th style="width: 65px;">Tools</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="p" items="${posts}">
                                        <tr class="gradeX">
                                            <td>${p.getPostID()}</td>
                                            <td>${p.getTitle()}</td>
                                            <td>${p.getCreateDate()}</td>
                                            <td>${p.getCategoryID().getName()}</td>
                                            <td>${p.getAuthor()}</td>
                                            <td class="actions">
                                                <a href="PostController?act=edit&postid=${p.getPostID()}" class="btn btn-icon waves-effect waves-light btn-custom btn-primary m-b-5"> <i class="fa fa-eye-slash "></i></a>
                                                <a href="PostController?act=del&postid=${p.getPostID()}" class="btn btn-icon waves-effect waves-light btn-custom btn-danger m-b-5"> <i class="fa fa-remove "></i></a>
                                            </td>
                                        </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                            <!-- end: page -->

                        </div> <!-- end Panel -->

                    </div> <!-- container -->
                               
                </div> <!-- content -->

                <footer class="footer text-right">
                    2015 Â© Quylk.
                </footer>

            </div>
            <!-- ============================================================== -->
            <!-- End Right content here -->
            <!-- ============================================================== -->


            <!-- Right Sidebar -->
            <jsp:include page="page/right-sidebar.jsp"/>
            <!-- /Right-bar -->

            <!-- MODAL -->
            <div id="dialog" class="modal-block mfp-hide">
                <section class="panel panel-info panel-color">
                    <header class="panel-heading">
                        <h2 class="panel-title">Are you sure?</h2>
                    </header>
                    <div class="panel-body">
                        <div class="modal-wrapper">
                            <div class="modal-text">
                                <p>Are you sure that you want to delete this row?</p>
                            </div>
                        </div>

                        <div class="row m-t-20">
                            <div class="col-md-12 text-right">
                                <button id="dialogConfirm" class="btn btn-primary">Confirm</button>
                                <button id="dialogCancel" class="btn btn-default">Cancel</button>
                            </div>
                        </div>
                    </div>
                    
                </section>
            </div>

        </div>
        <!-- END wrapper -->
    
        <script>
            var resizefunc = [];
        </script>

        <!-- jQuery  -->
        <jsp:include page="page/jquery.jsp"/>

    <!-- Examples -->
    <script src="assets/magnific-popup/magnific-popup.js"></script>
    <script src="assets/jquery-datatables-editable/jquery.dataTables.js"></script> 
    <script src="assets/datatables/dataTables.bootstrap.js"></script>
    <script src="assets/jquery-datatables-editable/datatables.editable.init.js"></script>
	
	</body>
</html>