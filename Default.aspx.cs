using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    static string[] Product = new string[25];

    static _Default() {
        Product[0] = "2.98";
        Product[1] = "4.50";
        Product[2] = "9.98";
        Product[3] = "4.49";
        Product[4] = "6.87";
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        Ins1.Attributes.Add("style", "font-size:xx-small;color:#666666"); /* 順便改變字的大小顏色 */
        Ins1.Attributes.Add("onFocus", "this.value=''"); /* 一點擊TextBox1後，裡面的字馬上被清空 */

        Ins2.Attributes.Add("style", "font-size:xx-small;color:#666666");
        Ins2.Attributes.Add("onFocus", "this.value=''");

        Mod1.Attributes.Add("style", "font-size:xx-small;color:#666666");
        Mod1.Attributes.Add("onFocus", "this.value=''");

        Mod2.Attributes.Add("style", "font-size:xx-small;color:#666666");
        Mod2.Attributes.Add("onFocus", "this.value=''");

        Sea1.Attributes.Add("style", "font-size:xx-small;color:#666666");
        Sea1.Attributes.Add("onFocus", "this.value=''");

        Det1.Attributes.Add("style", "font-size:xx-small;color:#666666");
        Det1.Attributes.Add("onFocus", "this.value=''");

    }
    protected void imds_Click1(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        string mad1, mad2, new1, new2, lok, cln;
        if (Page.IsValid) {

            /* modify */
            if (btn.ID == "Mod3") {
                try {
                    mad1 = Mod1.Text;
                    mad2 = Mod2.Text;
                    Lab1.Text = Convert.ToString("Modify Data<br /><hr />"+ modifyPrice(mad1, mad2));
                    Lab2.Text = "";
                    Panel1.Visible = true;
                    Panel2.Visible = false;
                    } catch (Exception ex) {
                    Panel2.Visible = true; 
                    Lab1.Text = "Error<br /><hr /> 無效操作 ";
                    Lab2.Text = "Error Information<br /><hr />" + ex.ToString();
                      
                } finally {

                }

        }

            /* insert */
            if (btn.ID == "Ins3")
            {
                try
                {
                    new1 = Ins1.Text;
                    new2 = Ins2.Text;
                    Lab1.Text = Convert.ToString("Insert Price<br /><hr />" + insertPrice(new1, new2));
                    Lab2.Text = "";
                    Panel1.Visible = true;
                    Panel2.Visible = false;

                }
                catch (Exception ex)
                {
                    Panel2.Visible = true;
                    Lab1.Text = "Error<br /><hr /> 無效操作 ";
                    Lab2.Text = "Error Information<br /><hr />" + ex.ToString();
                }
                finally {

                }
               
            }

            /* query */
            if (btn.ID == "Sea2")
            {
                try
                {
                    lok = Sea1.Text;
                    Lab1.Text = Convert.ToString("Search Price<br /><hr />" + searchPrice(lok));
                    Panel1.Visible = true;
                    Panel2.Visible = false;
                }
                catch (Exception ex)
                {
                    Panel2.Visible = true;
                    Lab1.Text = "Error<br /><hr /> 無效操作 ";
                    Lab2.Text = "Error Information<br /><hr />" + ex.ToString();
                }
                finally {

                }

                
            }
            /* delete */
            if (btn.ID == "Det2")
            {
                try
                {
                    cln = Det1.Text;
                    Lab1.Text = Convert.ToString("Delete Price<br /><hr />" + deletePrice(cln));
                    Panel1.Visible = true;
                    Panel2.Visible = false;

                }
                catch (Exception ex)
                {
                    Panel2.Visible = true;
                    Lab1.Text = "Error<br /><hr /> 無效操作 ";
                    Lab2.Text = "Error Information<br /><hr />" + ex.ToString();
                }
                finally {

                }
               
            }
        }
    }

    
    string modifyPrice(string name, string number) {
        int sinceNM = Convert.ToInt32(name);
        if (Product[sinceNM] != null)
        {
            Product[sinceNM] = number;
        }
        else {
        }
        return number;
        }     
    string insertPrice(string name, string number) {
        int sinceNM = Convert.ToInt32(name);
        string idex = "";
        if (Product[sinceNM] == null)
        {
            Product[sinceNM] = number;
            idex = number;
        }
        else
        {
            idex = "無效新增";
        }
        return idex;
    }

    string searchPrice(string name) {
        int sinceNM = Convert.ToInt32(name);
        string idex = "";
        if (Product[sinceNM] != null)
        {
            idex = Product[sinceNM];
        }
        else {
            idex = "無該筆資料";
        }
        return idex;
    }
    string deletePrice(string name) {
        int sinceNM = Convert.ToInt32(name);
        string idex = "";
        if (Product[sinceNM] != null) {
            Product[sinceNM] = null;
            if (Product[sinceNM] == null) { idex = "該筆資料已刪除 - Null"; }
        }
        return idex;
    } 
}