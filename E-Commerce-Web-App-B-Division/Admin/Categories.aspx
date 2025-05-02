<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Categories.aspx.cs" Inherits="E_Commerce_Web_App_B_Division.Admin.Categories" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main id="main" class="main">
        <div class="pagetitle">
            <h1>Categories</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="Home.aspx">Masters</a></li>
                    <li class="breadcrumb-item active">Categories</li>
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
                                <div class="col-lg-8">
                                    Name*
                                    <asp:TextBox runat="server" ID="txtName" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator Display="Dynamic"  Font-Size="Small" ID="validatorName" runat="server" ControlToValidate="txtName" ForeColor="Red" ErrorMessage="Name is required"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col-lg-4">
                                    SrNo*
                                    <asp:TextBox runat="server" ID="txtSrNo" TextMode="Number" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator Display="Dynamic"  Font-Size="Small" ID="validateSrNo" runat="server" ControlToValidate="txtSrNo" ForeColor="Red" ErrorMessage="SrNo is required"></asp:RequiredFieldValidator>
                                    <asp:RangeValidator runat="server" Display="Dynamic" Type="Integer" ID="validateRangeSrNo" ControlToValidate="txtSrNo" ForeColor="Red" Font-Size="Small" CssClass="text-danger" MinimumValue="1" MaximumValue="100" ErrorMessage="SrNo required in range(0-100)"></asp:RangeValidator>
                                </div>
                                <div class="col-lg-12 mt-2">
                                    <asp:Button runat="server" OnClick="btnSave_Click" ID="btnSave" Text="Save" CssClass="btn btn-outline-primary" />
                                    <asp:Button runat="server" CssClass="btn btn-outline-danger" ID="btnCancel" Text="Cancel" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12">
    <div class="card">
        <div class="card-body">
            <div class="row m-2">
                <asp:GridView ID="gvData" CssClass="table table-bordered table-striped" runat="server" AutoGenerateColumns="false">
                    <Columns>
                        <asp:TemplateField HeaderText="Actions" ItemStyle-Width="100px">
                            <ItemTemplate>
                                <asp:HyperLink ID="hlinkEdit" CssClass="btn btn-sm btn-primary" NavigateUrl='<%# "Categories.aspx?action=edit&id=" + Eval("Id") %>'  runat="server"><i class="bi bi-pencil"></i></asp:HyperLink>
                                <asp:HyperLink onclick="return confirm('Sure to delete?')" ID="hlinkDelete" CssClass="btn btn-sm btn-danger" NavigateUrl='<%# "Categories.aspx?action=delete&id=" + Eval("Id") %>'  runat="server"><i class="bi bi-trash"></i></asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="SrNo" HeaderText="No" ItemStyle-HorizontalAlign="Right" ItemStyle-Width="60px" />
                        <asp:BoundField DataField="Name" HeaderText="Name" />
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
