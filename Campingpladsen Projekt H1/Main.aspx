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
                    <div>
                        <p>
                            Campingpladsen ligger kun 10 min fra Danmarks bedste park, nemlig legoland og byder på masser af gode oplevelser. Vores placering midt i smukke Jylland, giver adgang
                        til utallige af forskellige oplevelser, der vil med sikkerhed underholde hele din familie, i foreholdt til alle andre mere kedelige og deprimerende campingpladser
                        her i danmark.
                        </p>

                        <p>Som man siger:</p>

                        <blockquote>"Alle veje fører til Rom, og Rom er Midt campingplads"</blockquote>

                        <p>- Midt campingplads ejer, 2021</p>

                        <p>
                            Vi tilbyder trope vandland til billige priser, stort fælleshus med TV og internet, legepladser for store og små børn og ikke mindst gode pladsforhold til store vogne.
                        Teltcampisterne vil bemærke, at der også er tænkt på dem med faciliteter, der gør livet, lettere specielt når vejret driller.
                        </p>
                    </div>
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
        <div class="lastpicbar">
            <div class="imgbar">
                <img class="imgset" src="/Picture/badeland.jpg" />
                <img class="imgset" src="/Picture/dronebillede.jpg" />
                <img class="imgset" src="/Picture/laveredronebillede.jpg" />
                <img class="imgset" src="/Picture/legeplads.jpg" />
                <img class="imgset" src="/Picture/215681_Tisvildeleje_Camping_pool.jpg" />
                <img class="imgset" src="/Picture/campingplads-gaasevig-1024x576.jpg" />
                <img class="imgset" src="/Picture/269961_campingareal-nfj.png" />
            </div>
        </div>
        <%-- Images --%>


        <footer>
            <div class="Footer__title">Kontakt os!</div>
            <div class="Footer__link">Email: Midtcamping@campingemail.dk</div>
            <div class="Footer__link">Telefon: +45 12 34 56 78</div>
            <div class="privacy-box">Privacy Policy - Terms and conditions</div>                       
        </footer>
    </form>
</body>
</html>
