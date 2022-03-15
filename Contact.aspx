<%@ Page Title="" Language="C#" MasterPageFile="~/Marster.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="TMS_Project.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function SuccessContact()
        {
            Swal.fire(
  'Success!',
  'Form Has Been Submitted Successfully!',
  'success'
)
        }
        function ErrorContact() {
            Swal.fire(
  'Failure!',
  'Form insertion Failed!',
  'error'
)
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <!-- ======= Contact Section ======= -->
    <section class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Contact</h2>
          <ol>
            <li><a href="index.html">Home</a></li>
            <li>Contact</li>
          </ol>
        </div>

      </div>
    </section><!-- End Contact Section -->

    <!-- ======= Contact Section ======= -->
    <section class="contact" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500">
      <div class="container">

        <div class="row">

          <div class="col-lg-6">

            <div class="row">
              <div class="col-md-12">
                <div class="info-box">
                  <i class="bx bx-map"></i>
                  <h3>Our Address</h3>
                  <p>A108 Adam Street, New York, NY 535022</p>
                </div>
              </div>
              <div class="col-md-6">
                <div class="info-box">
                  <i class="bx bx-envelope"></i>
                  <h3>Email Us</h3>
                  <p>info@example.com<br/>contact@example.com</p>
                </div>
              </div>
              <div class="col-md-6">
                <div class="info-box">
                  <i class="bx bx-phone-call"></i>
                  <h3>Call Us</h3>
                  <p>+1 5589 55488 55<br/>+1 6678 254445 41</p>
                </div>
              </div>
            </div>

          </div>

          <div class="col-lg-6">
            <%--<form action="forms/contact.php" method="post" role="form" class="php-email-form">--%>
              <div class="form-row">
                <div class="col-md-6 form-group">
                    <asp:TextBox ID="NameTextBox" runat="server" class="form-control" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Your Name" ControlToValidate="NameTextBox" SetFocusOnError="True" Font-Bold="True" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
                  
                </div>
                <div class="col-md-6 form-group">
                      <asp:TextBox ID="EmailTextBox" runat="server" class="form-control"  placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email"  ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter E-Mail" ControlToValidate="EmailTextBox" Display="Dynamic" SetFocusOnError="True" Font-Bold="True" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please Valid Email" ControlToValidate="EmailTextBox" Font-Bold="True" Font-Italic="True" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </div>
              </div>
              <div class="form-group">
                  <asp:DropDownList ID="SUbjectDropDownList1" class="form-control" runat="server">

                      <asp:ListItem>Select</asp:ListItem>
                      <asp:ListItem>Suggestion</asp:ListItem>
                      <asp:ListItem>Feedback</asp:ListItem>
                      <asp:ListItem>Complain</asp:ListItem>
                  </asp:DropDownList>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Select Item" InitialValue="Select" ControlToValidate="SubjectDropDownList1" SetFocusOnError="True" Font-Bold="True" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
                  
              </div>
              <div class="form-group">
                  <asp:TextBox ID="MessageTextBox" runat="server" class="form-control" TextMode="MultiLine" Columns="65" Rows="7" placeholder="Message"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter Message" ControlToValidate="MessageTextBox" Font-Bold="True" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
              </div>
              
                <div class="text-center">
                <asp:Button ID="SubmitButton"  CssClass="btn btn-info" runat="server" Text="Send Message" OnClick="SubmitButton_Click" />
                    </div>
  
            <%--</form>--%>
          </div>

        </div>

      </div>
    </section><!-- End Contact Section -->

    <!-- ======= Map Section ======= -->
    <section class="map mt-2">
      <div class="container-fluid p-0">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3024.2219901290355!2d-74.00369368400567!3d40.71312937933185!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c25a23e28c1191%3A0x49f75d3281df052a!2s150%20Park%20Row%2C%20New%20York%2C%20NY%2010007%2C%20USA!5e0!3m2!1sen!2sbg!4v1579767901424!5m2!1sen!2sbg" style="border:0;" ></iframe>
      </div>
    </section><!-- End Map Section -->



</asp:Content>
