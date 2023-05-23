using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccessLayer;

namespace DurmaPly.AdminPanel
{
    public partial class NewsAdd : System.Web.UI.Page
    {
        DataModel dm = new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_NewsAdd_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(tb_Title.Text.Trim()))
            {
                if (!string.IsNullOrEmpty(tb_content.Text.Trim()))
                {
                    news n = new news();
                    n.Title = tb_Title.Text;
                    n.Content = tb_content.Text;
                    n.NewsViews = 0;
                    n.NewsDateTime = DateTime.Now;
                    if (fu_img.HasFile)
                    {
                        FileInfo fi = new FileInfo(fu_img.FileName);
                        string extension = fi.Extension;
                        string name = Guid.NewGuid().ToString();
                        n.Img = name + extension;
                        fu_img.SaveAs(Server.MapPath("../AdminPanel/Images/" +name+extension));
                        if (dm.NewsAdd(n))
                        {
                            tb_Title.Text = " ";
                            tb_content.Text = " ";
                            pnl_succes.Visible = true;
                        }
                        else
                        {
                            pnl_error.Visible = true;
                            lbl_eror.Text = "Eklenirken Bir Hata Oluştu";
                        }
                    }
                    else
                    {
                        pnl_error.Visible = true;
                        lbl_eror.Text = "Lütfen Resim ekleyiniz";
                    }
                }
                else
                {
                    pnl_error.Visible = true;
                    lbl_eror.Text = "Lütfen İçerik ekleyiniz";
                }
            }
            else
            {
                pnl_error.Visible = true;
                lbl_eror.Text = "Lütfen Haber Başlığı ekleyiniz";
            }
        }
    }
}