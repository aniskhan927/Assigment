
<%@ Page Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true"
    CodeFile="Appointment.aspx.cs" EnableEventValidation="false" Inherits="Masters_Appointment" Title="Untitled Page" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

<div id="wrap">
    <div id="content">
        <div class="inner">
            <div class="row">
                <div class="col-lg-12">
                    <div class="box">
                        <header>
                            <div class="icons"><i class="icon-th-large"></i></div>
                            <h5 style="font-size:medium;">APPOINTMENT INFORMATION</h5>
                            <div class="toolbar">
                                        <ul class="nav">
                                            <li>
                                                <div class="btn-group">
                                                    <a class="accordion-toggle btn btn-xs minimize-box" data-toggle="collapse"
                                                        href="#collapseTwo">
                                                        <i class="icon-chevron-up"></i>
                                                    </a>
                                                    <button class="btn btn-xs btn-danger close-box">
                                                        <i class="icon-remove"></i>
                                                    </button>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                            </header>
                        <center>
                            <div id="collapseTwo" class="accordion-body collapse in body">
                                <div id="Div1" class="collapse in body">
                                    <div class="container" style="background-color: LemonChiffon;">

                                        <div class="row">
                                            <div class="col-md-2 text-right">
                                                <label id="label15" style="font-size: medium;">
                                                    Name
                                                </label>
                                            </div>
                                            <div class="col-md-4 form-group input-group text-left">
                                                <span class="input-group-addon"><i class=" icon-1x icon-pencil"></i></span>
                                                <asp:TextBox ID="txtName" placeholder="Enter Name" CssClass="form-control"
                                                    Height="40px" Style="background-color: white;" runat="server"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtName"
                                                    ErrorMessage="Please Enter Customer Name" ValidationGroup="vgSaveUpdate" Display="None"></asp:RequiredFieldValidator>
                                            </div>
                                            <div class="col-md-2 text-right">
                                                <label id="label4" style="font-size: medium;">
                                                    Age
                                                </label>
                                            </div>
                                            <div class="col-md-4 form-group input-group text-left">
                                                <span class="input-group-addon"><i class=" icon-1x icon-pencil"></i></span>
                                                <asp:TextBox ID="txtAge" placeholder="Enter Age" Height="40" runat="server"
                                                    CssClass="form-control" Style="background-color: White;" MaxLength="3"></asp:TextBox>

                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-2 text-right">
                                                <label id="label17" style="font-size: medium;">
                                                    Address
                                                </label>
                                            </div>
                                            <div class="col-md-4 form-group input-group text-left">
                                                <span class="input-group-addon"><i class=" icon-1x icon-pencil"></i></span>
                                                <asp:TextBox ID="txtAddress" placeholder="Enter Address" CssClass="form-control"
                                                    Style="background-color: white;" runat="server" TextMode="MultiLine" Rows="3"></asp:TextBox>
                                            </div>
                                            <div class="col-md-2 text-right">
                                                <label id="label18" style="font-size: medium;">
                                                    Blood Group
                                                </label>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group input-group text-left">
                                                    <span class="input-group-addon"><i class=" icon-1x icon-pencil"></i></span>
                                                    <asp:DropDownList ID="ddlBloodGroup" runat="server" CssClass="form-control" Height="40px">
                                                        <asp:ListItem Selected="True">A+</asp:ListItem>
                                                        <asp:ListItem>A-</asp:ListItem>
                                                        <asp:ListItem>B+</asp:ListItem>
                                                        <asp:ListItem>B-</asp:ListItem>
                                                        <asp:ListItem>AB+</asp:ListItem>
                                                        <asp:ListItem>AB-</asp:ListItem>
                                                        <asp:ListItem>O+</asp:ListItem>
                                                        <asp:ListItem>O-</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-2 text-right">
                                                <label id="label1" style="font-size: medium;">
                                                    Mobile No
                                                </label>
                                            </div>
                                            <div class="col-md-4 form-group input-group text-left">
                                                <span class="input-group-addon"><i class=" icon-1x icon-pencil"></i></span>
                                                <asp:TextBox ID="txtMobile" placeholder="Enter Mobile No" Height="40" runat="server"
                                                    CssClass="form-control" Style="background-color: White;"></asp:TextBox>
                                            </div>
                                            <div class="col-md-2 text-right">
                                                <label id="label3" style="font-size: medium;">
                                                    Email No
                                                </label>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group input-group text-left">
                                                    <span class="input-group-addon"><i class=" icon-1x icon-pencil"></i></span>
                                                    <asp:TextBox ID="txtEmail" placeholder="Enter Email Id" Height="40" runat="server"
                                                        CssClass="form-control" Style="background-color: White;"></asp:TextBox>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail"
                                                        ForeColor="Red" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"
                                                        Display="Dynamic" ErrorMessage="Invalid email address" />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-2 text-right">
                                                <label id="label6" style="font-size: medium;">
                                                    Appointment Date 
                                                </label>
                                            </div>
                                            <div class="col-md-4 form-group input-group text-left">
                                                <span class="input-group-addon">
                                                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/Calendar.png" /></span>
                                                <asp:TextBox ID="txtAppointment" runat="server" CssClass="form-control" Height="40px" Style="background-color: white;"></asp:TextBox>
                                                <cc1:CalendarExtender ID="CalendarExtender4" runat="server" TargetControlID="txtAppointment"
                                                    PopupButtonID="ImageButton1" Format="dd/MM/yyyy">
                                                </cc1:CalendarExtender>
                                            </div>
                                            <div class="col-md-2 text-right">
                                                <label id="label7" style="font-size: medium;">
                                                   Upload Report
                                                </label>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group input-group text-left">
                                                   <span class="input-group-addon"><i class=" icon-1x icon-hospital"></i></span>
                                                        <asp:FileUpload ID="uploadReport" runat="server" CssClass="form-control" Height="40px" />
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                                <div class="row">
                                    <asp:Button ID="btnNew" CssClass="btn btn-primary btn-lg-2 " runat="server" Text="New"
                                        OnClick="btnNew_Click" />
                                    <asp:Button ID="btnSave" CssClass="btn btn-primary btn-lg-2 " runat="server" Text="Save"
                                        OnClick="btnSave_Click" /><%--ValidationGroup="vgSaveUpdate"--%>
                                </div>
                            </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
    </asp:Content>
