using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace odevPortali
{
    public partial class girisyap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(Request.Form["ogrKadi"]) || string.IsNullOrEmpty(Request.Form["ogrParola"]))
            {
                Response.Redirect("giris.aspx?h=1");
            }

            string ogrKadi = Request.Form["ogrKadi"].ToString();
            string ogrParola = Request.Form["ogrParola"].ToString();

            DataTable dt = vt.dtGetir("select * from ogrenci where ogrKadi='" + ogrKadi + "' and ogrParola='" + ogrParola + "'");

            if (dt.Rows.Count > 0)
            {
                // Oturum Aç
                Session["ogr_id"] = dt.Rows[0]["ogr_id"].ToString();
                Session["ogrKadi"] = dt.Rows[0]["ogrKadi"].ToString();
                Session["ogrAdmin"] = dt.Rows[0]["ogrAdmin"].ToString();
                Response.Redirect("odevListe.aspx");
            }
            else
            {
                Response.Redirect("giris.aspx?h=2");
            }
        }
    }
}