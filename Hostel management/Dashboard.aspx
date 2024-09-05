<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Dashboard" %>

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

 <div id="wrapper">
    <uc1:nav runat="server" ID="nav" />
    <div id="page-wrapper" class="gray-bg">
        <uc1:headerlinks runat="server" ID="headerlinks" />
        <div class="wrapper wrapper-content">
            <div class="row">
                <!-- Total Coal Workers -->
                <div class="col-lg-3">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>Total No. Of Coal Workers</h5>
                        </div>
                        <div class="ibox-content">
                            <asp:Label ID="lblTotalCoalWorkers" CssClass="headerqw no-margins" runat="server" Text=""></asp:Label><br />
                            <small>Total Coal Workers</small>
                        </div>
                    </div>
                </div>
                <!-- Coal Workers Currently On Shift -->
                <div class="col-lg-3">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>Coal Workers Currently On Shift</h5>
                        </div>
                        <div class="ibox-content">
                            <asp:Label ID="lblWorkingCoalWorkers" CssClass="headerqw no-margins" runat="server" Text=""></asp:Label><br />
                            <small>Workers On Shift</small>
                        </div>
                    </div>
                </div>
                <!-- Total Production -->
                <div class="col-lg-3">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>Total Coal Production</h5>
                        </div>
                        <div class="ibox-content">
                            <asp:Label ID="lblTotalProduction" CssClass="headerqw no-margins" runat="server" Text=""></asp:Label><br />
                            <small>Total Production (in tons)</small>
                        </div>
                    </div>
                </div>
                <!-- Today's Production -->
                <div class="col-lg-3">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>Today's Coal Production</h5>
                        </div>
                        <div class="ibox-content">
                            <asp:Label ID="lblTodayProduction" CssClass="headerqw no-margins" runat="server" Text=""></asp:Label><br />
                            <small>Today's Production (in tons)</small>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


    <uc1:footerscript runat="server" ID="footerscript" />
</body>


</html>



