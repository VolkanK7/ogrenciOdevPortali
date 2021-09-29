using System.Data;
using System.Data.OleDb;
using System.Web;

namespace odevPortali
{
  public class vt
  {
    public static OleDbConnection Baglan()
    {
      OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" + HttpContext.Current.Server.MapPath("App_Data/ogrDB.mdb"));
      baglanti.Open();
      return baglanti;
    }
    public static DataTable dtGetir(string sql)
    {
      OleDbConnection baglanti = Baglan();
      OleDbCommand cmd = new OleDbCommand();
      cmd.Connection = baglanti;
      cmd.CommandText = sql;
      DataTable dt = new DataTable();
      OleDbDataAdapter adp = new OleDbDataAdapter();
      adp.SelectCommand = cmd;
      adp.Fill(dt);
      cmd.Connection.Close();
      baglanti.Close();
      adp.Dispose();
      cmd.Dispose();
      return dt;
    }
    public static bool sqlCalistir(string sql)
    {
      OleDbConnection baglanti = Baglan();
      OleDbCommand cmd = new OleDbCommand();
      cmd.Connection = baglanti;
      cmd.CommandText = sql;
      cmd.ExecuteNonQuery();
      cmd.Connection.Close();
      baglanti.Close();
      cmd.Dispose();
      return true;
    }
    public static int kayitSayisi(string sql)
    {
      OleDbConnection baglanti = Baglan();
      OleDbCommand cmd = new OleDbCommand();
      cmd.Connection = baglanti;
      cmd.CommandText = sql;
      DataTable dt = new DataTable();
      OleDbDataAdapter adp = new OleDbDataAdapter();
      adp.SelectCommand = cmd;
      adp.Fill(dt);
      return dt.Rows.Count;
      cmd.Connection.Close();
      baglanti.Close();
      adp.Dispose();
      cmd.Dispose();
    }
  }
}