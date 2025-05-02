<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="E_Commerce_Web_App_B_Division.Admin.Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main id="main" class="main">
        <div class="row">
            <div class="col-lg-10">
                <div class="pagetitle">
                    <h1>Products</h1>
                    <nav>
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="Home.aspx">Masters</a></li>
                            <li class="breadcrumb-item active">Products</li>
                        </ol>
                    </nav>

                </div>
            </div>
            <div class="col-lg-2">
                <a href="Product.aspx" class="btn btn-sm btn-outline-primary pull-right">+ Product</a>
            </div>
        </div>

        <!-- End Page Title -->

        <section class="section dashboard">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="row m-2">
                                <asp:GridView ID="gvData" CssClass="table table-bordered table-striped" runat="server" AutoGenerateColumns="false">
                                    <Columns>
                                        <asp:TemplateField HeaderText="Actions" ItemStyle-Width="100px">
                                            <ItemTemplate>
                                                <asp:HyperLink ID="hlinkEdit" CssClass="btn btn-sm btn-primary" NavigateUrl='<%# "Product.aspx?action=edit&id=" + Eval("Id") %>' runat="server"><i class="bi bi-pencil"></i></asp:HyperLink>
                                                <asp:HyperLink onclick="return confirm('Sure to delete?')" ID="hlinkDelete" CssClass="btn btn-sm btn-danger" NavigateUrl='<%# "Products.aspx?action=delete&id=" + Eval("Id") %>' runat="server"><i class="bi bi-trash"></i></asp:HyperLink>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="SerialNo" HeaderText="No" ItemStyle-HorizontalAlign="Right" ItemStyle-Width="60px" />
                                        <asp:BoundField DataField="CategoryName" HeaderText="Category" />
                                        <asp:TemplateField HeaderText="Image">
                                            <ItemTemplate>
                                                <asp:Image ImageUrl='<%# "../" + Eval("ImagePath") %>' runat="server" Height="80px" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="Name" HeaderText="Name" />
                                        <asp:BoundField DataField="MRP" HeaderText="MRP" />
                                        <asp:BoundField DataField="Price" HeaderText="Price" />
                                        <asp:BoundField DataField="InStock" HeaderText="In Stock" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
</asp:Content>
