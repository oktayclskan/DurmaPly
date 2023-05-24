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
    public partial class CommentAdd : System.Web.UI.Page
    {
        DataModel dm = new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_CommentAdd_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(tb_content.Text.Trim()))
            {
                if (!string.IsNullOrEmpty(tb_Title.Text.Trim()))
                {
                    Comment c = new Comment();
                    c.Content = tb_content.Text;
                    c.Title = tb_Title.Text;
                    c.MemberID = 4;
                    c.CommentDateTime = DateTime.Now;
                    if (fu_img.HasFile)
                    {
                        FileInfo fi = new FileInfo(fu_img.FileName);
                        string extension = fi.Extension;
                        string name = Guid.NewGuid().ToString();
                        c.Img = name + extension;
                        fu_img.SaveAs(Server.MapPath("../AdminPanel/Images/" + name + extension));
                        if (dm.CommentAdd(c))
                        {
                            pnl_succes.Visible = true;
                        }
                        else
                        {
                            pnl_error.Visible = true;
                            lbl_eror.Text = "Eklenirken bir hata oluştu";
                        }
                    }
                }
                else
                {
                    pnl_error.Visible = true;
                    lbl_eror.Text = "Lütfen Yorum Başlığı ekleyiniz";
                }
            }
            else
            {
                pnl_error.Visible = true;
                lbl_eror.Text = "Lütfen İçerik ekleyiniz";
            }

        }

    }
}
