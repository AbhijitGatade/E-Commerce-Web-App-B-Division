<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="E_Commerce_Web_App_B_Division.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-heading" id="top">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="inner-content">
                        <h2>Login & Registration</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <section class="section" id="forms">
        <div class="container">
            <div class="row">
                <asp:Panel CssClass="col-lg-6" runat="server" ID="pnlLogin">
                    <h3>Login</h3>
                    <asp:Label runat="server" Text="Email:" AssociatedControlID="txtLoginEmail"></asp:Label>
                    <asp:TextBox runat="server" ID="txtLoginEmail" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtLoginEmail" ErrorMessage="Email is required." CssClass="text-danger"></asp:RequiredFieldValidator>
                    <br />

                    <asp:Label runat="server" Text="Password:" AssociatedControlID="txtLoginPassword"></asp:Label>
                    <asp:TextBox runat="server" ID="txtLoginPassword" CssClass="form-control" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="txtLoginPassword" ErrorMessage="Password is required." CssClass="text-danger"></asp:RequiredFieldValidator>
                    <br />

                    <asp:Button runat="server" ID="btnLogin" Text="Login" CssClass="btn btn-primary" />
                    <asp:LinkButton runat="server" ID="btnGotoRegister" OnClick="Unnamed_Click">Goto Register</asp:LinkButton>
                </asp:Panel>
            </div>
            <asp:Panel CssClass="col-lg-6" runat="server" ID="pnlRegister" Visible="false">
                <h3>Register</h3>
                <asp:Label runat="server" Text="Name:" AssociatedControlID="txtName"></asp:Label>
                <asp:TextBox runat="server" ID="txtName" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtName" ErrorMessage="Name is required." CssClass="text-danger"></asp:RequiredFieldValidator>
                <br />

                <asp:Label runat="server" Text="Email:" AssociatedControlID="txtEmail"></asp:Label>
                <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required." CssClass="text-danger"></asp:RequiredFieldValidator>
                <br />

                <asp:Label runat="server" Text="Mobile No:" AssociatedControlID="txtMobileNo"></asp:Label>
                <asp:TextBox runat="server" ID="txtMobileNo" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtMobileNo" ErrorMessage="Mobile No is required." CssClass="text-danger"></asp:RequiredFieldValidator>
                <br />

                <asp:Label runat="server" Text="Password:" AssociatedControlID="txtPassword"></asp:Label>
                <asp:TextBox runat="server" ID="txtPassword" CssClass="form-control" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required." CssClass="text-danger"></asp:RequiredFieldValidator>
                <br />

                <asp:Label runat="server" Text="Confirm Password:" AssociatedControlID="txtConfirmPassword"></asp:Label>
                <asp:TextBox runat="server" ID="txtConfirmPassword" CssClass="form-control" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="Confirm Password is required." CssClass="text-danger"></asp:RequiredFieldValidator>
                <asp:CompareValidator runat="server" ControlToValidate="txtConfirmPassword" ControlToCompare="txtPassword" ErrorMessage="Passwords do not match." CssClass="text-danger"></asp:CompareValidator>
                <br />
                <asp:Button runat="server" ID="btnRegister" Text="Register" CssClass="btn btn-primary" />
                <asp:LinkButton runat="server" ID="btnGotoLogin" OnClick="btnGotoLogin_Click">Goto Login</asp:LinkButton>
            </asp:Panel>
        </div>
    </section>
</asp:Content>
