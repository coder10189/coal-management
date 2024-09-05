<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Shifts.aspx.cs" Inherits="cityies" EnableEventValidation="False" %>

<%@ Register Src="~/footerscript.ascx" TagPrefix="uc1" TagName="footerscript" %>
<%@ Register Src="~/nav.ascx" TagPrefix="uc1" TagName="nav" %>
<%@ Register Src="~/csslinks.ascx" TagPrefix="uc1" TagName="csslinks" %>
<%@ Register Src="~/headerlinks.ascx" TagPrefix="uc1" TagName="headerlinks" %>


<!DOCTYPE html>
<html>


<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Coal Management| Tabs </title>
    <uc1:csslinks runat="server" ID="csslinks" />
    <style>
        div.dataTables_wrapper div.dataTables_filter {
            text-align: right;
        }
    </style>
</head>
<body>
    <form runat="server">
        <div id="wrapper">
            <uc1:nav runat="server" ID="nav" />
            <div id="page-wrapper" class="gray-bg">
                <uc1:headerlinks runat="server" ID="headerlinks" />
                <div class="row wrapper border-bottom white-bg page-heading">
                    <div class="col-lg-10">
                        <h2>Shifts</h2>
                        <ol class="breadcrumb">
                            <li>
                                <a href="Dashboard.aspx">Home</a>
                            </li>
                            <li>
                                <a>Masters</a>
                            </li>
                            <li class="active">
                                <strong>Shifts</strong>
                            </li>
                        </ol>
                    </div>
                    <div class="col-lg-2">
                    </div>
                </div>
                <div class="wrapper wrapper-content animated fadeIn">


                    <div class="row">
                        <div class="col-lg-12">
                            <div class="tabs-container">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a data-toggle="tab" href="#tab-1">Entry</a></li>
                                    <li class=""><a data-toggle="tab" href="#tab-2">List</a></li>
                                </ul>
                                <div class="tab-content">
                                    <div id="tab-1" class="tab-pane active">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="ibox float-e-margins">
                                                    <div class="ibox-title" style="border-style: none">
                                                        <h5></h5>
                                                        <div class="ibox-tools">
                                                        </div>
                                                    </div>
                                                    <div class="ibox-content" style="border-style: none">
                                                        <div class="form-horizontal">
                                                            <div class="form-group">
                                                                <asp:Label runat="server" ID="lblId" Text="0" Visible="false"></asp:Label>

                                                                <!-- Label for Shift Start Time -->
                                                                <asp:Label ID="lblShiftStartTime" runat="server" CssClass="col-sm-4 control-label" Text="Shift Start Time"></asp:Label>
                                                                <div class="col-sm-5">
                                                                    <asp:DropDownList ID="ddlShiftStartTime" runat="server" CssClass="form-control">
                                                                        <asp:ListItem Value="00:00">00:00 AM</asp:ListItem>
                                                                        <asp:ListItem Value="01:00">01:00 AM</asp:ListItem>
                                                                        <asp:ListItem Value="02:00">02:00 AM</asp:ListItem>
                                                                        <asp:ListItem Value="03:00">03:00 AM</asp:ListItem>
                                                                        <asp:ListItem Value="04:00">04:00 AM</asp:ListItem>
                                                                        <asp:ListItem Value="05:00">05:00 AM</asp:ListItem>
                                                                        <asp:ListItem Value="06:00">06:00 AM</asp:ListItem>
                                                                        <asp:ListItem Value="07:00">07:00 AM</asp:ListItem>
                                                                        <asp:ListItem Value="08:00">08:00 AM</asp:ListItem>
                                                                        <asp:ListItem Value="09:00">09:00 AM</asp:ListItem>
                                                                        <asp:ListItem Value="10:00">10:00 AM</asp:ListItem>
                                                                        <asp:ListItem Value="11:00">11:00 AM</asp:ListItem>
                                                                        <asp:ListItem Value="12:00">12:00 PM</asp:ListItem>
                                                                        <asp:ListItem Value="13:00">01:00 PM</asp:ListItem>
                                                                        <asp:ListItem Value="14:00">02:00 PM</asp:ListItem>
                                                                        <asp:ListItem Value="15:00">03:00 PM</asp:ListItem>
                                                                        <asp:ListItem Value="16:00">04:00 PM</asp:ListItem>
                                                                        <asp:ListItem Value="17:00">05:00 PM</asp:ListItem>
                                                                        <asp:ListItem Value="18:00">06:00 PM</asp:ListItem>
                                                                        <asp:ListItem Value="19:00">07:00 PM</asp:ListItem>
                                                                        <asp:ListItem Value="20:00">08:00 PM</asp:ListItem>
                                                                        <asp:ListItem Value="21:00">09:00 PM</asp:ListItem>
                                                                        <asp:ListItem Value="22:00">10:00 PM</asp:ListItem>
                                                                        <asp:ListItem Value="23:00">11:00 PM</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                    <asp:RequiredFieldValidator ID="rfvShiftStartTime" runat="server" ControlToValidate="ddlShiftStartTime" ValidationGroup="A" ErrorMessage="Shift Start Time is required" CssClass="text-danger"></asp:RequiredFieldValidator>
                                                                </div>
                                                            </div>

                                                            <div class="form-group">
                                                                <!-- Label for Shift End Time -->
                                                                <asp:Label ID="lblShiftEndTime" runat="server" CssClass="col-sm-4 control-label" Text="Shift End Time"></asp:Label>
                                                                <div class="col-sm-5">
                                                                    <asp:DropDownList ID="ddlShiftEndTime" runat="server" CssClass="form-control">
                                                                        <asp:ListItem Value="00:00">00:00 AM</asp:ListItem>
                                                                        <asp:ListItem Value="01:00">01:00 AM</asp:ListItem>
                                                                        <asp:ListItem Value="02:00">02:00 AM</asp:ListItem>
                                                                        <asp:ListItem Value="03:00">03:00 AM</asp:ListItem>
                                                                        <asp:ListItem Value="04:00">04:00 AM</asp:ListItem>
                                                                        <asp:ListItem Value="05:00">05:00 AM</asp:ListItem>
                                                                        <asp:ListItem Value="06:00">06:00 AM</asp:ListItem>
                                                                        <asp:ListItem Value="07:00">07:00 AM</asp:ListItem>
                                                                        <asp:ListItem Value="08:00">08:00 AM</asp:ListItem>
                                                                        <asp:ListItem Value="09:00">09:00 AM</asp:ListItem>
                                                                        <asp:ListItem Value="10:00">10:00 AM</asp:ListItem>
                                                                        <asp:ListItem Value="11:00">11:00 AM</asp:ListItem>
                                                                        <asp:ListItem Value="12:00">12:00 PM</asp:ListItem>
                                                                        <asp:ListItem Value="13:00">01:00 PM</asp:ListItem>
                                                                        <asp:ListItem Value="14:00">02:00 PM</asp:ListItem>
                                                                        <asp:ListItem Value="15:00">03:00 PM</asp:ListItem>
                                                                        <asp:ListItem Value="16:00">04:00 PM</asp:ListItem>
                                                                        <asp:ListItem Value="17:00">05:00 PM</asp:ListItem>
                                                                        <asp:ListItem Value="18:00">06:00 PM</asp:ListItem>
                                                                        <asp:ListItem Value="19:00">07:00 PM</asp:ListItem>
                                                                        <asp:ListItem Value="20:00">08:00 PM</asp:ListItem>
                                                                        <asp:ListItem Value="21:00">09:00 PM</asp:ListItem>
                                                                        <asp:ListItem Value="22:00">10:00 PM</asp:ListItem>
                                                                        <asp:ListItem Value="23:00">11:00 PM</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                    <asp:RequiredFieldValidator ID="rfvShiftEndTime" runat="server" ControlToValidate="ddlShiftEndTime" ValidationGroup="A" ErrorMessage="Shift End Time is required" CssClass="text-danger"></asp:RequiredFieldValidator>
                                                                </div>
                                                            </div>


                                                            <div class="form-group">
                                                                <div class="col-sm-4 col-sm-offset-4">
                                                                    <asp:Button ID="ButtonCancel" runat="server" CssClass="btn btn-white" Text="Cancel" />
                                                                    <asp:Button ID="btnSubmit" runat="server" ValidationGroup="A" CssClass="btn btn-primary" Text="Save changes" OnClick="btnSubmit_Click" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div id="tab-2" class="tab-pane">
                                        <div class="animated fadeInRight">
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="ibox float-e-margins">
                                                        <div class="ibox-title" style="border-style: none">
                                                            <h5></h5>
                                                            <div class="ibox-tools">
                                                            </div>
                                                        </div>
                                                        <div class="ibox-content" style="border-style: none">
                                                            <div class="table-responsive">
                                                                <asp:GridView ID="GridViewCities" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-bordered table-hover dataTables-example">
                                                                    <Columns>
                                                                        <asp:TemplateField HeaderText="Sr No.">
                                                                            <ItemTemplate><%# Container.DataItemIndex + 1 %></ItemTemplate>
                                                                        </asp:TemplateField>
                                                                        <asp:BoundField DataField="Shifttime" HeaderText="Shift" />
                                                                        <asp:TemplateField HeaderText="Action">
                                                                            <ItemTemplate>
                                                                                <asp:Button ID="btnEdit" runat="server" Text="Edit" CssClass="btn btn-primary btn-xs" />
                                                                                <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="btn btn-danger btn-xs"  OnClick="btndeleted_click" CommandArgument='<%#Eval("ShiftID") %>' />
                                                                            </ItemTemplate>
                                                                        </asp:TemplateField>
                                                                    </Columns>
                                                                </asp:GridView>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <uc1:footerscript runat="server" ID="footerscript" />
</body>



</html>


