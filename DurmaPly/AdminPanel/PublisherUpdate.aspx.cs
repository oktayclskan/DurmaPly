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
    public partial class PublisherUpdate : System.Web.UI.Page
    {
        DataModel dm = new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString.Count != 0)
            {
                if (!IsPostBack)
                {
                    int id = Convert.ToInt32(Request.QueryString["sid"]);
                    Publisher p = dm.PublisherGet(id);
                    tb_Name.Text = p.Name;
                    tb_Url.Text = p.Url;
                    fu_img.ImageUrl = "../AdminPanel/Images/" + p.Img;
                }
            }
            else
            {
                Response.Redirect("PublisherList.aspx");
            }
        }

        protected void btn_PublisherUpdate_Click(object sender, EventArgs e)
        {

            int id = Convert.ToInt32(Request.QueryString["sid"]);
            Publisher p = dm.PublisherGet(id);
            p.Name = tb_Name.Text;
            p.Url = tb_Url.Text;
            if (fu_imguptdate.HasFile)
            {
                FileInfo fi = new FileInfo(fu_imguptdate.FileName);
                string connect = fi.Extension;
                string name = Guid.NewGuid().ToString();
                p.Img = name + connect;
                fu_imguptdate.SaveAs(Server.MapPath("../AdminPanel/Images/" + name + connect));
                if (dm.PublisherUpdate(p))
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