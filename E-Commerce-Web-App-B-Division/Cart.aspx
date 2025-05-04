<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="E_Commerce_Web_App_B_Division.Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-heading" id="top">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="inner-content">
                        <h2>Cart</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <section class="section" id="products">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <asp:GridView runat="server" ID="gvData" AutoGenerateColumns="false">
                        <Columns>
                            <asp:BoundField DataField="SrNo" HeaderText="SrNo" />
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Image runat="server" ID="imgProduct" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="Name" HeaderText="Name" />
                            <asp:BoundField DataField="Price" HeaderText="Price" />
                            <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                            <asp:BoundField DataField="Total" HeaderText="Total" />
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Button Text="Remove" runat="server" ID="btnDelete" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <asp:Label runat="server" Text="Total:1000" ID="lblTotal"></asp:Label>
                    <br />
                    <asp:HyperLink runat="server" ID="hlinkCehckout" NavigateUrl="~/Checkout.aspx" CssClass="btn btn-primary">Checkout</asp:HyperLink>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
