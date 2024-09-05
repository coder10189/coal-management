<%@ Control Language="C#" AutoEventWireup="true" CodeFile="nav.ascx.cs" Inherits="nav" %>
<div id="wrapper">
    <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav metismenu" id="side-menu">
                

                <li class="active">
                    <a href="Dashboard.aspx"><i class="fa fa-edits"></i><span class="nav-label">Dashboards</span></a>

                </li>
                <li>
                    <a href="#"><i class="fa fa-th-large"></i><span class="nav-label">Master</span> <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="present.aspx">Worker Attendence</a></li>
                        <li><a href="Penalty.aspx">Penalty</a></li>
                        <li><a href="gearstock.aspx">Gears stock</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-edit"></i><span class="nav-label">Entry</span> <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="newworker.aspx">New Workers</a></li>
                        <li><a href="production.aspx">production</a></li>
                         <li><a href="SHifts.aspx">Shifts</a></li>
                       
                        
                    </ul>
                </li>
                <%--<li>
                    <a href="#"><i class="	fa fa-bar-chart"></i><span class="nav-label">Reports</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li>
                            <a href="#"> Hostel Reports <span class="fa arrow"></span></a>
                            <ul class="nav nav-third-level">
                                <li>
                                    <a href="HostelReport.aspx">Hostel Alocated Reports</a>
                                </li>                                
                            </ul>
                        </li>
                        <li><a href="StudentReportsaspx.aspx">Student Reports</a></li>                        
                    </ul>
                </li>--%>
            </ul>
        </div>
    </nav>
</div>

