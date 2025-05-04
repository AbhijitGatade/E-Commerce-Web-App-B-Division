using E_Commerce_Web_App_B_Division.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce_Web_App_B_Division
{
	public partial class Product : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				TblProduct product = new TblProduct();
				int id = int.Parse(Request.QueryString["Id"].ToString());
				product.GetById(id);
                lblProductName.Text = product.Name;
				lblName.Text = product.Name;
				lblPrice.Text = "&#8377;" + product.Price.ToString("#0.00") + "(<del>&#8377;" + product.MRP.ToString("#0.00") + "</del>)";
				imgProduct.ImageUrl = product.ImagePath;

				TblCategories category = new TblCategories();
				category.GetById(product.CategoryId);
                lblCategory.Text = category.Name;
				lblDescription.Text = product.Description;
				txtQuantity.Text = "1";
				lblInStock.Text = product.InStock;
				if (product.InStock.Equals("No"))
				{
					pnlCart.Visible = false;
				}
            }

		}

        protected void btnAddToCart_Click(object sender, EventArgs e)
        {

        }
    }
}