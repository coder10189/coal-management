<%@ Page Language="C#" AutoEventWireup="true" CodeFile="present.aspx.cs" Inherits="assets_forms" EnableEventValidation="False" %>



<%@ Register Src="~/nav.ascx" TagPrefix="uc1" TagName="nav" %>
<%@ Register Src="~/footerscript.ascx" TagPrefix="uc1" TagName="footerscript" %>
<%@ Register Src="~/headerlinks.ascx" TagPrefix="uc1" TagName="headerlinks" %>
<%@ Register Src="~/csslinks.ascx" TagPrefix="uc1" TagName="csslinks" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html>
<html>


<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Coal Management| Tabs </title>
    <uc1:csslinks runat="server" ID="csslinks" />
    <link href="css/plugins/dataTables/datatables.min.css" rel="stylesheet">
    <style>
        label {
            margin-left: 4px;
            text-decoration: none;
            font-weight: 500;
        }

        .ajax__calendar_container {
            width: 100%;
            z-index: 9999999999 !important;
        }

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
                        <h2>Worker Attendence Portal</h2>
                        <ol class="breadcrumb">
                            <li>
                                <a href="Dashboard.aspx">Home</a>
                            </li>
                            <li>
                                <a>Masters</a>
                            </li>
                            <li class="active">
                                <strong>Worker Attendence Portal</strong>
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
                                                            <asp:Label runat="server" ID="Label1" Visible="false" Text="0"></asp:Label>
                                                            <div class="form-group">
                                                                <asp:Label ID="lblWorkerId" runat="server" CssClass="col-sm-4 control-label" Text="Worker ID"></asp:Label>
                                                                <div class="col-sm-5">
                                                                    <asp:TextBox ID="txtWorkerId" runat="server" CssClass="form-control"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="rfvWorkerId" runat="server" ValidationGroup="A" ControlToValidate="txtWorkerId" ErrorMessage="Worker ID is required" CssClass="text-danger"></asp:RequiredFieldValidator>
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <asp:Label ID="lblDate" runat="server" CssClass="col-sm-4 control-label" Text="Date"></asp:Label>
                                                                <div class="col-sm-5">
                                                                    <asp:TextBox ID="txtDate" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="rfvDate" runat="server" ValidationGroup="A" ControlToValidate="txtDate" ErrorMessage="Date is required" CssClass="text-danger"></asp:RequiredFieldValidator>
                                                                </div>
                                                            </div>


                                                            <div class="form-group">
                                                                <asp:Label ID="lblPhoto" runat="server" CssClass="col-sm-4 control-label" Text="Photo"></asp:Label>
                                                                <div class="col-sm-2">
                                                                    <button type="button" id="capture" class="btn btn-primary">Capture Photo</button>
                                                                    <canvas id="canvas" style="display: none;"></canvas>
                                                                    <img id="capturedPhoto" style="display: none; margin-top: 10px;" class="img-thumbnail" width="300" height="300" />
                                                                    <input type="hidden" id="photoData" name="photoData" />
                                                                    <span id="photoError" class="text-danger"></span>
                                                                </div>
                                                                <asp:Label ID="lblAlcoholReading" runat="server" CssClass="col-sm-1 control-label" Text="Alcohol Detection Meter Reading"></asp:Label>
                                                                <div class="col-sm-2">
                                                                    <asp:TextBox ID="txtAlcoholReading" runat="server" ReadOnly="true" CssClass="form-control"></asp:TextBox>
                                                                </div>
                                                            </div>


                                                            <div class="form-group">
                                                                <asp:Label ID="lblSafetyMeasures" runat="server" CssClass="col-sm-4 control-label" Text="Safety Measures"></asp:Label>
                                                                <div class="col-sm-5">
                                                                    <asp:RadioButtonList ID="rblSafetyMeasures" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="radio-group">
                                                                        <asp:ListItem Text="Yes" Value="Yes" style="margin-right: 10px;"></asp:ListItem>
                                                                        <asp:ListItem Text="No" Value="No" style="margin-right: 10px;"></asp:ListItem>
                                                                    </asp:RadioButtonList>
                                                                    <asp:RequiredFieldValidator ID="rfvSafetyMeasures" runat="server" ValidationGroup="A" ControlToValidate="rblSafetyMeasures" ErrorMessage="Safety Measures selection is required" CssClass="text-danger"></asp:RequiredFieldValidator>
                                                                </div>
                                                            </div>


                                                            <div class="form-group">
                                                                <div class="col-sm-4 col-sm-offset-4">
                                                                    <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-white" Text="Cancel" />
                                                                    <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-primary" ValidationGroup="A" Text="Mark Present" />
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
                                                                <div class="ibox-tools">
                                                                    <a class="collapse-link">
                                                                        <i class="fa fa-chevron-up"></i>
                                                                    </a>
                                                                    <a class="close-link">
                                                                        <i class="fa fa-times"></i>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="ibox-content" style="border-style: none">
                                                            <div class="table-responsive">

                                                                <asp:GridView ID="GridViewStudents" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-bordered table-hover dataTables-example">
                                                                    <Columns>
                                                                        <asp:TemplateField HeaderText="Sr No.">
                                                                            <ItemTemplate><%# Container.DataItemIndex + 1 %></ItemTemplate>
                                                                        </asp:TemplateField>
                                                                        <asp:BoundField DataField="StudentName" HeaderText="Student Name" />
                                                                        <asp:BoundField DataField="MobileNo" HeaderText="Mobile No." />
                                                                        <asp:BoundField DataField="DOB" HeaderText="Date of Birth" DataFormatString="{0:dd-MMM-yyyy}" />
                                                                        <asp:BoundField DataField="RollNo" HeaderText="Roll No." />
                                                                        <asp:BoundField DataField="Address" HeaderText="Address" />
                                                                        <asp:BoundField DataField="FatherName" HeaderText="Father's Name" />
                                                                        <asp:BoundField DataField="MotherName" HeaderText="Mother's Name" />
                                                                        <asp:BoundField DataField="Class" HeaderText="Class" />
                                                                        <asp:BoundField DataField="Section" HeaderText="Section" />
                                                                        <asp:BoundField DataField="Cities" HeaderText="Cities" />
                                                                        <asp:BoundField DataField="Gender" HeaderText="Gender" />

                                                                        <asp:TemplateField HeaderText="Photo">
                                                                            <ItemTemplate>
                                                                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# ResolveUrl("~/Uploads/" + Eval("StudentImg")) %>' Height="80px" Width="80px" />
                                                                            </ItemTemplate>
                                                                        </asp:TemplateField>
                                                                        <asp:TemplateField HeaderText="Action">
                                                                            <ItemTemplate>
                                                                                <asp:Button ID="btnEdit" runat="server" Text="Edit" CssClass="btn btn-primary btn-xs" />
                                                                                <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="btn btn-danger btn-xs" />
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
    <script src="assets/js/plugins/dataTables/datatables.min.js"></script>
    <script>
        document.getElementById('capture').addEventListener('click', function () {
            // Access the camera
            navigator.mediaDevices.getUserMedia({ video: true })
                .then(stream => {
                    // Create a video element to use the camera feed
                    const video = document.createElement('video');
                    video.srcObject = stream;
                    video.play();

                    // Wait until the video is ready
                    video.onloadedmetadata = () => {
                        // Create a canvas element to capture the image
                        const canvas = document.getElementById('canvas');
                        canvas.width = video.videoWidth;
                        canvas.height = video.videoHeight;
                        const context = canvas.getContext('2d');

                        // Draw the current frame to the canvas
                        context.drawImage(video, 0, 0, canvas.width, canvas.height);

                        // Stop the camera
                        stream.getTracks().forEach(track => track.stop());

                        // Convert the canvas image to a data URL (base64 encoded image)
                        const imageDataUrl = canvas.toDataURL('image/png');

                        // Set the data URL as the value of a hidden input for form submission
                        document.getElementById('photoData').value = imageDataUrl;

                        // Display the captured image in the img tag
                        const capturedPhoto = document.getElementById('capturedPhoto');
                        capturedPhoto.src = imageDataUrl;
                        capturedPhoto.style.display = 'block';

                        // Remove the temporary video element
                        video.remove();
                    };
                })
                .catch(err => {
                    console.error("Error accessing the camera: " + err);
                    document.getElementById('photoError').textContent = 'Unable to access the camera. Please try again or check your camera settings.';
                });
        });

    </script>
</body>


</html>

