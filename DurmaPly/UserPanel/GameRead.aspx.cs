using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccessLayer;
using System.Data.SqlClient;



namespace DurmaPly.UserPanel
{
    public partial class GameRead : System.Web.UI.Page
    {
        DataModel dm = new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString.Count !=0)
            {
                int id = Convert.ToInt32(Request.QueryString["gid"]);
                Games g = dm.GameGet(id);
                ltrl_GameName.Text = g.Name;
                ltrl_discountPercentage.Text = g.discountPercentage;
                ltrl_content.Text = g.Content;

            }


        }
    }
}