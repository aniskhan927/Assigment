<%@ Page Language="C#" AutoEventWireup="true" CodeFile="frmLogin.aspx.cs" Inherits="frmLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
<!--<![endif]-->
<head>
    <link rel="icon" type="image/png" href="Images/insurancelogo.png" />
    <meta charset="UTF-8" />
    <title>Policy</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="" name="description" />
    <meta content="" name="author" />
    <!--[if IE]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <![endif]-->
    <!-- GLOBAL STYLES -->
    <!-- PAGE LEVEL STYLES -->
    <link id="Link1" runat="server" rel="shortcut icon" href="~/assets/img/logos.png"
        type="image/x-icon" />
    <link id="Link2" runat="server" rel="icon" href="~/assets/img/logos.png" type="image/ico" />
    <link href="assets/plugins/magic/magic.css" rel="stylesheet" type="text/css" />
    <link href="assets/plugins/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/login.css" rel="stylesheet" type="text/css" />
    <!-- END PAGE LEVEL STYLES -->
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    <link href="../../Styles/RouteAllotment.css" rel="stylesheet" type="text/css" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="" name="description" />
    <meta content="" name="author" />
    <!--[if IE]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <![endif]-->
    <!-- GLOBAL STYLES -->
    <link href="../../assets/plugins/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="../../assets/css/main.css" rel="stylesheet" type="text/css" />
    <link href="../../assets/css/theme.css" rel="stylesheet" type="text/css" />
    <link href="../../assets/css/MoneAdmin.css" rel="stylesheet" type="text/css" />
    <link href="../../assets/plugins/Font-Awesome/css/font-awesome.css" rel="stylesheet"
        type="text/css" />
    <!--END GLOBAL STYLES -->
    <!-- PAGE LEVEL STYLES -->
    <link href="../../assets/plugins/flot/examples/examples.css" rel="stylesheet" type="text/css" />
    <link href="../../assets/plugins/timeline/timeline.css" rel="stylesheet" type="text/css" />
    <!-- END PAGE LEVEL  STYLES -->
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>
<body class="padTop53">
    <!-- PAGE CONTENT -->
    <!-- GLOBAL SCRIPTS -->
    <div id="top">
        <%--<marquee><h1 class="danger" style="background-color:Yellow">Site Will close Within 5 min Save your work.....</h1></marquee>
