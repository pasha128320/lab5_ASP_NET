using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.NetworkInformation;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string zapros = "SELECT status.status, package.departureDate, package.gettingDate, package.idStatus, package.idПосылки FROM(package INNER JOIN status ON package.idStatus = status.idStatus) WHERE package.idПосылки = " + TextBox3.Text;
            SqlDataSource266765.SelectCommand = zapros;
            GridView2.Visible = true;
        }
    }
}