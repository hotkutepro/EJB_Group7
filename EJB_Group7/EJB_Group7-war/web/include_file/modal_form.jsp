<%-- 
    Document   : modal_form
    Created on : May 20, 2016, 11:33:30 PM
    Author     : Quy.heo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <div class="content-wrap">
			<div class="container clearfix">
				<div class="modal1 mfp-hide" id="modal-login-form">
					<div class="block divcenter col-padding" style="background-color: #FFF; max-width: 400px;">
						<h4 class="uppercase ls1">Login to your Account</h4>
						<form action="#" class="nobottommargin clearfix" style="max-width: 300px;">
							<div class="col_full">
								<label for="" class="capitalize t600">Username or Email:</label>
								<input type="email" id="template-op-form-email" name="template-op-form-email" value="" class="sm-form-control" />
							</div>
							<div class="col_full">
								<label for="" class="capitalize t600">Password:</label>
								<input type="password" id="template-op-form-password" name="template-op-form-password" value="" class="sm-form-control" />
							</div>
							<div class="col_full nobottommargin">
								<div class="row">
									<div class="col-xs-6">
										<button type="submit" class="button button-rounded button-small button-dark nomargin" value="submit">Login</button>
									</div>
									<div class="col-xs-6">
										<p class="nobottommargin tright"><small class="t300"><em><a href="login.jsp">Forgot Password?</a></em></small></p>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
    </body>
</html>
