using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace odevPortali
{
    public partial class ogrenciKayit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            vt.sqlCalistir("insert into ogrenci (adi_soyadi,ogr_no,mail,tel,ders) values ('" + txtAdsoyad.Text + "'," + Convert.ToInt32(txtOgrNo.Text) + ",'" + txtMail.Text + "'," + Convert.ToInt32(txtTelNo.Text) + ",'" + txtDers.Text + "')");
            lbSonuc.Text = "Kayıt Eklendi";
            lbSonuc.CssClass = "alert alert-success";
        }  
    }
}