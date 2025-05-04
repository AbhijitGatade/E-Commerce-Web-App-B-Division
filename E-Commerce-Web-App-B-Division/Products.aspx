<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="E_Commerce_Web_App_B_Division.Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-heading" id="top">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="inner-content">
                        <h2>Check Our Products</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <section class="section" id="products">
        <div class="container">
            <div class="row">
                <asp:Repeater runat="server" ID="rptProducts">
                    <ItemTemplate>
                <div class="col-lg-4 text-center">
                    <a href="Product.aspx?Id=<%# Eval("Id") %>">
                    <div class="item">
                        <div class="thumb">
                            <img src="<%# Eval("ImagePath") %>" alt="">
                        </div>
                        <h6><%# Eval("Name") %></h6>
                        <b>&#8377;<%# Eval("Price") %></b><del class="text-danger">(&#8377;<%#Eval("MRP") %>)</del>
                        
                    </div>
                        </a>
                </div></ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </section>
</asp:Content>
