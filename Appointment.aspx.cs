using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Masters_Appointment : System.Web.UI.Page
{
   // MyConnection con1 = new MyConnection();
    SqlTransaction transaction = null;
    int MaxCustomerId = 0;
    string Filename = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
        }
    }
  
    protected void btnNew_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Masters/Appointment.aspx");
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        MyConnection con1 = new MyConnection();
        if (txtName.Text.ToString().Trim() == "")
        {
            Common.MessageBox("Please Enter Name ", this);
            return;
        }
        if (txtMobile.Text.ToString().Trim() == "" || txtMobile.Text.Length < 10)
        {
            Common.MessageBox("Please Enter Valid Mobile no.", this);
            return;
        }

        if (uploadReport.HasFile == false)
        {
            Common.MessageBox("Please Select File.", this);

        }
        else
        {
            if (StartUpLoadDC() == true)
            {

                if (con1.con.State == ConnectionState.Closed)
                {
                    con1.con.Open();
                }
                try
                {
                    transaction = con1.con.BeginTransaction();
                    SqlCommand cmdCustomer = new SqlCommand("INSERT INTO [Appointment](Name,Age,BloodGroup,Address,Mobile,Email,AppointmentDate,[FileName],FilePath) VALUES(@Name,@Age,@BloodGroup,@Address,@Mobile,@Email,@AppointmentDate,@FileName,@FilePath)", con1.con, transaction);
                    cmdCustomer.CommandType = CommandType.Text;
                    cmdCustomer.Parameters.AddWithValue("@Name", txtName.Text.Trim());
                    cmdCustomer.Parameters.AddWithValue("@Address", txtAddress.Text.Trim());
                    cmdCustomer.Parameters.AddWithValue("@Age ", txtAge.Text.Trim());
                    cmdCustomer.Parameters.AddWithValue("@Mobile", txtMobile.Text.Trim());
                    cmdCustomer.Parameters.AddWithValue("@BloodGroup ", ddlBloodGroup.SelectedItem.Text.Trim());
                    cmdCustomer.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                    if (!string.IsNullOrEmpty(txtAppointment.Text.Trim()) && txtAppointment.Text.Trim().Split(new char[] { '/' }).Length == 3)
                        cmdCustomer.Parameters.AddWithValue("@AppointmentDate", Convert.ToDateTime(DateTime.ParseExact(txtAppointment.Text.Trim(), "dd/MM/yyyy", null)));
                    else
                        cmdCustomer.Parameters.AddWithValue("@AppointmentDate", DBNull.Value);
                     cmdCustomer.Parameters.AddWithValue("@FilePath", "PDFReport/" + Filename);
                    cmdCustomer.Parameters.AddWithValue("@FileName ", Filename.Trim());
                    cmdCustomer.Transaction = transaction;
                    cmdCustomer.ExecuteNonQuery();
                    transaction.Commit();
                    Common.MessageBox("Appointment Saved Successfully", this);
                    Clear();

                }
                catch (Exception e1)
                {
                    transaction.Rollback();
                    Common.MessageBox(e1.Message, this);
                }
                finally
                {
                    con1.con.Close();
                }
            }
        }
    }
    public void Clear()
    {
        txtName.Text = string.Empty;
        txtAddress.Text = string.Empty;
        txtAge.Text = string.Empty;
        txtMobile.Text = string.Empty;
        txtEmail.Text = string.Empty;
        txtAppointment.Text = string.Empty;
       
    }
  
   
    protected bool StartUpLoadDC()
    {
        if (uploadReport.PostedFile != null && uploadReport.PostedFile.ContentLength > 0)
        {
            int MaxContentLength = 1024 * 1024 * 2; //2 MB
            if (uploadReport.PostedFile.ContentLength > MaxContentLength)
            {
                Common.MessageBox("Your file is too large, maximum allowed size is: 2 MB", this);
                return false;
            }
            string[] validFileTypes = { "pdf" };
            string ext = System.IO.Path.GetExtension(uploadReport.PostedFile.FileName);
            bool isValidFile = false;
            Filename = uploadReport.PostedFile.FileName;

            for (int i = 0; i < validFileTypes.Length; i++)
            {
                if (ext == "." + validFileTypes[i])
                {
                    isValidFile = true;
                    break;
                }
            }
            if (!isValidFile)
            {
                Common.MessageBox("Invalid File. Please upload a File with extension " + string.Join(",", validFileTypes), this);
                return false;

            }
            else
            {
                uploadReport.SaveAs(Server.MapPath("~/PDFReport/") + Filename);
                return true;
            }

        }
        return true;
    }
}