using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class frmLogin : System.Web.UI.Page
{
  
 
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           
        }
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (txtUserName.Text.Trim() == "ADM" && txtPassword.Text.Trim() == "ADM")
        {
            Response.Redirect("Appointment.aspx");
        }
        else
        {
            Common.MessageBox("Invalid User Name or Password", this);
            return;
        }
    }
   

}
