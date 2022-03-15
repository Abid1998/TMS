<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_login.aspx.cs" Inherits="TMS_Project.Admin.Admin_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    <link href="~/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Admin_style.css" rel="stylesheet" />
    <link href="~/dist/sweetalert2.min.css" rel="stylesheet" />
    <script src="../dist/sweetalert2.min.js"></script>
  
</head>
<body>
    <form id="form1" runat="server">
        
    <div class="container">
        <div class="row">
            <div class="col-md-4 mx-auto" id="shadow">
                <div class="jumbotron text-center text-white bg-primary">
                    <h2>Admin Login</h2>
                </div>
                <asp:TextBox ID="UserNameTxt" placeholder="Enter User Name" CssClass="form-control" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter User Name" ForeColor="Red" ControlToValidate="UserNameTxt" Display="Dynamic"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="PasswordTxt" CssClass="form-control" TextMode="Password" placeholder="Enter User Password" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Password" ForeColor="Red" ControlToValidate="PasswordTxt" Display="Dynamic"></asp:RequiredFieldValidator>
               
                <br />
                <asp:Button ID="LoginBtn" OnClick="LoginBtn_Click" runat="server" Text="Login" CssClass="btn btn-primary btn-block" /><br />
            </div>

        </div>
    
    </div>
    </form>
    <script src="../assets/vendor/jquery/jquery.min.js"></script>
    <script src="../assets/vendor/bootstrap/js\bootstrap.min.js"></script>
</body>
</html>
