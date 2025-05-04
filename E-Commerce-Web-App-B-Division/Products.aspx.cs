using E_Commerce_Web_App_B_Division.Models;
using Org.BouncyCastle.Asn1.Ocsp;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce_Web_App_B_Division
{
	public partial class Products : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				int categoryid = 0;
				if (Request.QueryString["CategoryId"] != null)
				{
					categoryid = int.Parse(Request.QueryString["CategoryId"].ToString());
				}
				TblProduct product = new TblProduct();
				product.CategoryId = categoryid;
                DataTable dtable = product.List();
				rptProducts.DataSource = dtable;
                rptProducts.DataBind();
            }
		}
	}
}