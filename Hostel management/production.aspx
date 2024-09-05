<%@ Page Language="C#" AutoEventWireup="true" CodeFile="production.aspx.cs" Inherits="Default2" %>


<%@ Register Src="~/nav.ascx" TagPrefix="uc1" TagName="nav" %>
<%@ Register Src="~/footerscript.ascx" TagPrefix="uc1" TagName="footerscript" %>
<%@ Register Src="~/headerlinks.ascx" TagPrefix="uc1" TagName="headerlinks" %>
<%@ Register Src="~/csslinks.ascx" TagPrefix="uc1" TagName="csslinks" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Coal Management| Tabs </title>
    <uc1:csslinks runat="server" ID="csslinks" />
    <style>
            div.dataTables_wrapper div.dataTables_filter {
text-align: right;}
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
                        <h2>Classes</h2>
                        <ol class="breadcrumb">
                            <li>
                                <a href="Dashboard.aspx">Home</a>
                            </li>
                            <li>
                                <a>Masters</a>
                            </li>
                            <li class="active">
                                <strong>Classes</strong>
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
        <!-- Production Date -->
        <div class="form-group">
            <asp:Label ID="lblDate" runat="server" CssClass="col-sm-4 control-label" Text="Production Date"></asp:Label>
            <div class="col-sm-5">
                <asp:TextBox ID="txtDate" runat="server" CssClass="form-control" Placeholder="Enter production date" TextMode="Date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvDate" runat="server" ControlToValidate="txtDate" ValidationGroup="Production" ErrorMessage="Production date is required" CssClass="text-danger"></asp:RequiredFieldValidator>
            </div>
        </div>

        <!-- Raw Coal Production -->
        <div class="form-group">
            <asp:Label ID="lblRawCoal" runat="server" CssClass="col-sm-4 control-label" Text="Raw Coal Produced (Tons)"></asp:Label>
            <div class="col-sm-5">
                <asp:TextBox ID="txtRawCoal" runat="server" CssClass="form-control" Placeholder="Enter raw coal quantity"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvRawCoal" runat="server" ControlToValidate="txtRawCoal" ValidationGroup="Production" ErrorMessage="Raw coal quantity is required" CssClass="text-danger"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revRawCoal" runat="server" ControlToValidate="txtRawCoal" ValidationGroup="Production" ErrorMessage="Enter a valid number" CssClass="text-danger" ValidationExpression="^\d+(\.\d{1,2})?$"></asp:RegularExpressionValidator>
            </div>
        </div>

        <!-- Carbon Production -->
        <div class="form-group">
            <asp:Label ID="lblCarbon" runat="server" CssClass="col-sm-4 control-label" Text="Carbon Produced (Tons)"></asp:Label>
            <div class="col-sm-5">
                <asp:TextBox ID="txtCarbon" runat="server" CssClass="form-control" Placeholder="Enter carbon quantity"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvCarbon" runat="server" ControlToValidate="txtCarbon" ValidationGroup="Production" ErrorMessage="Carbon quantity is required" CssClass="text-danger"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revCarbon" runat="server" ControlToValidate="txtCarbon" ValidationGroup="Production" ErrorMessage="Enter a valid number" CssClass="text-danger" ValidationExpression="^\d+(\.\d{1,2})?$"></asp:RegularExpressionValidator>
            </div>
        </div>

        <!-- Other Materials Production -->
        <div class="form-group">
            <asp:Label ID="lblOtherMaterials" runat="server" CssClass="col-sm-4 control-label" Text="Other Materials Produced (Tons)"></asp:Label>
            <div class="col-sm-5">
                <asp:TextBox ID="txtOtherMaterials" runat="server" CssClass="form-control" Placeholder="Enter other materials quantity"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvOtherMaterials" runat="server" ControlToValidate="txtOtherMaterials" ValidationGroup="Production" ErrorMessage="Other materials quantity is required" CssClass="text-danger"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revOtherMaterials" runat="server" ControlToValidate="txtOtherMaterials" ValidationGroup="Production" ErrorMessage="Enter a valid number" CssClass="text-danger" ValidationExpression="^\d+(\.\d{1,2})?$"></asp:RegularExpressionValidator>
            </div>
        </div>

        <!-- Shift -->
        <div class="form-group">
            <asp:Label ID="lblShift" runat="server" CssClass="col-sm-4 control-label" Text="Shift"></asp:Label>
            <div class="col-sm-5">
                <asp:DropDownList ID="ddlShift" runat="server" CssClass="form-control" AppendDataBoundItems="true" DataTextField="Shifttime" DataValueField="ShiftID">
    <asp:ListItem Value="0">--Select Shift--</asp:ListItem>
    
</asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvShift" runat="server" ControlToValidate="ddlShift" InitialValue="" ValidationGroup="Production" ErrorMessage="Shift is required" CssClass="text-danger"></asp:RequiredFieldValidator>
            </div>
        </div>

        <!-- Comments -->
        <div class="form-group">
            <asp:Label ID="lblComments" runat="server" CssClass="col-sm-4 control-label" Text="Comments"></asp:Label>
            <div class="col-sm-5">
                <asp:TextBox ID="txtComments" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="4" Placeholder="Enter any comments or notes"></asp:TextBox>
            </div>
        </div>

        <!-- Submit and Cancel Buttons -->
        <div class="form-group">
            <div class="col-sm-4 col-sm-offset-4">
                <asp:Button ID="ButtonCancel" runat="server" CssClass="btn btn-white" Text="Cancel" />
                <asp:Button ID="ButtonSubmit" runat="server" CssClass="btn btn-primary" Text="Submit" ValidationGroup="Production" />
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
                                                            <asp:GridView ID="GridViewCities" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-bordered table-hover dataTables-example">
                                                                <Columns>
                                                                    <asp:TemplateField HeaderText="Sr No.">
                                                                        <ItemTemplate>
                                                                            <%# Container.DataItemIndex + 1 %>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:BoundField DataField="Class" HeaderText="Class Name" />
                                                                    <asp:TemplateField HeaderText="Action">
                                                                        <ItemTemplate>
                                                                            <asp:Button ID="btnEdit" runat="server" Text="Edit" CssClass="btn btn-primary btn-xs" />
                                                                            <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="btn btn-danger btn-xs"  />
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
    </form>
    <uc1:footerscript runat="server" ID="footerscript" />
</body>


</html>



