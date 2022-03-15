<%@ Page Title="" Language="C#" MasterPageFile="~/Marster.Master" AutoEventWireup="true" CodeBehind="Student_Signup.aspx.cs" Inherits="TMS_Project.Student_Signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Admin/Admin_style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <!-- ======= About Us Section ======= -->
    <section class="breadcrumbs bg-danger text-white">
      <div class="container">

        <div class="d-flex justify-content-between  align-items-center">
          <h2>SignUp</h2>
          <ol>
            <li><a href="Default.aspx" class="text-dark">Home</a></li>
            <li>SignUp</li>
          </ol>
        </div>

      </div>
    </section><!-- End About Us Section -->
    <div class="container" id="shadow">
        <br />
        <div class="row">
            <div class="col-md-12" >
            <h1 class="text-light jumbotron bg-primary text-center ">Student SignUp</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <asp:TextBox ID="NameTxtBox" CssClass="form-control" placeholder="Student Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Your Name" ControlToValidate="NameTxtBox" ForeColor="Red" Display="Dynamic" ></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="FNameTxtBox" CssClass="form-control" placeholder="Father Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Your Father Name" ControlToValidate="FNameTxtBox" ForeColor="Red" Display="Dynamic" ></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="SurNameTxtBox" CssClass="form-control" placeholder="Surname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Your Surname" ControlToValidate="SurNameTxtBox" ForeColor="Red" Display="Dynamic" ></asp:RequiredFieldValidator>
                <br />
                <asp:DropDownList ID="GenderDDL" runat="server" CssClass="form-control">
                    <asp:ListItem>Select Gender</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator InitialValue="Select Gender" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Gender Is Required" ControlToValidate="NameTxtBox" ForeColor="Red" Display="Dynamic" ></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="AgeTxtBox" CssClass="form-control" placeholder="Enter Your Age" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Age Is Required" ControlToValidate="AgeTxtBox" ForeColor="Red" Display="Dynamic" ></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="CountryTxtBox" CssClass="form-control" placeholder="Your Country Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator  ID="RequiredFieldValidator6" runat="server" ErrorMessage="Country Is Required" ControlToValidate="CountryTxtBox" ForeColor="Red" Display="Dynamic" ></asp:RequiredFieldValidator>
                <br />
            </div>
        
            <div class="col-md-4">
                <asp:TextBox ID="CityTxtBox" CssClass="form-control" placeholder="City" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator  ID="RequiredFieldValidator7" runat="server" ErrorMessage="City Is Required" ControlToValidate="CityTxtBox" ForeColor="Red" Display="Dynamic" ></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="AddressTxtBox" CssClass="form-control" placeholder="Enter Your Address" TextMode="MultiLine" Rows="4" Columns="20" runat="server"></asp:TextBox><br />
                <asp:TextBox ID="StandardTxtBox" CssClass="form-control" placeholder="Enter Your Class" runat="server"></asp:TextBox><br />
                <asp:DropDownList ID="GoingToDDL" runat="server" CssClass="form-control">
                    <asp:ListItem>Select Going To</asp:ListItem>
                    <asp:ListItem>School</asp:ListItem>
                    <asp:ListItem>College</asp:ListItem>
                    <asp:ListItem>Univeristy</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList><br />
                <asp:TextBox ID="SubjectTxtBox" CssClass="form-control" placeholder="Enter Your Subject" runat="server"></asp:TextBox><br />
            </div>
            <div class=" col-md-4">
                 <asp:TextBox ID="ContactTxtBox" CssClass="form-control" placeholder="Enter Your Contact Number" runat="server"></asp:TextBox><br />
               <asp:DropDownList ID="TuitionDDL" runat="server" CssClass="form-control">
                    <asp:ListItem>Select Tution Type</asp:ListItem>
                    <asp:ListItem>Online</asp:ListItem>
                    <asp:ListItem>Physical</asp:ListItem>
                </asp:DropDownList><br />
                  <asp:DropDownList ID="TutorPreferredDDL" runat="server" CssClass="form-control">
                    <asp:ListItem>Select Tutor Preferred</asp:ListItem>
                    <asp:ListItem>Graduation</asp:ListItem>
                      <asp:ListItem>Masters</asp:ListItem>
                      <asp:ListItem>PHD</asp:ListItem>
                </asp:DropDownList><br />
                <asp:TextBox ID="UserNameTxtBox" CssClass="form-control" placeholder="Enter UserName" runat="server"></asp:TextBox><br />
                <asp:TextBox ID="PasswordTxtBox" CssClass="form-control" placeholder="Enter Your Password" runat="server"></asp:TextBox><br />
                <asp:TextBox ID="CPassword" CssClass="form-control" placeholder="Enter Your Conform Password" runat="server"></asp:TextBox><br />
            </div>
        </div>
     
           <div class="row">
                <div class="col-md-6 mx-auto"  >
                    <asp:Button ID="StudentSubmitBtn" CssClass="btn btn-primary btn-block"  runat="server" Text="SignUp" />
                </div>
            </div>
        <br />
    </div>
    <br />
</asp:Content>
