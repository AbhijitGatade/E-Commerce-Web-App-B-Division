<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="E_Commerce_Web_App_B_Division.Checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-heading" id="top">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="inner-content">
                        <h2>Checkout</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <section class="section" id="products">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <h2>Address</h2>
                    <asp:Panel runat="server" ID="pnlOrderForm">
                        <asp:Label runat="server" Text="Name:" AssociatedControlID="txtName"></asp:Label>
                        <asp:TextBox runat="server" ID="txtName" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtName" ErrorMessage="Name is required." CssClass="text-danger"></asp:RequiredFieldValidator>
                        <br />

                        <asp:Label runat="server" Text="Address:" AssociatedControlID="txtAddress"></asp:Label>
                        <asp:TextBox runat="server" ID="txtAddress" CssClass="form-control" TextMode="MultiLine" Rows="3"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtAddress" ErrorMessage="Address is required." CssClass="text-danger"></asp:RequiredFieldValidator>
                        <br />

                        <asp:Label runat="server" Text="Landmark:" AssociatedControlID="txtLandmark"></asp:Label>
                        <asp:TextBox runat="server" ID="txtLandmark" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtLandmark" ErrorMessage="Landmark is required." CssClass="text-danger"></asp:RequiredFieldValidator>
                        <br />

                        <asp:Label runat="server" Text="City:" AssociatedControlID="txtCity"></asp:Label>
                        <asp:TextBox runat="server" ID="txtCity" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtCity" ErrorMessage="City is required." CssClass="text-danger"></asp:RequiredFieldValidator>
                        <br />

                        <asp:Label runat="server" Text="State:" AssociatedControlID="ddlState"></asp:Label>
                        <asp:DropDownList runat="server" ID="ddlState" CssClass="form-control">
                            <asp:ListItem Value="Maharashtra">Maharashtra</asp:ListItem>
                            <asp:ListItem Value="Karnataka">Karnataka</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlState" ErrorMessage="State is required." CssClass="text-danger"></asp:RequiredFieldValidator>
                        <br />

                        <asp:Label runat="server" Text="Pincode:" AssociatedControlID="txtPincode"></asp:Label>
                        <asp:TextBox runat="server" ID="txtPincode" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPincode" ErrorMessage="Pincode is required." CssClass="text-danger"></asp:RequiredFieldValidator>
                        <br />

                        <asp:Button runat="server" ID="btnSubmit" Text="Place Order" CssClass="btn btn-primary" />
                    </asp:Panel>
                </div>
                <div class="col-lg-6">
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
                        </Columns>
                    </asp:GridView>
                    <asp:Label runat="server" Text="Total:1000" ID="lblTotal"></asp:Label>
                    <button onclick="return payNow()" class="btn btn-success">Pay Now</button>
                    <br />
                </div>
            </div>
        </div>
    </section>

    <script>
        function payNow() {
            var options = {
                "key": "rzp_live_D1UAvgPpiDhQ6M",
                "amount": "200",
                "currency": "INR",
                "name": "Abhijit Gatade",
                "description": "Test Transaction",
                "handler": function (response) {
                    alert("Payment Successful");
                    alert("Payment ID: " + response.razorpay_payment_id);
                    //Call back end code to make payment success - change status
                    // Optionally use AJAX or form submission to verify payment on server
                },
                "modal": {
                    "ondismiss": function () {
                        alert("⚠️ Payment Popup Closed. Transaction Cancelled.");
                    }
                }
            };
            var rzp = new Razorpay(options);
            rzp.open();
            return false;
        }
    </script>
</asp:Content>
