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
                </div>
            </div>
            <div class="rightcolumn33"></div>
            <div class="sidecard"></div>
        </div>


        <footer>
            <div class="Footer__title">Kontakt</div>
            <div class="Footer__link">Email</div>
            <div class="Footer__link">Telefon</div>
            <div class="privacy-box">Privacy Policy - Terms and conditions</div>
        </footer>
    </form>
</body>
</html>
