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
        Random r = new Random();
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
                insertCommand.ExecuteNonQuery();
                conn.Close();
            }
            
            using (SqlConnection conn = new SqlConnection())
            {
                int campingSite = Convert.ToInt32(DropDownListVælgPlads.SelectedValue);
                int randomNumber = r.Next(1,1001);
                DateTime startDate = Calendar1.SelectedDate;
                DateTime endDate =  Calendar2.SelectedDate;
                string startdateformatted = startDate.ToString("yyyy-MM-dd");
                string endDateFormatted = endDate.ToString("yyyy-MM-dd");
                string seasonSite = DropDownSæsonPlads.SelectedValue;
                int CleaningOrNot = 0;
                if (CheckBoxRengøring.Checked == true)                
                    CleaningOrNot = 1;
                
                int price = 0;
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["Reservation"].ToString();
                conn.Open();
                SqlCommand insertCommand = new SqlCommand($"insert into Reservation (ReservationNumber, ReservationStartDate, ReservationEndDate, OverallPrice, SiteNumber, SeasonType, FirstName, Email, PhoneNumber, FinalCleaningOrNot) values ({randomNumber},'{startdateformatted}','{endDateFormatted}',{price}, {campingSite}, '{seasonSite}', '{firstName}', '{email}', {phoneNumber}, {CleaningOrNot}) ;", conn);
                insertCommand.ExecuteNonQuery();
                conn.Close();
            }
        }
    }
}