using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccessLayer;

namespace DurmaPly.AdminPanel
{
    public partial class AdminList : System.Web.UI.Page
    {
        DataModel dm = new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            lv_Admin.DataSource = dm.AdminList();
            lv_Admin.DataBind();
        }

        protected void lv_Admin_ItemCommand(object sender, ListViewCommandEventArgs e)
        {

        }
    }
}