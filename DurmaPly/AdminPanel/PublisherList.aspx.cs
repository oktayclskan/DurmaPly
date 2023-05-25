using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccessLayer;

namespace DurmaPly.AdminPanel
{
    public partial class PublisherList : System.Web.UI.Page
    {
        DataModel dm =new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            lv_publisher.DataSource = dm.PublisherList();
            lv_publisher.DataBind();
        }

        protected void lv_publisher_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);
            if (e.CommandName == "Dlt")
            {
                dm.PublisherDlt(id);
            }
            lv_publisher.DataSource = dm.PublisherList();
            lv_publisher.DataBind();
        }
    }
}