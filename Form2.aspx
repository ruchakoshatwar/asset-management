<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Form2.aspx.cs" Inherits="FormProject.Form2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>IT-DEPT. IMAC-FORM</h4>
                                    <span>Form Status - </span>
                                    <asp:Label class="badge badge-pill badge-info" ID="Label1" runat="server" Text="Form status"></asp:Label>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-check">
                                    <%--<asp:CheckBox ID="CheckBox1" CssClass="form-check-label" EnableTheming="false" runat="server" Text="New Asset" ValidationGroup="C1"></asp:CheckBox>--%>
                                    <%--<label class="form-check-label" for="defaultcheck1">New Assset</label>--%>
                                    <%--<asp:CheckBox ID="CheckBox1" CssClass="form-check-label" EnableTheming="false" runat="server" Text="New Asset" ValidationGroup="C1"></asp:CheckBox>--%>
                                    <asp:RadioButton ID="Rd1" runat="server" CssClass="form-check-label" EnableTheming="false" Text="New Asset" ValidationGroup="R11" GroupName="R4"/>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-check">
                                    <%--<asp:TextBox CssClass="form-check-input" type="checkbox" value="" ID="defaultcheck2" runat="server"></asp:TextBox>
                                    <label class="form-check-label" for="defaultcheck2">Change Asset</label>--%>
                                    <%--<asp:CheckBox ID="CheckBox2" runat="server" CssClass="form-check-label" EnableTheming="false" Text="Change Asset" ValidationGroup="C1"  />--%>
                                    <asp:RadioButton ID="Rd2" runat="server" CssClass="form-check-label" EnableTheming="false" Text="Change Asset" ValidationGroup="R12" GroupName="R4"/>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-check">
                                    <%--<asp:TextBox CssClass="form-check-input" type="checkbox" value="" ID="defaultcheck3" runat="server"></asp:TextBox>
                                    <label class="form-check-label" for="defaultcheck3">Move Asset</label>--%>
                                    <%--<asp:CheckBox ID="CheckBox3" runat="server" CssClass="form-check-label" EnableTheming="false" Text="Move Asset" ValidationGroup="C1"/>--%>
                                    <asp:RadioButton ID="Rd3" runat="server" CssClass="form-check-label" EnableTheming="false" Text="Move Asset" ValidationGroup="R13" GroupName="R4"/>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-2">
                                <div class="form-check">
                                    <%--<asp:TextBox CssClass="form-check-input" type="checkbox" value="" ID="TextBox2" runat="server"></asp:TextBox>
                                    <label class="form-check-label" for="defaultcheck1">DeskTop</label>--%>
                                    <%--<asp:CheckBox ID="CheckBox1" runat="server" CssClass="form-check-label" EnableTheming="false" Text="DeskTop" ValidationGroup="C11" GroupName="C5"/>--%>
                                    <asp:RadioButton ID="Rd4" runat="server" CssClass="form-check-label" EnableTheming="false" Text="DeskTop" ValidationGroup="R11" GroupName="R5"/>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-check">
                                    <%--<asp:TextBox CssClass="form-check-input" type="checkbox" value="" ID="TextBox8" runat="server"></asp:TextBox>
                                    <label class="form-check-label" for="defaultcheck2">Laptop</label>--%>
                                    <%--<asp:CheckBox ID="CheckBox4" runat="server" CssClass="form-check-label" EnableTheming="false" Text="Laptop" ValidationGroup="C12" GroupName="C5"/>--%>
                                    <asp:RadioButton ID="Rd5" runat="server" CssClass="form-check-label" EnableTheming="false" Text="Laptop" ValidationGroup="R12" GroupName="R5"/>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-check">
                                    <%--<asp:TextBox CssClass="form-check-input" type="checkbox" value="" ID="TextBox9" runat="server"></asp:TextBox>
                                    <label class="form-check-label" for="defaultcheck3">Moniter</label>--%>
                                    <%--<asp:CheckBox ID="CheckBox5" runat="server" CssClass="form-check-label" EnableTheming="false" Text="Moniter" ValidationGroup="C13" GroupName="C5""/>--%>
                                    <asp:RadioButton ID="Rd6" runat="server" CssClass="form-check-label" EnableTheming="false" Text="Moniter" ValidationGroup="R13" GroupName="R5"/>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-check">
                                    <%--<asp:TextBox CssClass="form-check-input" type="checkbox" value="" ID="TextBox10" runat="server"></asp:TextBox>
                                    <label class="form-check-label" for="defaultcheck3">IP Phone</label>--%>
                                    <asp:RadioButton ID="Rd7" runat="server" CssClass="form-check-label" EnableTheming="false" Text="IP Phone" ValidationGroup="R14" GroupName="R5"/>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-check">
                                    <%--<asp:TextBox CssClass="form-check-input" type="checkbox" value="" ID="TextBox12" runat="server"></asp:TextBox>
                                    <label class="form-check-label" for="defaultcheck3">Wireless Phone</label>--%>
                                    <asp:RadioButton ID="Rd8" runat="server" CssClass="form-check-label" EnableTheming="false" Text="Wireless Phone" ValidationGroup="R15" GroupName="R5"/>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-check">
                                   <%-- <asp:TextBox CssClass="form-check-input" type="checkbox" value="" ID="TextBox13" runat="server"></asp:TextBox>
                                    <label class="form-check-label" for="defaultcheck3">UPS</label>--%>
                                    <asp:RadioButton ID="Rd9" runat="server" CssClass="form-check-label" EnableTheming="false" Text="UPS" ValidationGroup="R16" GroupName="R5"/>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Asset No.</label>
                                <div class="form-group">
                                </div>
                                    <asp:TextBox CssClass="form-control" ID="TextBox14" runat="server" placeholder="Asset No." TextMode="Number"></asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                <label>Date of IMAC</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox15" runat="server" placeholder="Date of IMAC" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Staff No.</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Staff No."></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Full Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="Full Name"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Contact No</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Contact No" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Email ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label>Designation</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox21" runat="server" placeholder="Designation"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Location</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox19" runat="server" placeholder="Location"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Quantity</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox20" runat="server" placeholder="Quantity" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label>Department</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="Select" Value="select" />
                                        <asp:ListItem Text="Finance" Value="Finance" />
                                        <asp:ListItem Text="IT" Value="IT" />
                                        <asp:ListItem Text="TS" Value="TS" />
                                        <asp:ListItem Text="Commertial" Value="Commertial" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>City</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="City"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Pincode</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox7" runat="server" placeholder="Pincode" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <label>Description of IMAC</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Description of Material" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-8 mx-auto">
                                <center>
                                    <div class="form-group">
                                        <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                                    </div>
                                </center>
                            </div>
                        </div>
                    </div>
                </div>
                <a href="WebForm2.aspx"><< Back to Home</a><br>
                <br>
            </div>
        </div>
    </div>
</asp:Content>
