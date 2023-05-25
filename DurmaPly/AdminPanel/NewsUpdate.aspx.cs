using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccessLayer;
using System.IO;

namespace DurmaPly.AdminPanel
{
    public partial class NewsUpdate : System.Web.UI.Page
    {
        DataModel dm = new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString.Count != 0)
            {
                if (!IsPostBack)
                {
                    int id = Convert.ToInt32(Request.QueryString["nid"]);
                    news n = dm.NewsGet(id);
                    tb_Title.Text = n.Title;
                    tb_Content.Text = n.Content;
                    fu_img.ImageUrl = "../AdminPanel/Images/" + n.Img;
                }
            }
            else
            {
                Response.Redirect("NewsList.aspx");
            }
        }

        protected void btn_NewsUpdate_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["nid"]);
            news n = dm.NewsGet(id);
            n.Title = tb_Title.Text;
            n.Content = tb_Content.Text;
            if (fu_imguptdate.HasFile)
            {
                FileInfo fi = new FileInfo(fu_imguptdate.FileName);
                string connect = fi.Extension;
                string name = Guid.NewGuid().ToString();
                n.Img = name + connect;
                fu_imguptdate.SaveAs(Server.MapPath("../AdminPanel/Images/" + name + connect));
                if (dm.NewsUpdate(n))
                {
                    pnl_succes.Visible = true;

                }
                else
                {
                    pnl_error.Visible = true;
                    lbl_eror.Text = "Günellenirken bir hata oluştu";
                }
            }
        }
    }
}