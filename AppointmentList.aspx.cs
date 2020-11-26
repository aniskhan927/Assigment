using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Masters_AppointmentList : System.Web.UI.Page
{
    //MyConnection con1 = new MyConnection();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Grd_list.DataSource = BindGrid();
            Grd_list.DataBind();
            //BindGrid();
        }
    }
    protected DataTable BindGrid()
    {
        MyConnection con1 = new MyConnection();       
        try
        {
            if (con1.con.State == ConnectionState.Closed)
            {
                con1.con.Open();
            }
            SqlCommand cmdBindGrid = new SqlCommand("Select * From Appointment", con1.con);
            SqlDataAdapter ad = new SqlDataAdapter(cmdBindGrid);
            DataSet ds = new DataSet();
            ad.Fill(ds);
           Grd_list.DataSource = ds;
            Grd_list.DataBind();
            return ds.Tables[0];

        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            con1.con.Close();
        }
    }
   
    protected void View(object sender, EventArgs e)
    {
        GridViewRow row = Grd_list.SelectedRow;
        GridViewRow currentRow = (GridViewRow)(((LinkButton)sender).Parent.Parent);
        try
        {
            MailMessage mm = new MailMessage("", currentRow.Cells[3].Text.Trim());
            mm.Subject = "Appointment";
            mm.Body = string.Format("Hi {0}<br/><br/> Your Appointment Date : {1} <br/><br/> Thank You.", currentRow.Cells[1].Text.Trim(), currentRow.Cells[5].Text.Trim());
          //  MemoryStream memoryStream = new MemoryStream(FileData);
           // mm.Attachments.Add(new Attachment(memoryStream, FileName, MediaTypeNames.Application.Pdf));
            mm.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.EnableSsl = true;
            NetworkCredential NetworkCred = new NetworkCredential();
            NetworkCred.UserName = "";
            NetworkCred.Password = "";
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = NetworkCred;
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.Send(mm);
            Common.MessageBox("Email has been sent to Succesfully", this);
        }
        catch (Exception exe)
        {
            Response.Write(exe.Message);
        }
    }
    
}