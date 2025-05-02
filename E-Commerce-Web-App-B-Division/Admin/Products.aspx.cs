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
	public partial class Products : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				bind();
			}
		}

		public void bind()
		{
			TblProduct product = new TblProduct();
			DataTable dtable = new DataTable();
			dtable = product.List();
			gvData.DataSource = dtable;
            gvData.DataBind();
        }
	}
}