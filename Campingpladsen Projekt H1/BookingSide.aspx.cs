using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Campingpladsen_Projekt_H1
{
    public partial class BookingSide : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonBestil_Click(object sender, EventArgs e)
        {
            string firstName = TextBoxFornavn.Text;
            string lastName = TextBoxEfternavn.Text;
            string address = TextBoxAdresse.Text;
            string email = TextBoxEmail.Text;
            int phoneNumber = Convert.ToInt32(TextBoxTlf.Text);
            int adult = Convert.ToInt32(DropDownListVoksne.SelectedValue);
            int children = Convert.ToInt32(DropDownListBørn.SelectedValue);
            int dog = Convert.ToInt32(DropDownListHunde.SelectedValue);

            using (SqlConnection conn = new SqlConnection())
            {
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["Customers"].ToString();
                conn.Open();
                SqlCommand insertCommand = new SqlCommand($"insert into Customers (FirstName, LastName, Address, Email, PhoneNumber, Adult, Children, Dog) values ('{firstName}','{lastName}','{address}','{email}', '{phoneNumber}', {adult}, {children}, {dog}) ;", conn);
                Label14.Text = Convert.ToString(insertCommand.ExecuteNonQuery());
                conn.Close();
            }

            using (SqlConnection conn = new SqlConnection())
            {
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["Reservation"].ToString();
                conn.Open();
                SqlCommand insertCommand = new SqlCommand($"insert into Customers (FirstName, LastName, Address, Email, PhoneNumber, Adult, Children, Dog) values ('{firstName}','{lastName}','{address}','{email}', '{phoneNumber}', {adult}, {children}, {dog}) ;", conn);
                Label14.Text = Convert.ToString(insertCommand.ExecuteNonQuery());
                conn.Close();
            }
        }
    }
}