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
    public partial class GameUpdate : System.Web.UI.Page
    {
        DataModel dm = new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString.Count != 0)
            {
                if (!IsPostBack)
                {
                    int id = Convert.ToInt32(Request.QueryString["gid"]);
                    Games g = dm.GameGet(id);
                    tb_name.Text = g.Name;
                    tb_content.Text = g.Content;
                    fu_img.ImageUrl = "../AdminPanel/Images/" + g.img;

                    tb_discountPercentage.Text = g.discountPercentage;
                    tb_noDiscount.Text = g.noDiscount.ToString();
                    tb_discountRate.Text = g.DiscountRate.ToString();
                }
            }
            else
            {
                Response.Redirect("GameList.aspx");
            }
        }

        protected void btn_GameAdd_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["gid"]);
            Games g = dm.GameGet(id);
            g.Name = tb_name.Text;
            g.Content = tb_content.Text;
            g.discountPercentage = tb_discountPercentage.Text;
            g.noDiscount = Convert.ToDecimal(tb_noDiscount.Text);
            g.DiscountRate = Convert.ToDecimal(tb_discountRate.Text);
            if (fu_imguptdate.HasFile)
            {
                FileInfo fi = new FileInfo(fu_imguptdate.FileName);
                string connect = fi.Extension;
                string name = Guid.NewGuid().ToString();
                g.img = name + connect;
                fu_imguptdate.SaveAs(Server.MapPath("../AdminPanel/Images/" + name + connect));
                if (dm.GameUpdate(g))
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