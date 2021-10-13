using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Campingpladsen_Projekt_H1
{
    public partial class BookingSide : System.Web.UI.Page
    {
        // Insert numbers for dropdown lists

        // Generates random number for reservation
        Random r = new Random();
        protected void Page_Load(object sender, EventArgs e) {}

        protected void ButtonBestil_Click(object sender, EventArgs e)
        {
            // Definition of variables - Customers
            int adult = Convert.ToInt32(DropDownListVoksne.SelectedValue);
            int children = Convert.ToInt32(DropDownListBørn.SelectedValue);
            int dog = Convert.ToInt32(DropDownListHunde.SelectedValue);

            // Initiate Sql connection
            using (SqlConnection conn = new SqlConnection())
            {
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["Customers"].ConnectionString;
                using (SqlCommand cmd = new SqlCommand("Insert_Customers", conn))
                {
                    // A stored procedure that finds the column shown as a string with an @, the type
                    // and sets it to the input value of the user - Customers
                    conn.Open();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@FirstName", SqlDbType.VarChar).Value = TextBoxFornavn.Text;
                    cmd.Parameters.AddWithValue("@LastName", SqlDbType.Text).Value = TextBoxEfternavn.Text;
                    cmd.Parameters.AddWithValue("@Address", SqlDbType.Text).Value = TextBoxAdresse.Text;
                    cmd.Parameters.AddWithValue("@Email", SqlDbType.VarChar).Value = TextBoxEmail.Text;
                    cmd.Parameters.AddWithValue("@PhoneNumber", SqlDbType.VarChar).Value = Convert.ToInt32(TextBoxTlf.Text);
                    cmd.Parameters.AddWithValue("@Adult", SqlDbType.Int).Value = Convert.ToInt32(DropDownListVoksne.SelectedValue);
                    cmd.Parameters.AddWithValue("@Children", SqlDbType.Int).Value = Convert.ToInt32(DropDownListBørn.SelectedValue);
                    cmd.Parameters.AddWithValue("@Dog", SqlDbType.Int).Value = Convert.ToInt32(DropDownListHunde.SelectedValue);
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
            }
            // Defintion of variables - Reservation
            int campingSite = Convert.ToInt32(DropDownListVælgPlads.SelectedValue);
            int randomNumber = r.Next(1, 1001);
            DateTime startDate = Calendar1.SelectedDate;
            DateTime endDate = Calendar2.SelectedDate;
            string startdateformatted = startDate.ToString("yyyy-MM-dd");
            string endDateFormatted = endDate.ToString("yyyy-MM-dd");
            string seasonSite = DropDownSæsonPlads.SelectedValue;

            // Define date - Duration of stay, high- & low season, current time
            int allDays = (endDate - startDate).Days;
            DateTime tidligdt2 = new DateTime(2021, 06, 14);
            DateTime sendt2 = new DateTime(2021, 08, 15);
            DateTime date = DateTime.Now;

            // Set to false, if statement will set it to true and change the BIT value in the table
            // if the check box has been checked for cleaning or bed linen
            string CleaningOrNot = "No";
            int cleaningPrice = 0;
            if (CheckBoxRengøring.Checked == true)
            {
                CleaningOrNot = "Yes";
                cleaningPrice = 150;
            }

            int sengelinned = 0;
            if (CheckBoxSengelinned.Checked == true)
                cleaningPrice = 30;

            // Definition of Additions
            int DaysWithBicycel = Convert.ToInt32(DropDownCykelleje.SelectedValue);
            int bicycelPrice = DaysWithBicycel * 200;
            int allDogs = dog * 30;
            int adultsBadeland = Convert.ToInt32(DropDownBadelandVoksen.SelectedValue);
            int childrenBadeland = Convert.ToInt32(DropDownBadelandBørn.SelectedValue);
            int badelandVoksenPrice = 30 * adultsBadeland;
            int badelandChildrenPrice = 15 * childrenBadeland;

            // Season pricing
            int seasonSitePrice = 0;

            // Sets pricing from selected season
            switch (seasonSite)
            {
                case "(Intet)":
                    {
                        seasonSitePrice = 0;
                        break;
                    }
                case "Efterår":
                    {
                        seasonSitePrice = 2900;
                        break;
                    }
                case "Forår":
                    {
                        seasonSitePrice = 4100;
                        break;
                    }
                case "Sommer":
                    {
                        seasonSitePrice = 9300;
                        break;
                    }
                case "Vinter":
                    {
                        seasonSitePrice = 3500;
                        break;
                    }
            }

            // Calculate total price depending on season - High Season
            int overallPriceSeason;
            if (date > tidligdt2 && date < sendt2)
            {
                int allAdultH = adult * 82;
                int allChildrenH = children * 42;
                int sitePriceH = 0;

                // Calculate price
                switch (campingSite)
                {
                    case int n when (n >= 318):
                        {
                            sitePriceH = 850 * allDays;
                            break;
                        }
                    case int n when (n >= 310 && n < 318):
                        {
                            sitePriceH = 500 * allDays;
                            break;
                        }
                    case int n when (n >= 218 && n < 310):
                        {
                            sitePriceH = 80 * allDays;
                            break;
                        }
                    case int n when (n >= 51 && n < 218):
                        {
                            sitePriceH = 60 * allDays;
                            break;
                        }
                    case int n when (n < 51):
                        {
                            sitePriceH = 35 * allDays;
                            break;
                        }
                }

                // Set variable to total price
                overallPriceSeason = allAdultH + allChildrenH + sitePriceH + cleaningPrice + sengelinned + bicycelPrice + allDogs + seasonSitePrice + badelandChildrenPrice + badelandVoksenPrice;
            }
            else
            {
                int sitePriceL = 0;
                int allAdultL = adult * 87;
                int allChildrenL = children * 49;
                switch (campingSite)
                {
                    case int n when (n >= 318):
                        {
                            sitePriceL = 600 * allDays;
                            break;
                        }
                    case int n when (n >= 310 && n < 318):
                        {
                            sitePriceL = 350 * allDays;
                            break;
                        }
                    case int n when (n >= 218 && n < 310):
                        {
                            sitePriceL = 65 * allDays;
                            break;
                        }
                    case int n when (n >= 51 && n < 218):
                        {
                            sitePriceL = 50 * allDays;
                            break;
                        }
                    case int n when (n < 51):
                        {
                            sitePriceL = 45 * allDays;
                            break;
                        }
                }
                overallPriceSeason = sitePriceL + allAdultL + allChildrenL + cleaningPrice + sengelinned + bicycelPrice + allDogs + seasonSitePrice + badelandChildrenPrice + badelandVoksenPrice;
            }

            using (SqlConnection conn = new SqlConnection())
            {
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["Reservation"].ConnectionString;
                using (SqlCommand cmd = new SqlCommand("Insert_Reservation", conn))
                {
                    // Stored procedure - Reservation
                    conn.Open();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@ReservationNumber", SqlDbType.Int).Value = randomNumber;
                    cmd.Parameters.AddWithValue("@ReservationStartDate", SqlDbType.Date).Value = startdateformatted;
                    cmd.Parameters.AddWithValue("@ReservationEndDate", SqlDbType.Date).Value = endDateFormatted;
                    cmd.Parameters.AddWithValue("@OverallPrice", SqlDbType.Int).Value = overallPriceSeason;
                    cmd.Parameters.AddWithValue("@SiteNumber", SqlDbType.Int).Value = Convert.ToInt32(DropDownListVælgPlads.SelectedValue);
                    cmd.Parameters.AddWithValue("@SeasonType", SqlDbType.VarChar).Value = DropDownSæsonPlads.SelectedValue;
                    cmd.Parameters.AddWithValue("@FirstName", SqlDbType.VarChar).Value = TextBoxFornavn.Text;
                    cmd.Parameters.AddWithValue("@Email", SqlDbType.VarChar).Value = TextBoxEmail.Text;
                    cmd.Parameters.AddWithValue("@PhoneNumber", SqlDbType.VarChar).Value = Convert.ToInt32(TextBoxTlf.Text);
                    cmd.Parameters.AddWithValue("@YesOrNoCleaning", SqlDbType.NChar).Value = CleaningOrNot;
                    cmd.Parameters.AddWithValue("@SenesteFaktura", SqlDbType.DateTime).Value = date;

                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
            }
            Response.Redirect("FakturaSide.aspx");

        }
    }
}
