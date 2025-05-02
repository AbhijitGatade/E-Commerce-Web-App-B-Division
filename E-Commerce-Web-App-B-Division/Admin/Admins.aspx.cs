using E_Commerce_Web_App_B_Division.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce_Web_App_B_Division.Admin
{
	public partial class Admins : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
            if (!IsPostBack)
            {
                if(Request.QueryString["action"] != null)
                {
                    string action = Request.QueryString["action"].ToString();
                    if (action.Equals("delete"))
                    {
                        TblAdmin admin = new TblAdmin();
                        int id= int.Parse(Request.QueryString["id"].ToString());
                        string message = "";
                        admin.Delete(id, ref message);
                        Response.Redirect("Admins.aspx");
                    }
                    if (action.Equals("edit"))
                    {
                        TblAdmin admin = new TblAdmin();
                        int id = int.Parse(Request.QueryString["id"].ToString());
                        admin.GetById(id);
                        txtName.Text = admin.Name;
                        txtUsername.Text = admin.Username;
                        txtPassword.Text = admin.Password;
                    }
                }
                bind(); 
            }

        }

        public void bind()
        {
            TblAdmin admin = new TblAdmin();
            DataTable dtable = admin.List();
            gvData.DataSource = dtable;
            gvData.DataBind();           
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (validatorName.IsValid && validatorUsername.IsValid && validatorPassword.IsValid)
            {   
                TblAdmin admin = new TblAdmin();                
                admin.Name = txtName.Text.Replace("'", "''");
                admin.Username = txtUsername.Text.Replace("'", "''");
                admin.Password = txtPassword.Text.Replace("'", "''");
                string message = "";
                bool result = true;
                if (Request.QueryString["id"] != null)
                {
                    admin.Id = int.Parse(Request.QueryString["id"].ToString());
                    result = admin.Update(ref message);
                }
                else
                {
                    admin.Id = 0;
                    result = admin.Insert(ref message);
                }
                if (result)
                    Response.Redirect("Admins.aspx");
                else
                    lblMessage.Text = message;
            }
        }
    }
}