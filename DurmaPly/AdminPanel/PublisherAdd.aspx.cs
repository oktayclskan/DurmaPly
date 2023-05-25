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
    public partial class PublisherAdd : System.Web.UI.Page
    {
        DataModel dm =new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_PublisherAdd_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(tb_name.Text.Trim()))
            {
                Publisher pb = new Publisher();
                pb.Name = tb_name.Text;
                pb.Url = tb_url.Text;
                if (fu_img.HasFile)
                {
                    FileInfo fi = new FileInfo(fu_img.FileName);
                    string extension = fi.Extension;
                    string name = Guid.NewGuid().ToString();
                    pb.Img = name + extension;
                    fu_img.SaveAs(Server.MapPath("../AdminPanel/Images/" + name + extension));
                    if (dm.PublisherAdd(pb))
                    {
                        tb_name.Text = " ";
                        tb_url.Text = " ";
                        pnl_succes.Visible = true;
                        pnl_error.Visible = false;
                    }
                    else
                    {
                        pnl_succes.Visible = false;
                        pnl_error.Visible = true;
                        lbl_eror.Text = "Eklenirken Bir Hata Oluştu";
                    }
                }
            }
            else
            {
                pnl_succes.Visible = false;
                pnl_error.Visible = true;
                lbl_eror.Text = "Lütfen Yayıncı Adı Giriniz";
            }
        }
    }
}