<marquee><h2 class="danger" style="background-color:Yellow">Server Room Contact No:-8888531267,7887743125(Pravin Deshmukh,Nikhil Kadam)</h2></marquee>
<marquee><h2 class="danger" style="background-color:Yellow">Your Login will Close for updation after 2Pm So Please Send your Following Details ASAP.</h2></marquee>
<center><h4 ><h2>Send Your <u>( Current and New  UserName  And Password</u>)<sup style="color:Red;">*</sup> On mail Id (serverroom07@gmail.com)</h2> <br /> with personal details To Activate Login<br /> FullName ,<br /> UserRole (Login Type),<br />E-Mail Id,<br />Contact Number,<br />Gender,<br />School Name,<br />Section Name,<br />Hostel,<br />Mess,<br />Opd Name.
</h4></center>--%>

        <script src="../../assets/plugins/jquery-2.0.3.min.js" type="text/javascript"></script>

        <script src="../../assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

        <script src="../../assets/plugins/modernizr-2.6.2-respond-1.1.0.min.js" type="text/javascript"></script>

        <!-- END GLOBAL SCRIPTS -->
        <!-- PAGE LEVEL SCRIPTS -->

        <script src="../../assets/plugins/flot/jquery.flot.js" type="text/javascript"></script>

        <script src="../../assets/plugins/flot/jquery.flot.resize.js" type="text/javascript"></script>

        <script src="../../assets/plugins/flot/jquery.flot.time.js" type="text/javascript"></script>

        <script src="../../assets/plugins/flot/jquery.flot.stack.js" type="text/javascript"></script>

        <script src="../../assets/js/for_index.js" type="text/javascript"></script>

        <link href="Styles/Animate.css" rel="stylesheet" type="text/css" />
        <!-- END PAGE LEVEL SCRIPTS -->
        <form id="Form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">
        </asp:ScriptManagerProxy>
        <asp:UpdatePanel ID="ddd" UpdateMode="Conditional" runat="server">
            <ContentTemplate>
                <center>
                    <%--<h2 class="animated infinite lightSpeedIn " style=" margin-top:-100px ">!! Happy Republic Day!!</h2>
    <div style="margin-top:2px  ">
        
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Republic-Day-Animation.gif"   Height="200px" Width="400px" />
    
    </div>--%>
                    <div class="card">
                        <div class="card-body">
                            <div style="margin-top: -1px">
                                <img src="Images/user.png" height="250px" width="200px" /><br>
                            </div>
                </center>
                <div style="text-align: center; max-height: 90px; width: 350px; margin: 0 auto; margin-top: 100px;">
                    <div style="margin: 0 auto; margin-top: -100px;">
                        <asp:Table ID="Table1" runat="server" BorderColor="Silver">
                            <asp:TableRow ID="TableRow7" runat="server">
                                <asp:TableCell ID="TableCell19" runat="server">
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow ID="TableRow5" runat="server">
                                <asp:TableCell ID="TableCell18" runat="server">
                              <br> 
                          <%--<div class="text-muted text-center btn-block btn btn-primary btn-rect"  style="max-height:100px; font-size:x-large;" >            
                User Login
                
                          
                          </div>--%>   <br />     
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow ID="TableRow3" runat="server">
                                <asp:TableCell ID="TableCell5" runat="server">
                                    <div class="form-group  ">
                                        <div class="col-lg-12">
                                            <asp:TextBox ID="txtUserName" CssClass=" form-control" Style="background-color: White"
                                                Font-Names="BLACKCAPS-Regular" Font-Size="Large" runat="server" Font-Bold="true"
                                                placeholder="USERNAME" Height="40px" Width="335px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtUserName"
                                                ErrorMessage="Please Enter UserName" ValidationGroup="vgLogin" Display="None"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                </asp:TableCell>
                                <asp:TableCell ID="TableCell6" runat="server"> </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow ID="TableRow4" runat="server">
                                <asp:TableCell ID="TableCell7" runat="server">
                                    <div class="form-group  ">
                                        <div class="col-lg-12">
                                            <asp:TextBox ID="txtPassword" Style="background-color: White;" CssClass=" form-control"
                                                Font-Names="BLACKCAPS-Regular" Font-Size="Large" Font-Bold="true" TextMode="Password"
                                                runat="server" placeholder="PASSWORD" Height="40px" Width="335px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPassword"
                                                ErrorMessage="Please Enter Password" ValidationGroup="vgLogin" Display="None"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                </asp:TableCell>
                                <asp:TableCell ID="TableCell8" runat="server"></asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow ID="TableRow6" HorizontalAlign="Center" runat="server">
                                <asp:TableCell ID="TableCell17" runat="server">
                                    <div class="form-group">
                                        <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-success btn-block btn-lg"
                                            Text="Login" OnClick="btnLogin_Click" ValidationGroup="vgLogin" />
                                    </div>
                                    <br />
                                    <asp:ValidationSummary ID="vs" runat="server" ShowMessageBox="true" ShowSummary="false"
                                        ValidationGroup="vgLogin" />
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                        <div style="margin-top: -1px">
                            <br>
                            <img src="assets/img/Step Logo.png" height="55px" width="200px" />
                        </div>
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
        <br />
        <br />
        <br />
        <%--  <br />
    <br />
    <br />
    <br />
    <br />
   <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />--%>
        <div>
            <h2 style="color: Blue; cursor: help; font-style: italic;">
            </h2>
        </div>
        </form>
        <!--END PAGE CONTENT -->
        <!-- PAGE LEVEL SCRIPTS -->

        <script src="../..assets/plugins/jquery-2.0.3.min.js" type="text/javascript"></script>

        <script src="../..assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

        <script src="../..assets/js/login.js" type="text/javascript"></script>

        <!--END PAGE LEVEL SCRIPTS -->
</body>
</html>
