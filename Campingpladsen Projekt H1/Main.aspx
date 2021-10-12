<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="Campingpladsen_Projekt_H1.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="styleSheet" href="StyleSheet.css" />
    <title>Midt Camping</title>
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
                    <h2>Velkommen til Midt Camping.</h2>
                    <h3>Kort info:</h3>
                    <p>
                        Campingpladsen ligger kun 10 min fra Danmarks bedste park, nemlig legoland og byder på masser af gode oplevelser. 
                        Vi tilbyder trope vandland til billige priser, stort fælleshus med TV og internet, legepladser for store og små børn og ikke mindst gode pladsforhold til store vogne.
                        Teltcampisterne vil bemærke, at der også er tænkt på dem med faciliteter, der gør livet, lettere specielt når vejret driller.
                    </p>
                    <blockquote></blockquote>
                    <p>På vores campingplads er græsset selvfølgelig grønnere end alle andre steder. Vandet er varmere, renere og smukkere, men vi har også Danmarks bedste service! Hytterne er af den bedste kvalitet. De er flotte og rummelige. Pladserne er flotte og velplejet.</p>
                    <p>Hos os får du altid lige præcis det du bestiller og det er alle pengene værd. Vi svigter ikke, vi fejler ikke, vi er ikke arrogante, vi er bare bedre.</p>
                </div>
            </div>
            <div class="rightcolumn33">
                <div class="sidecard"></div>
            </div>
        </div>
        <%-- Info text --%>

        <%-- Images --%>
        <div class="row">
            <div class="leftcolumn50">
                <div class="card">
                    <div class="lastpicbar">
                        <div class="imgbar">
                            <img class="imgset" src="/Picture/badeland.jpg" />
                            <img class="imgset" src="/Picture/dronebillede.jpg" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="rightcolumn50">
                <div class="card">
                    <div class="lastpicbar">
                        <div class="imgbar">
                            <img class="imgset" src="/Picture/laveredronebillede.jpg" />
                            <img class="imgset" src="/Picture/legeplads.jpg" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%-- Images --%>


        <footer>
            <div class="Footer__title">Kontakt</div>
            <div class="Footer__link">Email</div>
            <div class="Footer__link">Telefon</div>
            <div class="privacy-box">Privacy Policy - Terms and conditions</div>
        </footer>
    </form>
</body>
</html>
