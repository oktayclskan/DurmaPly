﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccessLayer;

namespace DurmaPly.UserPanel
{
    public partial class NewsRead : System.Web.UI.Page
    {
        DataModel dm = new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString.Count !=0)
            {
                int id = Convert.ToInt32(Request.QueryString["nid"]);
                news n= dm.NewsGet(id);
                ltrl_content.Text = n.Content;
            }
        }
    }
}