using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace odevPortali
{
    public partial class ogrenciGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                return;
            }
            kayitGetir();
        }

        private void kayitGetir()
        {
            rptOgrenci.DataSource = vt.dtGetir("select * from ogrenci");
            rptOgrenci.DataBind();
        }

        protected void btnAra_Click(object sender, EventArgs e)
        {
            //vt.sqlCalistir("select * from ogrenci where ogr_no like '%" + txtOgrNo.Text + "%' order by ogr_no");
            //lbSonuc.Text = "Kayıt Bulundu";
            //lbSonuc.CssClass = "alert alert-success";
            //kayitGetir();
        }
    }
}