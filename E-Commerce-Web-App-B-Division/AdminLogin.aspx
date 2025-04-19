<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="E_Commerce_Web_App_B_Division.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
  <meta content="width=device-width, initial-scale=1.0" name="viewport" />

  <title>Admin Login</title>
  <meta name="robots" content="noindex, nofollow" />
  <meta content="" name="description" />
  <meta content="" name="keywords" />

  <!-- Favicons -->
  <link href="assets/img/favicon-1.png" rel="icon" />
  <link href="assets/img/apple-touch-icon-1.png" rel="apple-touch-icon" />

  <link href="https://fonts.gstatic.com" rel="preconnect" />

  <link href="admin-assets/vendors/bootstrap/css/bootstrap.min-1.css" rel="stylesheet" />
  <link href="admin-assets/vendors/bootstrap-icons/bootstrap-icons-1.css" rel="stylesheet" />
  <link href="admin-assets/vendors/boxicons/css/boxicons.min-1.css" rel="stylesheet" />
  <link href="admin-assets/vendors/quill/quill.snow-1.css" rel="stylesheet" />
  <link href="admin-assets/vendors/quill/quill.bubble-1.css" rel="stylesheet" />
  <link href="admin-assets/vendors/remixicon/remixicon-1.css" rel="stylesheet" />
  <link href="admin-assets/vendors/simple-datatables/style-1.css" rel="stylesheet" />
  <link href="admin-assets/css/style-1.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <main>
    <div class="container">

      <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

              <div class="d-flex justify-content-center py-4">
                <a href="index-1.html" class="logo d-flex align-items-center w-auto">
                  <img src="assets/img/logo-1.png" alt="">
                  <span class="d-none d-lg-block">NiceAdmin</span>
                </a>
              </div><!-- End Logo -->

              <div class="card mb-3">

                <div class="card-body">

                  <div class="pt-4 pb-2">
                    <h5 class="card-title text-center pb-0 fs-4">Login to Your Account</h5>
                    <p class="text-center small">Enter your username & password to login</p>
                  </div>

                  <div class="row g-3 needs-validation">

                    <div class="col-12">
                      <label for="yourUsername" class="form-label">Username</label>
                      <div class="input-group has-validation">
                        <span class="input-group-text" id="inputGroupPrepend">@</span>
                        <input type="text" name="username" class="form-control" id="yourUsername">
                        <div class="invalid-feedback">Please enter your username.</div>
                      </div>
                    </div>

                    <div class="col-12">
                      <label for="yourPassword" class="form-label">Password</label>
                      <input type="password" name="password" class="form-control" id="yourPassword">
                      <div class="invalid-feedback">Please enter your password!</div>
                    </div>
                    <div class="col-12">
                        <asp:Button OnClick="btnLogin_Click" runat="server" ID="btnLogin" Text="Login" CssClass="btn btn-primary w-100" />
                    </div>
                    <div class="col-12">
                      <p class="small mb-0">Don't have account? <a href="pages-register-1.html">Create an account</a></p>
                    </div>
                  </div>

                </div>
              </div>

              <div class="credits">
                <!-- All the links in the footer should remain intact. -->
                <!-- You can delete the links only if you purchased the pro version. -->
                <!-- Licensing information: https://bootstrapmade.com/license/ -->
                <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
                Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
              </div>

            </div>
          </div>
        </div>

      </section>

    </div>
  </main><!-- End #main -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="admin-assets/vendors/apexcharts/apexcharts.min-1.js"></script>
  <script src="admin-assets/vendors/bootstrap/js/bootstrap.bundle.min-1.js"></script>
  <script src="admin-assets/vendors/chart.js/chart.umd-1.js"></script>
  <script src="admin-assets/vendors/echarts/echarts.min-1.js"></script>
  <script src="admin-assets/vendors/quill/quill-1.js"></script>
  <script src="admin-assets/vendors/simple-datatables/simple-datatables-1.js"></script>
  <script src="admin-assets/vendors/tinymce/tinymce.min-1.js"></script>
  <script src="admin-assets/vendors/php-email-form/validate-1.js"></script>

  <!-- Template Main JS File -->
  <script src="admin-assets/js/main-1.js"></script>
    </form>
</body>
</html>
