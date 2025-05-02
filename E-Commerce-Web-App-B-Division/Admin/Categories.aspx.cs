using E_Commerce_Web_App_B_Division.Models;
using MySqlX.XDevAPI.Common;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.XPath;

namespace E_Commerce_Web_App_B_Division.Admin
{
	public partial class Categories : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!Page.IsPostBack)
			{
				if (Request.QueryString["action"] != null)
				{
					string action = Request.QueryString["action"].ToString();
					if (action.Equals("delete"))
					{
						TblCategories categories = new TblCategories();
						string message = "";
						int id = int.Parse(Request.QueryString["id"].ToString());
						categories.Delete(id, ref message);
						Response.Redirect("Categories.aspx");
					}
                    if (action.Equals("edit"))
                    {
                        TblCategories categories = new TblCategories();
                        string message = "";
                        int id = int.Parse(Request.QueryString["id"].ToString());
						categories.GetById(id);
						txtName.Text = categories.Name;
						txtSrNo.Text = categories.SrNo.ToString();
                    }

                }
				bind();
			}
		}

		public void bind()
		{
			TblCategories categories = new TblCategories();
			DataTable dtable = categories.List();
			gvData.DataSource = dtable;
			gvData.DataBind();
		}

        protected void btnSave_Click(object sender, EventArgs e)
        {
			if(validatorName.IsValid && validateSrNo.IsValid && validateRangeSrNo.IsValid)
			{
				TblCategories categories = new TblCategories();
				categories.Name = txtName.Text.Replace("'", "''");
				categories.SrNo = int.Parse(txtSrNo.Text);
                string message = "";
				bool result = true;
				if (Request.QueryString["action"] != null)
				{
					categories.Id = int.Parse(Request.QueryString["id"].ToString());
                    result = categories.Update(ref message);
                }
				else
				{
					categories.Id = 0;
                    result = categories.Insert(ref message);
                }
				if (result)
					Response.Redirect("Categories.aspx");
				else
				{
					lblMessage.Text = message;
				}
            }
        }
    }
}