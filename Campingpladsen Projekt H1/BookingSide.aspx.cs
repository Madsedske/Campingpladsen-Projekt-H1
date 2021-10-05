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
                int price = 0;

                int allDays = (endDate - startDate).Days;

                DateTime tidligdt2 = new DateTime(2021, 06, 14);
                DateTime sendt2 = new DateTime(2021, 08, 15);
                DateTime date = DateTime.Now;
                int cleaningPrice = 0;
                if (CheckBoxRengøring.Checked == true)
                { cleaningPrice = 150; }
                int sengelinned = 0;
                if (CheckBoxSengelinned.Checked == true)
                { cleaningPrice = 30; }
                int DaysWithBicycel = Convert.ToInt32(DropDownCykelleje.SelectedValue);
                int bicycelPrice = DaysWithBicycel * 200;
                int allDogs = dog * 30;
                int adultsBadeland = Convert.ToInt32(DropDownBadelandVoksen.SelectedValue);
                int childrenBadeland = Convert.ToInt32(DropDownBadelandBørn.SelectedValue);
                switch (seasonSite)
                {
                    case "(Intet)":
                        {
                            int seasonSitePrice = 0;
                            break;
                        }                        
                    case "Efterår":
                        {
                            int seasonSitePrice = 2900;
                            break;
                        }
                    case "Forår":
                        {
                            int seasonSitePrice = 4100;
                            break;
                        }
                    case "Sommer":
                        {
                            int seasonSitePrice = 9300;
                            break;
                        }
                    case "Vinter":
                        {
                            int seasonSitePrice = 3500;
                            break;
                        }
                }
                int badelandVoksenPrice = 30 * adultsBadeland;
                int badelandChildrenPrice = 15 * childrenBadeland;
                if (date > tidligdt2 && date < sendt2)
                {
                    int allAdultH = adult * 82;
                    int allChildrenH = children * 42;
                    int sitePriceH;
                    if (campingSite > 317)
                    { int sitePriceH = 850 * allDays; }                        
                    else if (campingSite > 309)
                    { int sitePriceH = 500 * allDays; }                       
                    else if (campingSite > 217)
                    { int sitePriceH = 80 * allDays; }                       
                    else if (campingSite > 50)
                    { int sitePriceH = 60 * allDays; }                        
                    else if (campingSite < 51)
                    { int sitePriceH = 35 * allDays; }

                    int overallPriceHighSeason = allAdultH + allChildrenH + sitePriceH + cleaningPrice + sengelinned + bicycelPrice + allDogs + seasonSitePrice + badelandChildrenPrice + badelandVoksenPrice;
                }
                else
                {
                    int sitePriceL;
                    int allAdultL = adult * 87;
                    int allChildrenL = children * 49;
                    if (campingSite > 317)
                    { int sitePriceL = 600 * allDays; }
                    else if (campingSite > 309)
                    { int sitePriceL = 350 * allDays; }
                    else if (campingSite > 217)
                    { int sitePriceL = 65 * allDays; }
                    else if (campingSite > 50)
                    { int sitePriceL = 50 * allDays; }
                    else if (campingSite < 51)
                    { int sitePriceL = 45 * allDays; }

                    int overallPriceLowSeason = 0;
                }



                conn.ConnectionString = ConfigurationManager.ConnectionStrings["Reservation"].ToString();
                conn.Open();
                SqlCommand insertCommand = new SqlCommand($"insert into Reservation (ReservationNumber, ReservationStartDate, ReservationEndDate, OverallPrice, SiteNumber, SeasonType, FirstName, Email, PhoneNumber, YesOrNoCleaning) values ({randomNumber},'{startdateformatted}','{endDateFormatted}',{price}, {campingSite}, '{seasonSite}', '{firstName}', '{email}', {phoneNumber}, '{CleaningOrNot}') ;", conn);
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