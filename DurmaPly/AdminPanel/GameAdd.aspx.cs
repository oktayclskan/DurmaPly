using System;
using System.Collections.Generic;
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