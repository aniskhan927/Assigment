
<%@ Page Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true"
    CodeFile="AppointmentList.aspx.cs" EnableEventValidation="false" Inherits="Masters_AppointmentList" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="wrap">
        <div id="content">
            <div class="inner" style="background-color: LemonChiffon;">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="box">
                            <header>
                            <div class="icons"><i class="icon-th-large"></i></div>
                            <h5 style="font-size:medium;">Appointment List</h5>
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
                                        <div class="container">
                                            
                                            <asp:GridView ID="Grd_list" EmptyDataText="There are no data records to display."
                                                runat="server" AutoGenerateColumns="False" CellPadding="4" Width="100%" FreezeColumns="2"
                                                BorderColor="#086A87" BorderWidth="1px" ShowFooter="True" ForeColor="Black" BackColor="White"
                                                BorderStyle="None" CssClass="grd_marksheet" AllowSorting="True" AllowPaging="true"
                                                PageSize="10" >
                                                <RowStyle BackColor="#FFFFFF" />
                                                <Columns>
                                                    <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id"  Visible="false"/>
                                                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" >
                                                    <ItemStyle Width="200px" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                                                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                                                    <asp:BoundField DataField="AppointmentDate" HeaderText="Appointment Date" SortExpression="AppointmentDate"
                                                        DataFormatString="{0:dd/MM/yyyy}">
                                                        <ItemStyle Width="100px" />
                                                    </asp:BoundField>
                                                    
                                                    <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                                                        <HeaderTemplate>
                                                        </HeaderTemplate>
                                                        <ItemTemplate>
                                                            <asp:LinkButton ID="View" runat="server" Text="Send Mail" OnClick="View" /><%--onclick="checkAll(this)";--%>
                                                        </ItemTemplate>
                                                        <HeaderStyle HorizontalAlign="Center" />
                                                        <ItemStyle HorizontalAlign="Center" Width="100px"></ItemStyle>
                                                    </asp:TemplateField>
                                                </Columns>
                                                <FooterStyle BackColor="#086A87" />
                                                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Center" />
                                                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                                <HeaderStyle BackColor="#086A87" Font-Bold="True" ForeColor="White" />
                                                <AlternatingRowStyle BackColor="#F7DC6F" />
                                            </asp:GridView>
                                        </div>
                                    </div>
                                </div>
                            </center>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
