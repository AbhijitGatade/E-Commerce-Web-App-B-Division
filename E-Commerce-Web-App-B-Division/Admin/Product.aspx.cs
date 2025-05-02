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
	public partial class Product : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!Page.IsPostBack)
			{
				TblCategories categories = new TblCategories();
				DataTable dtable = categories.List();
				ddlCategory.DataSource = dtable;
				ddlCategory.DataTextField = "Name";
				ddlCategory.DataValueField = "Id";
				ddlCategory.DataBind();
				ddlCategory.Items.Insert(0, new ListItem("Select", ""));

				if (Request.QueryString["action"] != null)
				{
					TblProduct product = new TblProduct();
					int id= int.Parse(Request.QueryString["id"].ToString());
					product.GetById(id);
					ddlCategory.SelectedValue = product.CategoryId.ToString();
					txtName.Text = product.Name;
					txtMRP.Text = product.MRP.ToString();
					txtPrice.Text = product.Price.ToString();
					rbtnlInStock.SelectedValue = product.InStock;
                    txtSrNo.Text = product.SrNo.ToString();
					txtDescription.Text = product.Description;
                }
            }
		}

        protected void btnSave_Click(object sender, EventArgs e)
        {
			if(validateCategory.IsValid && validatorName.IsValid)
			{
				TblProduct product = new TblProduct();
				product.Id = 0;
				product.CategoryId = int.Parse(ddlCategory.SelectedValue);
				product.Name = txtName.Text.Replace("'", "''");
                product.MRP = float.Parse(txtMRP.Text);
                product.Price = float.Parse(txtPrice.Text);
				product.Description = txtDescription.Text.Replace("'", "''");
				product.InStock = rbtnlInStock.SelectedValue;
                product.SrNo = int.Parse(txtSrNo.Text);
				product.ImagePath = "";
                string message = "";
					bool result = true;

                if (fuImage.HasFile)
                {
                    // Generate a dynamic file name using a GUID
                    string fileName = Guid.NewGuid().ToString() + ".png";
                    // Define the path to the 'productpics' folder
                    string folderPath = Server.MapPath("~/productpics/");
                    // Ensure the folder exists
                    if (!System.IO.Directory.Exists(folderPath))
                    {
                        System.IO.Directory.CreateDirectory(folderPath);
                    }
                    // Combine the folder path and file name
                    string filePath = System.IO.Path.Combine(folderPath, fileName);
                    // Save the uploaded file
                    fuImage.SaveAs(filePath);
                    // Save the file path to the database
                    product.ImagePath = "productpics/" + fileName;
                }
                if (Request.QueryString["action"] != null)
				{
					product.Id = int.Parse(Request.QueryString["id"].ToString());
					result = product.Update(ref message);
				}
				else
				{
					result = product.Insert(ref message);
				}
                //If query executed and file is choose upload to folder
                
                if (!result)
				{
					lblMessage.Text = message;
                }
				else
				{
					Response.Redirect("Product.aspx");
				}
            }
        }
    }
}