<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FakturaSide.aspx.cs" Inherits="Campingpladsen_Projekt_H1.FakturaSide" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="styleSheet" href="StyleSheet.css" />
    <title>Midt Camping - Faktura</title>
</head>
<body>
    <%-- Banner --%>
    <div class="Banner">
        <img src="/Picture/Banner.png" width="100%" height="100%" />
    </div>
    <form id="form1" runat="server">
        <table class="topnav">
            <tr>
                <td class="headline">Midt Camping</td>
                <td><a href="Main.aspx">Home</a></td>
                <td><a href="BookingSide.aspx">Booking</a></td>
                <td><a href="Priser.aspx">Priser</a></td>
                <td><a href="Information.aspx">Information</a></td>
            </tr>
        </table>

        <div class="row">
            <div class="leftcolumn33">
                <div class="sidecard"></div>
            </div>
            <div class="middlecolumn33">
                <div class="card">
                    <h2>FAKTURA</h2>
                    <p>Tillykke med dit køb på verdens bedste campingplads. Din endelige faktura er ikke lavet endnu, men trust us, vi hæver ikke flere penge end du har betalt. ;)</p>
                    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="Faktura">
                        <EditRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <Fields>
                            <asp:BoundField DataField="ReservationsNumber" HeaderText="ReservationsNumber" SortExpression="ReservationsNumber" />
                            <asp:BoundField DataField="ReservationStartDate" HeaderText="ReservationStartDate" SortExpression="ReservationStartDate" />
                            <asp:BoundField DataField="ReservationEndDate" HeaderText="ReservationEndDate" SortExpression="ReservationEndDate" />
                            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
                            <asp:BoundField DataField="Adult" HeaderText="Adult" SortExpression="Adult" />
                            <asp:BoundField DataField="Children" HeaderText="Children" SortExpression="Children" />
                            <asp:BoundField DataField="Dog" HeaderText="Dog" SortExpression="Dog" />
                            <asp:BoundField DataField="SiteNumber" HeaderText="SiteNumber" SortExpression="SiteNumber" />
                            <asp:BoundField DataField="SeasonType" HeaderText="SeasonType" SortExpression="SeasonType" />
                            <asp:BoundField DataField="YesOrNoCleaning" HeaderText="YesOrNoCleaning" SortExpression="YesOrNoCleaning" />
                            <asp:BoundField DataField="OverallPrice" HeaderText="OverallPrice" SortExpression="OverallPrice" />
                            <asp:BoundField DataField="SenesteFaktura" HeaderText="SenesteFaktura" SortExpression="SenesteFaktura" />
                        </Fields>
                        <FooterStyle BackColor="White" ForeColor="#000066" />
                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <RowStyle ForeColor="#000066" />
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="Faktura" runat="server" ConnectionString="<%$ ConnectionStrings:MidlertidigFaktura %>" SelectCommand="FakturaLookUp" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    <div>
                        <h3>Forglem ej at anmelde os, blandt vores mange andre fine anmeldelser</h3>
                        <div>Reviews 1,713  •  Bad</div>
                        <img src="https://cdn.trustpilot.net/brand-assets/4.1.0/stars/stars-1.svg" width="10%" height="10%" alt="1 star: Bad">
                    </div>
                </div>
            </div>
            <div class="rightcolumn33"></div>
            <div class="sidecard"></div>
        </div>


        <footer>
            <div class="Footer__title">Kontakt os!</div>
            <div class="Footer__link">Email: Midtcamping@campingemail.dk</div>
            <div class="Footer__link">Telefon: +45 12 34 56 78</div>
            <div class="privacy-box">Privacy Policy - Terms and conditions</div>
        </footer>
    </form>
</body>
</html>
