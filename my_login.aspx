<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="my_login.aspx.cs" Inherits="sample_internal.my_login" %>

<!DOCTYPE html>

<script runat="server">

  
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">


    <link href="assets/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/style.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/style-responsive.css" rel="stylesheet" type="text/css" />


    <title>Internal Grade Card Generation</title>
</head>
<body>
    
     <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->

	  <div id="login-page">
	  	<div class="container">
	  	
		      <form class="form-login"  runat="server">
		        <h2 class="form-login-heading">Login form</h2>
		        <div class="login-wrap">
		            
                    <asp:TextBox ID="txt_username" runat="server" class="form-control" placeholder="User Name" autofocus></asp:TextBox>
		            <br>
		            <asp:TextBox ID="txt_pwd" runat="server" class="form-control" 
                        placeholder="Password" autofocus TextMode="Password"></asp:TextBox>

		            <label class="checkbox">
		                <span class="pull-right">
		                    <!--<a data-toggle="modal" href="login.html#myModal"> Forgot Password?</a>-->
		
		                </span>
		            </label>
		            <asp:Button ID="btn_login1" class="btn btn-theme btn-block" runat="server" 
                        Text="SIGN IN" onclick="btn_login1_Click"  />
		            <hr>
		            
		            <div class="login-social-link centered">
		            <p><!--or you can sign in via your social network--></p>
		               <!-- <button class="btn btn-facebook" type="submit"><i class="fa fa-facebook"></i> Facebook</button>
		                <button class="btn btn-twitter" type="submit"><i class="fa fa-twitter"></i> Twitter</button>-->
		            </div>
		            <div class="registration">
		               <!-- Don't have an account yet?<br/>
		                <a class="" href="#">
		                    Create an account
		                </a>-->
		            </div>
		
		        </div>
		
		          <!-- Modal -->
		          <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
		              <div class="modal-dialog">
		                  <div class="modal-content">
		                      <div class="modal-header">
		                          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		                          <h4 class="modal-title">Forgot Password ?</h4>
		                      </div>
		                      <div class="modal-body">
		                          <p>Enter your e-mail address below to reset your password.</p>
		                          <input type="text" name="email" placeholder="Email" autocomplete="off" class="form-control placeholder-no-fix">
		
		                      </div>
		                      <div class="modal-footer">
		                          <button data-dismiss="modal" class="btn btn-default" type="button">Cancel</button>
		                          <button class="btn btn-theme" type="button">Submit</button>
		                      </div>
		                  </div>
		              </div>
		          </div>
		          <!-- modal -->
		
		      </form>	  	
	  	
	  	</div>
	  </div>

    <!-- js placed at the end of the document so the pages load faster -->
 
    <script src="assets/js/jquery.js" type="text/javascript"></script>
    <script src="assets/js/bootstrap.min.js" type="text/javascript"></script>


    <!--BACKSTRETCH-->
    <!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
    <script src="assets/js/jquery.backstretch.min.js" type="text/javascript"></script>
    <script>
        $.backstretch("assets/img/login-bg1.jpg", { speed: 500 });
        function btn_login_onclick() {

        }

    </script>


</body>
</html>