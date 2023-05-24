using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccessLayer;

namespace DurmaPly.AdminPanel
{
    public partial class MemberList : System.Web.UI.Page
    {
        DataModel dm = new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            lv_Member.DataSource = dm.MemberList();
            lv_Member.DataBind();
        }

        protected void lv_Member_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);
            if (e.CommandName == "Dlt")
            {
                dm.MemberDlt(id);
            }
            lv_Member.DataSource = dm.MemberList();
            lv_Member.DataBind();
        }
    }
}