<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="E_Commerce_Web_App_B_Division.Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-heading" id="top">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="inner-content">
                        <h2><asp:Label runat="server" ID="lblName"></asp:Label></h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <section class="section" id="products">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <asp:Image runat="server" ID="imgProduct" />
                </div>
                <div class="col-lg-6">
                    <asp:Label runat="server" ID="lblProductName" Font-Size="Large"></asp:Label>
                        <br />
                    <b>In Stock:</b>
                    <asp:Label runat="server" ID="lblInStock"></asp:Label>
                    <br />
                    <asp:Label runat="server" ID="lblPrice"></asp:Label>
                    <br />
                    <asp:Label runat="server" ID="lblCategory"></asp:Label>
                    <br />
                    <b>Description</b><br />
                    <asp:Label runat="server" ID="lblDescription"></asp:Label>
                    <br />
                    <asp:Panel runat="server" ID="pnlCart">
                    <asp:Button runat="server" CssClass="btn btn-outline-warning" ID="btnMinus" Text="-" />
                    <asp:TextBox runat="server" Enabled="false" style="text-align:center;" ID="txtQuantity" Text="" Width="100px"></asp:TextBox>
                    <asp:Button runat="server" CssClass="btn btn-outline-warning" ID="btnAdd" Text="+" />
                    <br />
                    <asp:Button runat="server" CssClass="btn btn-outline-success" ID="btnAddToCart" Text="Add To Cart" OnClick="btnAddToCart_Click" />
                        </asp:Panel>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
