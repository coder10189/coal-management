<%@ Page Language="C#" AutoEventWireup="true" CodeFile="gearstock.aspx.cs" Inherits="gearstock" %>

<%@ Register Src="~/footerscript.ascx" TagPrefix="uc1" TagName="footerscript" %>
<%@ Register Src="~/headerlinks.ascx" TagPrefix="uc1" TagName="headerlinks" %>
<%@ Register Src="~/nav.ascx" TagPrefix="uc1" TagName="nav" %>
<%@ Register Src="~/csslinks.ascx" TagPrefix="uc1" TagName="csslinks" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Coal Management| Tabs </title>
    <uc1:csslinks runat="server" ID="csslinks" />
    <style>
        .headerqw {
            font-size: 30px;
        }
    </style>
</head>

<body>
    <form runat="server">
        <asp:ScriptManager runat="server"></asp:ScriptManager>
        <div id="wrapper">
            <uc1:nav runat="server" ID="nav" />
            <div id="page-wrapper" class="gray-bg">
                <uc1:headerlinks runat="server" ID="headerlinks" />
                <div class="row wrapper border-bottom white-bg page-heading">
                    <div class="col-lg-10">
                        <h2>Stock Registration</h2>
                        <ol class="breadcrumb">
                            <li>
                                <a href="Dashboard.aspx">Home</a>
                            </li>
                            <li>
                                <a>Entry</a>
                            </li>
                            <li class="active">
                                <strong>Stock Registration</strong>
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
                                                            <!-- Product Name Field -->
                                                            <div class="form-group">
                                                                <asp:Label ID="lblProductName" runat="server" CssClass="col-sm-4 control-label" Text="Product Name"></asp:Label>
                                                                <div class="col-sm-5">
                                                                    <asp:TextBox ID="txtProductName" runat="server" CssClass="form-control" placeholder="Enter Product Name"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="rfvProductName" runat="server" ControlToValidate="txtProductName" ValidationGroup="A" ErrorMessage="Product Name is required" CssClass="text-danger"></asp:RequiredFieldValidator>
                                                                </div>
                                                            </div>

                                                            <!-- Quality Field -->
                                                            <div class="form-group">
                                                                <asp:Label ID="lblQuality" runat="server" CssClass="col-sm-4 control-label" Text="Quality"></asp:Label>
                                                                <div class="col-sm-5">
                                                                    <asp:TextBox ID="txtQuality" runat="server" CssClass="form-control"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="rfvQuality" runat="server" ControlToValidate="txtQuality" ValidationGroup="A" ErrorMessage="Quality is required" CssClass="text-danger"></asp:RequiredFieldValidator>
                                                                </div>
                                                            </div>

                                                            <!-- Per Piece Rate Field -->
                                                            <div class="form-group">
                                                                <asp:Label ID="lblPerPieceRate" runat="server" CssClass="col-sm-4 control-label" Text="Per Piece Rate"></asp:Label>
                                                                <div class="col-sm-5">
                                                                    <asp:TextBox ID="txtPerPieceRate" runat="server" CssClass="form-control"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="rfvPerPieceRate" runat="server" ControlToValidate="txtPerPieceRate" ValidationGroup="A" ErrorMessage="Per Piece Rate is required" CssClass="text-danger"></asp:RequiredFieldValidator>
                                                                </div>
                                                            </div>

                                                            <!-- Total Price Field -->
                                                            <div class="form-group">
                                                                <asp:Label ID="lblTotalPrice" runat="server" CssClass="col-sm-4 control-label" Text="Total Price"></asp:Label>
                                                                <div class="col-sm-5">
                                                                    <asp:TextBox ID="txtTotalPrice" runat="server" CssClass="form-control"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="rfvTotalPrice" runat="server" ControlToValidate="txtTotalPrice" ValidationGroup="A" ErrorMessage="Total Price is required" CssClass="text-danger"></asp:RequiredFieldValidator>
                                                                </div>
                                                            </div>

                                                            <!-- Submit Button -->
                                                            <div class="form-group">
                                                                <div class="col-sm-4 col-sm-offset-4">
                                                                    <asp:Button ID="btnSubmit" runat="server" ValidationGroup="A" CssClass="btn btn-primary" Text="Submit" />
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

                                                                <asp:GridView ID="GridViewWorkers" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-bordered table-hover dataTables-example">
                                                                    <Columns>
                                                                        <asp:TemplateField HeaderText="Sr No.">
                                                                            <ItemTemplate><%# Container.DataItemIndex + 1 %></ItemTemplate>
                                                                        </asp:TemplateField>
                                                                        <asp:BoundField DataField="Name" HeaderText="Name" />
                                                                        <asp:BoundField DataField="JobTitle" HeaderText="Job Title" />
                                                                        <asp:BoundField DataField="Shift" HeaderText="Shift" />
                                                                        <asp:BoundField DataField="Address" HeaderText="Address" />
                                                                        <asp:BoundField DataField="MobileNumber" HeaderText="Mobile Number" />
                                                                        <asp:BoundField DataField="AlternativeMobileNumber" HeaderText="Alternative Mobile Number" />
                                                                        <asp:BoundField DataField="BankName" HeaderText="Bank Name" />
                                                                        <asp:BoundField DataField="AccountNumber" HeaderText="Account Number" />
                                                                        <asp:BoundField DataField="IFSCCode" HeaderText="IFSC Code" />
                                                                        <asp:BoundField DataField="BranchName" HeaderText="Branch Name" />
                                                                        <asp:BoundField DataField="AadharCardNumber" HeaderText="Aadhar Card Number" />

                                                                        <asp:TemplateField HeaderText="Action">
                                                                            <ItemTemplate>
                                                                                <asp:Button ID="btnEdit" runat="server" CommandName="Edit" Text="Edit" CssClass="btn btn-primary btn-xs" />
                                                                                <asp:Button ID="btnDelete" runat="server" CommandName="Delete" Text="Delete" CssClass="btn btn-danger btn-xs" />
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
    <uc1:footerscript runat="server" ID="footerscript1" />


    <uc1:footerscript runat="server" ID="footerscript" />
</body>


</html>

