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
    public partial class GameAdd : System.Web.UI.Page
    {
        DataModel dm = new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_GameAdd_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(tb_name.Text.Trim()))
            {
                if (!string.IsNullOrEmpty(tb_price.Text.Trim()))
                {
                    if (!string.IsNullOrEmpty(tb_content.Text.Trim()))
                    {
                        if (!string.IsNullOrEmpty(tb_discountRate.Text.Trim()))
                        {
                            if (!string.IsNullOrEmpty(tb_noDiscount.Text.Trim()))
                            {
                                Games gm = new Games();
                                gm.Name = tb_name.Text;
                                gm.Price = Convert.ToDecimal(tb_price.Text);
                                gm.Content = tb_content.Text;
                                gm.DiscountRate = tb_discountRate.Text;
                                gm.noDiscount = tb_noDiscount.Text;
                                gm.DateTime = DateTime.Now;
                                if (fu_img.HasFile)
                                {
                                    FileInfo fi = new FileInfo(fu_img.FileName);
                                    string extenison = fi.Extension;
                                    string name = Guid.NewGuid().ToString();
                                    gm.img = name + extenison;
                                    fu_img.SaveAs(Server.MapPath("../AdminPanel/Images/" + name + extenison));


                                    if (fu_video.HasFile)
                                    {
                                        FileInfo fv = new FileInfo(fu_video.FileName);
                                        string extensionvdn = fv.Extension;
                                        string namevd = Guid.NewGuid().ToString();
                                        gm.Video = namevd + extensionvdn;
                                        fu_video.SaveAs(Server.MapPath("../AdminPanel/Video/") + namevd + extensionvdn);
                                        if (dm.GameAdd(gm))
                                        {
                                            pnl_succes.Visible = true;
                                        }
                                        else
                                        {
                                            pnl_error.Visible = true;
                                            lbl_eror.Text = "Ekleme Başarısız";
                                        }

                                    }
                                    else
                                    {
                                        pnl_error.Visible = true;
                                        lbl_eror.Text = "lütfen video seçiniz";
                                    }
                                }
                                else
                                {
                                    pnl_error.Visible = true;
                                    lbl_eror.Text = "Lütfen Resim Seçiniz";
                                }

                            }
                            else
                            {
                                pnl_error.Visible = true;
                                lbl_eror.Text = "Fiyat Bilgisi Boş Bırakılamaz";
                            }

                        }
                        else
                        {
                            pnl_error.Visible = true;
                            lbl_eror.Text = "Fiyat Bilgisi Boş Bırakılamaz";
                        }
                    }
                    else
                    {
                        pnl_error.Visible = true;
                        lbl_eror.Text = "İçerik Boş Bırakılamaz";
                    }
                }
                else
                {
                    pnl_error.Visible = true;
                    lbl_eror.Text = "Fiyat Boş Bırakılamaz";
                }
            }
            else
            {
                pnl_error.Visible = true;
                lbl_eror.Text = "Oyun Adı  Boş Bırakılamaz";
            }
        }
    }
}