<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Priser.aspx.cs" Inherits="Campingpladsen_Projekt_H1.Priser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="styleSheet" href="StyleSheet.css" />
    <title>Midt Camping - Priser</title>
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

        <%-- Price table --%>
        <div class="row">
            <div class="leftcolumn33">
                <div class="sidecard"></div>
            </div>

            <div class="middlecolumn33">
                <div class="card">
                    <h2>Priser</h2>
                    <h3>Her er en oversigt over vores priser:</h3>
                    <table class="pricetable" border="1" frame="void" rules="rows">
                        <tr>
                            <th>Campingplads (campingvogn / autocamper)</th>
                            <th>Højsæson / Lavsæson</th>
                        </tr>
                        <tr>
                            <td>Pladsgebyr (lille plads) pr. døgn m/ strøm</td>
                            <td>60,- / 50,-</td>
                        </tr>
                        <tr>
                            <td>Pladsgebyr (stor plads) pr. døgn m/ strøm</td>
                            <td>80,- / 65,-</td>
                        </tr>
                        <tr>
                            <td>Voksne</td>
                            <td>82,- / 87,-</td>
                        </tr>
                        <tr>
                            <td>Børn</td>
                            <td>42,- / 49,-</td>
                        </tr>
                        <tr>
                            <td>Hund</td>
                            <td>30,- / 30,-</td>
                        </tr>
                        <tr>
                            <th>Teltplads</th>
                            <th>Højsæson / Lavsæson</th>
                        </tr>
                        <tr>
                            <td>Voksne</td>
                            <td>82,- / 87,-</td>
                        </tr>
                        <tr>
                            <td>Børn</td>
                            <td>42,- / 49,-</td>
                        </tr>
                        <tr>
                            <td>Pladsgebyr pr. døgn m/ strøm</td>
                            <td>35,- / 45,-</td>
                        </tr>
                        <tr>
                            <th>Hytter</th>
                            <th>Højsæson / Lavsæson</th>
                        </tr>
                        <tr>
                            <td>Standard hytte (4 pers.) pr. døgn m/ strøm</td>
                            <td>500,- / 350,-</td>
                        </tr>
                        <tr>
                            <td>Luksus hytte (4-6 pers.) pr. døgn m/ strøm</td>
                            <td>850,- / 600,-</td>
                        </tr>
                        <tr>
                            <td>Voksne</td>
                            <td>82,- / 87,-</td>
                        </tr>
                        <tr>
                            <td>Børn</td>
                            <td>42,- / 49,-</td>
                        </tr>
                        <tr>
                            <td>Hund</td>
                            <td>30,- / 30,-</td>
                        </tr>
                        <tr>
                            <th>Sæsonpladser</th>
                            <th>Højsæson / Lavsæson</th>
                        </tr>
                        <tr>
                            <td>Forår (1. april - 30. juni)</td>
                            <td>4.100,-</td>
                        </tr>
                        <tr>
                            <td>Sommer (1. april - 30. september)</td>
                            <td>9.300,-</td>
                        </tr>
                        <tr>
                            <td>Efterår (15. august - 31. oktober)</td>
                            <td>2.900,-</td>
                        </tr>
                        <tr>
                            <td>Vinter (1. oktober - 31. marts)</td>
                            <td>3.500,-</td>
                        </tr>
                        <tr>
                            <th>Tillæg</th>
                            <th>Pris</th>
                        </tr>
                        <tr>
                            <td>Sengelinned (pr. ophold)</td>
                            <td>30,-</td>
                        </tr>
                        <tr>
                            <td>Slutrengøring4 (hytter)</td>
                            <td>150,-</td>
                        </tr>
                        <tr>
                            <td>Cykelleje (pr. dag)</td>
                            <td>200,-</td>
                        </tr>
                        <tr>
                            <td>Adgang til badeland (voksen)</td>
                            <td>30,-</td>
                        </tr>
                        <tr>
                            <td>Adgang til badeland (børn)</td>
                            <td>15,-</td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <%-- Price table --%>


        <footer>
            <div class="Footer__title">Kontakt</div>
            <div class="Footer__link">Email</div>
            <div class="Footer__link">Telefon</div>
            <div class="privacy-box">Privacy Policy - Terms and conditions</div>
        </footer>
    </form>
</body>
</html>
