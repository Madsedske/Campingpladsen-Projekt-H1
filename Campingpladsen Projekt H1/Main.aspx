<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="Campingpladsen_Projekt_H1.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="StyleSheet.css" />
    <title>Midt Camping</title>
</head>
<body>
    <div>
        <img src="/Picture/Banner.png" width="100%" />
    </div>
    <form id="form1" runat="server">
        <table class="topnav">
            <tr>
                <td class="headline"><a href="Main.aspx">Midt Camping</a></td>
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
                    <h2>Velkommen til Midt Camping.</h2>
                    <h3>Kort info:</h3>
                    <p>
                        Campingpladsen ligger kun 10 min fra Danmarks bedste park, nemlig legoland og byder på masser af gode oplevelser. 
                        Vi tilbyder trope vandland til billige priser, stort fælleshus med TV og internet, legepladser for store og små børn og ikke mindst gode pladsforhold til store vogne.
                        Teltcampisterne vil bemærke, at der også er tænkt på dem med faciliteter, der gør livet, lettere specielt når vejret driller.
                    </p>
                    <blockquote></blockquote>
                    <p>Her hos midt Camping går vi op i at alle har det godt</p>
                    <p>Her hos midt Camping går vi op i at alle har det godt</p>
                </div>
            </div>
            <div class="rightcolumn33">
                <div class="sidecard"></div>
            </div>
        </div>


        <div class="lastpicbar">
            <div class="imgbar">
                <img class="imgset" src="/Picture/badeland.jpg" />
                <img class="imgset" src="/Picture/dronebillede.jpg" />
                <img class="imgset" src="/Picture/laveredronebillede.jpg"/>
                <img class="imgset" src="/Picture/legeplads.jpg" />
            </div>
        </div>


        <div class="row">
            <div class="leftcolumn50">
                <div class="card">
                    <p>Sektion</p>
                </div>
                <div class="card">
                    <p>Sektion</p>
                </div>
            </div>
            <div class="rightcolumn50">
                <div class="card">
                    <p>Sektion</p>
                </div>
                <div class="card">
                    <p>Sektion</p>
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

