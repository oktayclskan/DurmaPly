using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccessLayer;

namespace DurmaPly.AdminPanel
{
    public partial class AdminAdd : System.Web.UI.Page
    {
        DataModel dm = new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_adminAdd_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(tb_Name.Text.Trim()))
            {
                if (!string.IsNullOrEmpty(tb_Surname.Text.Trim()))
                {
                    if (!string.IsNullOrEmpty(tb_Mail.Text.Trim()))
                    {
                        if (!string.IsNullOrEmpty(tb_adminPassword.Text.Trim()))
                        {
                            Admins a = new Admins();
                            a.Name = tb_Name.Text;
                            a.Surname = tb_Surname.Text;
                            a.Mail = tb_Mail.Text;
                            a.AdminPassword = tb_adminPassword.Text;
                            a.Phone = tb_phone.Text;
                            if (dm.AdminAdd(a))
                            {
                                pnl_succes.Visible = true;
                            }
                            else
                            {
                                pnl_error.Visible = true;
                                lbl_eror.Text = "Eklenirken bir hata oluştu";
                            }
                        }
                        else
                        {
                            pnl_error.Visible = true;
                            lbl_eror.Text = "Lütfen Mail ekleyiniz";
                        }

                    }
                    else
                    {
                        pnl_error.Visible = true;
                        lbl_eror.Text = "Lütfen Mail ekleyiniz";
                    }
                }
            }

        }
    }
}