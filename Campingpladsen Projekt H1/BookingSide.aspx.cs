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
                int randomNumber = r.Next(1, 1001);
                DateTime startDate = Calendar1.SelectedDate;
                DateTime endDate = Calendar2.SelectedDate;
                string startdateformatted = startDate.ToString("yyyy-MM-dd");
                string endDateFormatted = endDate.ToString("yyyy-MM-dd");
                string seasonSite = DropDownSæsonPlads.SelectedValue;
                string CleaningOrNot = "No";
                if (CheckBoxRengøring.Checked == true)
                    CleaningOrNot = "Yes";

                int allDays = (endDate - startDate).Days;
                DateTime tidligdt2 = new DateTime(2021, 06, 14);
                DateTime sendt2 = new DateTime(2021, 08, 15);
                DateTime date = DateTime.Now;

                int cleaningPrice = 0;
                switch (CheckBoxRengøring.Checked)
                {
                    case true:
                        {
                            cleaningPrice = 150;
                        }
                        break;
                }
                int sengelinned = 0;
                switch (CheckBoxSengelinned.Checked)
                {
                    case true:
                        { cleaningPrice = 30; }
                        break;
                }                
                int DaysWithBicycel = Convert.ToInt32(DropDownCykelleje.SelectedValue);
                int bicycelPrice = DaysWithBicycel * 200;
                int allDogs = dog * 30;
                int adultsBadeland = Convert.ToInt32(DropDownBadelandVoksen.SelectedValue);
                int childrenBadeland = Convert.ToInt32(DropDownBadelandBørn.SelectedValue);
                int badelandVoksenPrice = 30 * adultsBadeland;
                int badelandChildrenPrice = 15 * childrenBadeland;
                int seasonSitePrice = 0;
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
                int overallPriceSeason;
                if (date > tidligdt2 && date < sendt2)
                {
                    int allAdultH = adult * 82;
                    int allChildrenH = children * 42;
                    int sitePriceH = 0;    
                    switch (campingSite)
                    {
                        case int n when (n >= 318):
                            { sitePriceH = 850 * allDays;
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

                conn.ConnectionString = ConfigurationManager.ConnectionStrings["Reservation"].ToString();
                conn.Open();
                SqlCommand insertCommand = new SqlCommand($"insert into Reservation (ReservationNumber, ReservationStartDate, ReservationEndDate, OverallPrice, SiteNumber, SeasonType, FirstName, Email, PhoneNumber, YesOrNoCleaning) values ({randomNumber},'{startdateformatted}','{endDateFormatted}',{overallPriceSeason}, {campingSite}, '{seasonSite}', '{firstName}', '{email}', {phoneNumber}, '{CleaningOrNot}') ;", conn);
                insertCommand.ExecuteNonQuery();
                conn.Close();
            }
        }

        protected void AutomaticDelete()
        {            
            using (SqlConnection conn = new SqlConnection())
            {
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["Customers"].ToString();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["Reservation"].ToString();
                conn.Open();
                SqlCommand insertCommand = new SqlCommand($"Delete from Customers, Reservation where ReservationEndDate < CONVERT(varchar(10), GETDATE(), 120))) ;", conn);
                insertCommand.ExecuteNonQuery();
                conn.Close();
            }
        }
    }
}