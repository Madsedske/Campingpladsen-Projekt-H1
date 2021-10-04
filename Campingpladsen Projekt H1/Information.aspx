<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Information.aspx.cs" Inherits="Campingpladsen_Projekt_H1.Information" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="StyleSheet.css" />
    <title>Midt Camping - Information</title>
</head>
<body>
    <div>
        <img src="/Picture/Banner.png" width="100%">
    </div>
    <form id="form1" runat="server">
        <table class="topnav">
            <tr>
                <td class="headline">Midt Camping</td>
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
                    <h2>Information </h2>
                    <h3>Kort over pladsen:</h3>
                    <img src="Picture/kortover.PNG" />
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
                    </ul>
                </div>
            </div>
        </div>


         <footer>
            <div class="link-box__title">Kontakt</div>
            <div class="link-box__link">Email</div>
            <div class="link-box__link">Telefon</div>
            <div class="link-box__link">noget andet</div>
        
            <div class="privacy-box">Privacy Policy . Terms and conditions</div>
            <div class="social-media-box">Facebook . Instagram</div>
     </footer>
    </form>
</body>
</html>
