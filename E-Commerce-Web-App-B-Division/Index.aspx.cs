using E_Commerce_Web_App_B_Division.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce_Web_App_B_Division
{
	public partial class Index : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				TblCategories category = new TblCategories();
				DataTable dtCategories = category.List();
				rptCategories.DataSource = dtCategories;
                rptCategories.DataBind();
            }
		}
	}
}