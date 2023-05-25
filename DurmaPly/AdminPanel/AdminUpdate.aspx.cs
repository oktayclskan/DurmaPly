using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccessLayer;

namespace DurmaPly.AdminPanel
{
    public partial class AdminUpdate : System.Web.UI.Page
    {
        DataModel dm = new DataModel();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString.Count != 0)
            {
                if (!IsPostBack)
                {
                    int id = Convert.ToInt32(Request.QueryString["aid"]);
                    Admins a = dm.AdminGet(id);
                    tb_name.Text = a.Name;
                    tb_Surname.Text = a.Surname;
                    tb_Mail.Text = a.Mail;
                    tb_AdminPassword.Text = a.AdminPassword;
                    tb_phone.Text = a.Phone;
                   
                }
            }
            else
            {
                Response.Redirect("AdminList.aspx");
            }
        }

        protected void btn_AdminUpdate_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["aid"]);
            Admins a = dm.AdminGet(id);
            a.Name = tb_name.Text;
            a.Surname = tb_Surname.Text;
            a.Mail = tb_Mail.Text;
            a.AdminPassword = tb_AdminPassword.Text;
            a.Phone = tb_phone.Text;
            if (dm.AdminUpdate(a))
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