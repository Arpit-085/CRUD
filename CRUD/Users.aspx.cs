using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace CRUD
{
    public partial class Users : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbCon"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter adapter;
        DataTable dt;

        public void DataLoad()
        {
            if (Page.IsPostBack)
            {
                dgViewUsers.DataBind();
            }
        }

        public void ClearAllData()
        {
            txtName.Text = "";
            txtEmail.Text = "";
            txtPassword.Text = "";
            txtPhone.Text = "";
            chkBoxAgree.Checked = false;
            lblMessage.Text = "";
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblId.Text = dgViewUsers.SelectedRow.Cells[1].Text;
            txtName.Text = dgViewUsers.SelectedRow.Cells[2].Text;
            txtEmail.Text = dgViewUsers.SelectedRow.Cells[3].Text;
            txtPassword.Text = dgViewUsers.SelectedRow.Cells[4].Text;
            txtPhone.Text = dgViewUsers.SelectedRow.Cells[5].Text;
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if(txtName.Text!="" && txtEmail.Text!="" && txtPassword.Text!="" && txtPhone.Text!= "" && chkBoxAgree.Checked)
            {
                using(con=new SqlConnection(cs))
                {
                    con.Open();
                    cmd = new SqlCommand("Insert Into Users (Name, Email, Password, Phone) Values(@name, @email, @password, @phone)", con);
                    cmd.Parameters.AddWithValue("@name", txtName.Text);
                    cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                    cmd.Parameters.AddWithValue("@password", txtPassword.Text);
                    cmd.Parameters.AddWithValue("@phone", txtPhone.Text);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    DataLoad();
                    ClearAllData();
                }
            }
            else
            {
                lblMessage.Text = "Fill All Information";
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (txtName.Text != "" && txtEmail.Text != "" && txtPassword.Text != "" && txtPhone.Text != "" && chkBoxAgree.Checked)
            {
                using (con = new SqlConnection(cs))
                {
                    con.Open();
                    cmd = new SqlCommand("Update Users Set Name = @name, Email = @email, Password = @password, Phone = @phone where Id = @id", con);
                    cmd.Parameters.AddWithValue("@name", txtName.Text);
                    cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                    cmd.Parameters.AddWithValue("@password", txtPassword.Text);
                    cmd.Parameters.AddWithValue("@phone", txtPhone.Text);
                    cmd.Parameters.AddWithValue("@id", lblId.Text);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    DataLoad();
                    ClearAllData();
                }
            }
            else
            {
                lblMessage.Text = "Fill All Information";
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            using(con = new SqlConnection(cs))
            {
                con.Open();
                cmd = new SqlCommand("Delete From Users where Id = @id", con);
                cmd.Parameters.AddWithValue("@id", lblId.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                DataLoad();
                ClearAllData();
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            ClearAllData();
        }
    }
}