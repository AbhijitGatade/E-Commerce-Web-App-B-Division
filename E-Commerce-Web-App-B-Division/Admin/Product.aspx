<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="E_Commerce_Web_App_B_Division.Admin.Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main id="main" class="main">
        <div class="pagetitle">
            <h1>Product</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="Home.aspx">Masters</a></li>
                    <li class="breadcrumb-item"><a href="Products.aspx">Products</a></li>
                    <li class="breadcrumb-item active">Product</li>
                </ol>
            </nav>
        </div>

        <section class="section dashboard">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="row m-2">
                                <div class="col-lg-12">
                                    <asp:Label runat="server" ID="lblMessage" ForeColor="Red"></asp:Label>
                                </div>
                                <div class="col-lg-4">
                                    Category*
                                    <asp:DropDownList runat="server" ID="ddlCategory" CssClass="form-control"></asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="validateCategory" CssClass="text-danger" Font-Size="Small" ControlToValidate="ddlCategory" runat="server" ErrorMessage="Category is required"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col-lg-4">
                                    Name*
                                    <asp:TextBox runat="server" CssClass="form-control" ID="txtName"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="validatorName" CssClass="text-danger" Font-Size="Small" ControlToValidate="txtName" runat="server" ErrorMessage="Name is required"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col-lg-4">
                                    Image*
                                    <asp:FileUpload accept="image/*" runat="server" ID="fuImage" />
                                    </div>
                                <div class="col-lg-3">
                                    MRP*
                                    <asp:TextBox runat="server" CssClass="form-control" ID="txtMRP" TextMode="Number"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="validateMRP" CssClass="text-danger" Font-Size="Small" ControlToValidate="txtMRP" runat="server" ErrorMessage="MRP is required"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col-lg-3">
                                    Price*
                                    <asp:TextBox runat="server" CssClass="form-control" ID="txtPrice" TextMode="Number"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="validatePrice" CssClass="text-danger" Font-Size="Small" ControlToValidate="txtPrice" runat="server" ErrorMessage="Price is required"></asp:RequiredFieldValidator>
                                </div>                                
                                <div class="col-lg-3">
                                    In Stock*
                                       <asp:RadioButtonList RepeatDirection="Horizontal" ID="rbtnlInStock" runat="server">
                                           <asp:ListItem Value="Yes" Selected="True">Yes</asp:ListItem>
                                            <asp:ListItem Value="No">No</asp:ListItem>
                                       </asp:RadioButtonList>                                    
                                </div>
                                <div class="col-lg-3">
                                    SrNo*
                                    <asp:TextBox runat="server" CssClass="form-control" ID="txtSrNo" TextMode="Number"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="validateSrNo" CssClass="text-danger" Font-Size="Small" ControlToValidate="txtSrNo" runat="server" ErrorMessage="SrNo is required"></asp:RequiredFieldValidator>
                                </div>   
                                <div class="col-lg-12">
                                    Description*
                                    <asp:TextBox runat="server" CssClass="form-control" ID="txtDescription" TextMode="MultiLine"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="validateDescription" CssClass="text-danger" Font-Size="Small" ControlToValidate="txtDescription" runat="server" ErrorMessage="Description is required"></asp:RequiredFieldValidator>
</div>   
                                <div class="col-lg-12 mt-2">
                                    <asp:Button runat="server" OnClick="btnSave_Click" CssClass="btn btn-outline-primary" ID="btnSave" Text="Save" />
                                    <a href="Products.aspx" class="btn btn-outline-danger">Cancel</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
</asp:Content>
