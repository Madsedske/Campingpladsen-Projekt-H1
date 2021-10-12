<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Information.aspx.cs" Inherits="Campingpladsen_Projekt_H1.Information" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="styleSheet" href="StyleSheet.css" />
    <title>Midt Camping - Information</title>
</head>

<body>
    <%-- Banner --%>
    <div class="Banner">
        <img src="/Picture/Banner.png" width="100%" height="100%" />
    </div>
    <%-- Banner --%>

    <form id="form1" runat="server">

        <%-- Navbar --%>
        <table class="topnav">
            <tr>
                <td class="headline">Midt Camping</td>
                <td><a href="Main.aspx">Home</a></td>
                <td><a href="BookingSide.aspx">Booking</a></td>
                <td><a href="Priser.aspx">Priser</a></td>
                <td><a href="Information.aspx">Information</a></td>
            </tr>
        </table>
        <%-- Navbar --%>

        <%-- Info text --%>
        <div class="row">
            <div class="leftcolumn33">
                <div class="sidecard"></div>
            </div>

            <div class="middlecolumn33">
                <div class="card">
                    <h2>Information </h2>

                    <h3>Gode ting at vide:</h3>
                    <blockquote></blockquote>
                    <ul>
                        <li>Billig priser til vandland.</li>
                        <li>Billig pris til zoo. Afstand 2 km.</li>
                        <li>Gruppe pris til Middelaldercenter  4 km med bus.</li>
                        <li>Gå afstand til ministrand</li>
                        <li>Legepladser til børnene med hoppepude og svævebaner mv.</li>
                        <li>Stort fælleshus til at spise eller samles.</li>
                        <li>2 køkkener på pladsen.</li>
                        <li>Bad og vand er indkluderet.</li>
                        <li>Både legoland og lalandia ligger indefor 5 km!</li>
                    </ul>

                    <p>
                        Midt Camping minder meget om en Tyrkisk park, det er vi meget glade for, og det er vores intention at videreudvikle pladsen med faciliteter for voksne og børn uden denne stemning går tabt.
                        Vi ønsker at pladsen skal være et sted hvor campisten kan forvente, at møde andre turister/campister. Dvs. folk der slapper af og holder fri.
                        Vores plads udbygges til stadighed med faciliteter til børnene så familierne kan lade deres børn færdes frit i trygge forhold. Samtidigt med at der er nogle spændende lege tilbud.
                    </p>
                    <blockquote></blockquote>
                    <p>
                        Teltcampisterne vil bemærke, at der også er tænkt på dem med faciliteter der gør livet, lettere specielt når vejret driller.
                        Vi vil kontinueligt opgradere eksisterende bade og vaskeforhold med fornuftige og praktiske faciliteter.
                        Vi vil forsøge at undgå mønt/polet/plastikkort indkast i badehuset, så pladsens brugere kan gå ind og bade uden problemer. 
                    </p>
                    <blockquote></blockquote>

                    <h3>Information omkring hunde:</h3>
                    <ul>
                        <li>Det er tilladt at have dyr med på camping.</li>
                        <li>Man kan evt sætte et dyre-hegn op ved vogn/telt under opholdet.</li>
                        <li>Hunde skal være under kontrol til alle tider.</li>
                        <li>Hunde må ikke efterlades på pladsen eller i campingvognen.</li>
                        <li>Der er gode muligheder for at lufte hunde ved siden af campingpladsen.</li>
                    </ul>
                </div>
            </div>
        </div>
        <%-- Info text --%>

        <footer>
            <div class="Footer__title">Kontakt</div>
            <div class="Footer__link">Email</div>
            <div class="Footer__link">Telefon</div>
            <div class="privacy-box">Privacy Policy - Terms and conditions</div>
        </footer>
    </form>
</body>
</html>
