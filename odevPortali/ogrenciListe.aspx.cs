using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace odevPortali
{
    public partial class ogrenciListe : System.Web.UI.Page
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

        protected void rptOgrenci_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "cmdSil")
            {
                int ogr_id = Convert.ToInt32(e.CommandArgument.ToString());
                vt.sqlCalistir("delete from ogrenci where ogr_id=" + ogr_id);
                kayitGetir();
            }
        }
    }
}