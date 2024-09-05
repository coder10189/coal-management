<%@ Page Language="C#" AutoEventWireup="true" CodeFile="newworker.aspx.cs" Inherits="HostelRegistration" EnableEventValidation="false" %>



<%@ Register Src="~/footerscript.ascx" TagPrefix="uc1" TagName="footerscript" %>
<%@ Register Src="~/nav.ascx" TagPrefix="uc1" TagName="nav" %>
<%@ Register Src="~/csslinks.ascx" TagPrefix="uc1" TagName="csslinks" %>
<%@ Register Src="~/headerlinks.ascx" TagPrefix="uc1" TagName="headerlinks" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>



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
        <asp:ScriptManager runat="server"></asp:ScriptManager>
        <div id="wrapper">
            <uc1:nav runat="server" ID="nav" />
            <div id="page-wrapper" class="gray-bg">
                <uc1:headerlinks runat="server" ID="headerlinks" />
                <div class="row wrapper border-bottom white-bg page-heading">
                    <div class="col-lg-10">
                        <h2>Hostel Registration</h2>
                        <ol class="breadcrumb">
                            <li>
                                <a href="Dashboard.aspx">Home</a>
                            </li>
                            <li>
                                <a>Entry</a>
                            </li>
                            <li class="active">
                                <strong>Worker</strong>
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
                                                            <asp:Label runat="server" ID="lblId" Visible="false" Text="0"></asp:Label>


                                                            <div class="form-group">
                                                                <asp:Label ID="lblName" runat="server" CssClass="col-sm-4 control-label" Text="Worker Name"></asp:Label>
                                                                <div class="col-sm-5">
                                                                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ValidationGroup="A" ErrorMessage="Name is required" CssClass="text-danger"></asp:RequiredFieldValidator>
                                                                </div>
                                                            </div>


                                                            <div class="form-group">
                                                                <asp:Label ID="lblJobTitle" runat="server" CssClass="col-sm-4 control-label" Text="Job Title"></asp:Label>
                                                                <div class="col-sm-5">
                                                                    <asp:TextBox ID="txtJobTitle" runat="server" CssClass="form-control"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="rfvJobTitle" runat="server" ControlToValidate="txtJobTitle" ValidationGroup="A" ErrorMessage="Job Title is required" CssClass="text-danger"></asp:RequiredFieldValidator>
                                                                </div>
                                                            </div>


                                                            <div class="form-group">
                                                                <asp:Label ID="lblShift" runat="server" CssClass="col-sm-4 control-label" Text="Shift"></asp:Label>
                                                                <div class="col-sm-5">
                                                                    <asp:DropDownList ID="ddlShift" runat="server" CssClass="form-control" AppendDataBoundItems="true" DataTextField="Shifttime" DataValueField="ShiftID">
                                                                        <asp:ListItem Value="0">--Select Shift--</asp:ListItem>
                                                                        
                                                                    </asp:DropDownList>
                                                                    <asp:RequiredFieldValidator ID="rfvShift" runat="server" ControlToValidate="ddlShift" InitialValue="0" ValidationGroup="A" ErrorMessage="Shift is required" CssClass="text-danger"></asp:RequiredFieldValidator>
                                                                </div>
                                                            </div>


                                                            <div class="form-group">
                                                                <asp:Label ID="lblAddress" runat="server" CssClass="col-sm-4 control-label" Text="Address"></asp:Label>
                                                                <div class="col-sm-5">
                                                                    <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="txtAddress" ValidationGroup="A" ErrorMessage="Address is required" CssClass="text-danger"></asp:RequiredFieldValidator>
                                                                </div>
                                                            </div>


                                                            <div class="form-group">
                                                                <asp:Label ID="lblMobile" runat="server" CssClass="col-sm-4 control-label" Text="Mobile Number"></asp:Label>
                                                                <div class="col-sm-5">
                                                                    <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control" MaxLength="10"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="rfvMobile" runat="server" ControlToValidate="txtMobile" ValidationGroup="A" ErrorMessage="Mobile Number is required" CssClass="text-danger"></asp:RequiredFieldValidator>
                                                                    <asp:RegularExpressionValidator ID="revMobile" runat="server" ControlToValidate="txtMobile" ValidationGroup="A" ErrorMessage="Invalid Mobile Number" CssClass="text-danger" ValidationExpression="^\d{10}$"></asp:RegularExpressionValidator>
                                                                </div>
                                                            </div>


                                                            <div class="form-group">
                                                                <asp:Label ID="lblAlternativeMobile" runat="server" CssClass="col-sm-4 control-label" Text="Alternative Mobile Number"></asp:Label>
                                                                <div class="col-sm-5">
                                                                    <asp:TextBox ID="txtAlternativeMobile" runat="server" CssClass="form-control" MaxLength="10"></asp:TextBox>
                                                                    <asp:RegularExpressionValidator ID="revAlternativeMobile" runat="server" ControlToValidate="txtAlternativeMobile" ValidationGroup="A" ErrorMessage="Invalid Mobile Number" CssClass="text-danger" ValidationExpression="^\d{10}$"></asp:RegularExpressionValidator>
                                                                </div>
                                                            </div>


                                                            <div class="form-group">
                                                                <asp:Label ID="lblBankName" runat="server" CssClass="col-sm-4 control-label" Text="Bank Name"></asp:Label>
                                                                <div class="col-sm-5">
                                                                    <asp:TextBox ID="txtBankName" runat="server" CssClass="form-control"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="rfvBankName" runat="server" ControlToValidate="txtBankName" ValidationGroup="A" ErrorMessage="Bank Name is required" CssClass="text-danger"></asp:RequiredFieldValidator>
                                                                </div>
                                                            </div>


                                                            <div class="form-group">
                                                                <asp:Label ID="lblAccountNumber" runat="server" CssClass="col-sm-4 control-label" Text="Account Number"></asp:Label>
                                                                <div class="col-sm-5">
                                                                    <asp:TextBox ID="txtAccountNumber" runat="server" CssClass="form-control"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="rfvAccountNumber" runat="server" ControlToValidate="txtAccountNumber" ValidationGroup="A" ErrorMessage="Account Number is required" CssClass="text-danger"></asp:RequiredFieldValidator>
                                                                </div>
                                                            </div>


                                                            <div class="form-group">
                                                                <asp:Label ID="lblIFSCCode" runat="server" CssClass="col-sm-4 control-label" Text="IFSC Code"></asp:Label>
                                                                <div class="col-sm-5">
                                                                    <asp:TextBox ID="txtIFSCCode" runat="server" CssClass="form-control"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="rfvIFSCCode" runat="server" ControlToValidate="txtIFSCCode" ValidationGroup="A" ErrorMessage="IFSC Code is required" CssClass="text-danger"></asp:RequiredFieldValidator>
                                                                </div>
                                                            </div>


                                                            <div class="form-group">
                                                                <asp:Label ID="lblBranchName" runat="server" CssClass="col-sm-4 control-label" Text="Branch Name"></asp:Label>
                                                                <div class="col-sm-5">
                                                                    <asp:TextBox ID="txtBranchName" runat="server" CssClass="form-control"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="rfvBranchName" runat="server" ControlToValidate="txtBranchName" ValidationGroup="A" ErrorMessage="Branch Name is required" CssClass="text-danger"></asp:RequiredFieldValidator>
                                                                </div>
                                                            </div>


                                                            <div class="form-group">
                                                                <asp:Label ID="lblAadhar" runat="server" CssClass="col-sm-4 control-label" Text="Aadhar Card Number"></asp:Label>
                                                                <div class="col-sm-5">
                                                                    <asp:TextBox ID="txtAadhar" runat="server" CssClass="form-control" MaxLength="12"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="rfvAadhar" runat="server" ControlToValidate="txtAadhar" ValidationGroup="A" ErrorMessage="Aadhar Card Number is required" CssClass="text-danger"></asp:RequiredFieldValidator>
                                                                    <asp:RegularExpressionValidator ID="revAadhar" runat="server" ControlToValidate="txtAadhar" ValidationGroup="A" ErrorMessage="Invalid Aadhar Card Number" CssClass="text-danger" ValidationExpression="^\d{12}$"></asp:RegularExpressionValidator>
                                                                </div>
                                                            </div>


                                                            <div class="form-group">
                                                                <div class="col-sm-4 col-sm-offset-4">
                                                                    <asp:Button ID="ButtonCancel" runat="server" CssClass="btn btn-white" Text="Cancel" OnClick="cancel" />
                                                                    <asp:Button ID="btnSubmit" runat="server" ValidationGroup="A" CssClass="btn btn-primary" Text="Save changes"  OnClick="btnSubmit_Click"/>
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
                                                                                <asp:Button ID="btnEdit" runat="server" CommandName="Edit" Text="Edit" CssClass="btn btn-primary btn-xs" OnClick="btnEdit_Click" CommandArgument='<%#Eval("WorkerID") %>' />
                                                                                <asp:Button ID="btnDelete" runat="server" CommandName="Delete" Text="Delete" CssClass="btn btn-danger btn-xs" OnClick="btndeleted_click" CommandArgument='<%#Eval("WorkerID") %>' />
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


