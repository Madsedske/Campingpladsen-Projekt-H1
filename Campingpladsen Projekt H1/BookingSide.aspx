<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookingSide.aspx.cs" Inherits="Campingpladsen_Projekt_H1.BookingSide" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="styleSheet" href="StyleSheet.css" />
    <title>Midt Camping - Booking</title>
</head>
<body>
    <div>
        <img src="/Picture/Banner.png" width="100%"/>
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
                    <h2>Booking din næste campingtur her</h2>   
                    <table class="BookingTable">           
                            <tr colspan="2"> <td>
                                <asp:Label ID="Label1" runat="server" Text="Fornavn"></asp:Label><br />
                                <asp:TextBox ID="TextBoxFornavn" runat="server"></asp:TextBox></td>
                            <td>
                                <asp:Label ID="Label14" runat="server" Text="Sæsonplads: "></asp:Label>
                                <asp:DropDownList ID="DropDownSæsonPlads" runat="server" DataSourceID="SqlDataSource3" DataTextField="SeasonType" DataValueField="SeasonType"></asp:DropDownList> 
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:SeasonSite %>" SelectCommand="SELECT * FROM [SeasonSite]"></asp:SqlDataSource>
                                </td>
                            </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="Efternavn"></asp:Label><br />
                                <asp:TextBox ID="TextBoxEfternavn" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Label ID="Label7" runat="server" Text="Antal Voksne: "></asp:Label>
                                <asp:DropDownList ID="DropDownListVoksne" runat="server">
                                    <asp:ListItem Text="1" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="2" Value="2"></asp:ListItem>
                                    <asp:ListItem Text="3" Value="3"></asp:ListItem>
                                    <asp:ListItem Text="4" Value="4"></asp:ListItem>
                                    <asp:ListItem Text="5" Value="5"></asp:ListItem>
                                    <asp:ListItem Text="6" Value="6"></asp:ListItem>
                                    <asp:ListItem Text="7" Value="7"></asp:ListItem>
                                    <asp:ListItem Text="8" Value="8"></asp:ListItem>
                                    <asp:ListItem Text="9" Value="9"></asp:ListItem>
                                    <asp:ListItem Text="10" Value="10"></asp:ListItem>
                                    <asp:ListItem Text="11" Value="11"></asp:ListItem>
                                    <asp:ListItem Text="12" Value="12"></asp:ListItem>
                                    <asp:ListItem Text="13" Value="13"></asp:ListItem>
                                    <asp:ListItem Text="14" Value="14"></asp:ListItem>
                                    <asp:ListItem Text="15" Value="15"></asp:ListItem>
                                </asp:DropDownList>
                                </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text="Adresse"></asp:Label><br />
                                <asp:TextBox ID="TextBoxAdresse" runat="server"></asp:TextBox></td>
                            <td>
                                <asp:Label ID="Label8" runat="server" Text="Antal Børn: "></asp:Label>
                                <asp:DropDownList ID="DropDownListBørn" runat="server">
                                    <asp:ListItem Text="0" Value="0"></asp:ListItem>
                                    <asp:ListItem Text="1" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="2" Value="2"></asp:ListItem>
                                    <asp:ListItem Text="3" Value="3"></asp:ListItem>
                                    <asp:ListItem Text="4" Value="4"></asp:ListItem>
                                    <asp:ListItem Text="5" Value="5"></asp:ListItem>
                                    <asp:ListItem Text="6" Value="6"></asp:ListItem>
                                    <asp:ListItem Text="7" Value="7"></asp:ListItem>
                                    <asp:ListItem Text="8" Value="8"></asp:ListItem>
                                    <asp:ListItem Text="9" Value="9"></asp:ListItem>
                                    <asp:ListItem Text="10" Value="10"></asp:ListItem>
                                    <asp:ListItem Text="11" Value="11"></asp:ListItem>
                                    <asp:ListItem Text="12" Value="12"></asp:ListItem>
                                    <asp:ListItem Text="13" Value="13"></asp:ListItem>
                                    <asp:ListItem Text="14" Value="14"></asp:ListItem>
                                    <asp:ListItem Text="15" Value="15"></asp:ListItem>
                                </asp:DropDownList>
                               </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label6" runat="server" Text="Postnummer"></asp:Label><br />
                                <asp:TextBox ID="TextBoxPostnummer" runat="server"></asp:TextBox></td>
                            <td>
                                 <asp:Label ID="Label9" runat="server" Text="Antal Hunde: "></asp:Label>
                                <asp:DropDownList ID="DropDownListHunde" runat="server">
                                    <asp:ListItem Text="0" Value="0"></asp:ListItem>
                                    <asp:ListItem Text="1" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="2" Value="2"></asp:ListItem>
                                    <asp:ListItem Text="3" Value="3"></asp:ListItem>
                                    <asp:ListItem Text="4" Value="4"></asp:ListItem>
                                    <asp:ListItem Text="5" Value="5"></asp:ListItem>
                                    <asp:ListItem Text="6" Value="6"></asp:ListItem>
                                    <asp:ListItem Text="7" Value="7"></asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label><br />
                                <asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Label ID="Label10" runat="server" Text="Plads: "></asp:Label>
                                <asp:DropDownList ID="DropDownListVælgPlads" runat="server" DataSourceID="SqlDataSource1" DataTextField="SiteNumber" DataValueField="SiteNumber">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CampingSite %>" SelectCommand="SELECT [SiteNumber] FROM [CampingSite]"></asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label5" runat="server" Text="Tlf.nr."></asp:Label><br />
                                <asp:TextBox ID="TextBoxTlf" runat="server"></asp:TextBox></td>
                            <td>
                                <asp:Label ID="Label15" runat="server" Text="Cykelleje: "></asp:Label>
                                <asp:DropDownList ID="DropDownCykelleje" runat="server">
                                    <asp:ListItem Text="0" Value="0"></asp:ListItem>
                                    <asp:ListItem Text="1" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="2" Value="2"></asp:ListItem>
                                    <asp:ListItem Text="3" Value="3"></asp:ListItem>
                                    <asp:ListItem Text="4" Value="4"></asp:ListItem>
                                    <asp:ListItem Text="5" Value="5"></asp:ListItem>
                                    <asp:ListItem Text="6" Value="6"></asp:ListItem>
                                    <asp:ListItem Text="7" Value="7"></asp:ListItem>
                                    <asp:ListItem Text="8" Value="8"></asp:ListItem>
                                    <asp:ListItem Text="9" Value="9"></asp:ListItem>
                                    <asp:ListItem Text="10" Value="10"></asp:ListItem>
                                    <asp:ListItem Text="11" Value="11"></asp:ListItem>
                                    <asp:ListItem Text="12" Value="12"></asp:ListItem>
                                    <asp:ListItem Text="13" Value="13"></asp:ListItem>
                                    <asp:ListItem Text="14" Value="14"></asp:ListItem>
                                    <asp:ListItem Text="15" Value="15"></asp:ListItem>
                                </asp:DropDownList>                             
                            </td>
                        </tr>
                         <tr>
                            <td>
                                <asp:Label ID="Label17" runat="server" Text="Adgang til Badeland (Børn): "></asp:Label>
                                <asp:DropDownList ID="DropDownBadelandBørn" runat="server">
                                    <asp:ListItem Text="0" Value="0"></asp:ListItem>
                                    <asp:ListItem Text="1" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="2" Value="2"></asp:ListItem>
                                    <asp:ListItem Text="3" Value="3"></asp:ListItem>
                                    <asp:ListItem Text="4" Value="4"></asp:ListItem>
                                    <asp:ListItem Text="5" Value="5"></asp:ListItem>
                                    <asp:ListItem Text="6" Value="6"></asp:ListItem>
                                    <asp:ListItem Text="7" Value="7"></asp:ListItem>
                                    <asp:ListItem Text="8" Value="8"></asp:ListItem>
                                    <asp:ListItem Text="9" Value="9"></asp:ListItem>
                                    <asp:ListItem Text="10" Value="10"></asp:ListItem>
                                    <asp:ListItem Text="11" Value="11"></asp:ListItem>
                                    <asp:ListItem Text="12" Value="12"></asp:ListItem>
                                    <asp:ListItem Text="13" Value="13"></asp:ListItem>
                                    <asp:ListItem Text="14" Value="14"></asp:ListItem>
                                    <asp:ListItem Text="15" Value="15"></asp:ListItem></asp:DropDownList></td>
                            <td>
                                  <asp:Label ID="Label11" runat="server" Text="Rengøring? (Hytter)"></asp:Label>
                                <asp:CheckBox ID="CheckBoxRengøring" runat="server" />  
                            </td>
                        </tr>
                         <tr>
                            <td> 
                                <asp:Label ID="Label16" runat="server" Text="Adgang til Badeland (Voksen): "></asp:Label>
                                <asp:DropDownList ID="DropDownBadelandVoksen" runat="server">
                                    <asp:ListItem Text="0" Value="0"></asp:ListItem>
                                    <asp:ListItem Text="1" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="2" Value="2"></asp:ListItem>
                                    <asp:ListItem Text="3" Value="3"></asp:ListItem>
                                    <asp:ListItem Text="4" Value="4"></asp:ListItem>
                                    <asp:ListItem Text="5" Value="5"></asp:ListItem>
                                    <asp:ListItem Text="6" Value="6"></asp:ListItem>
                                    <asp:ListItem Text="7" Value="7"></asp:ListItem>
                                    <asp:ListItem Text="8" Value="8"></asp:ListItem>
                                    <asp:ListItem Text="9" Value="9"></asp:ListItem>
                                    <asp:ListItem Text="10" Value="10"></asp:ListItem>
                                    <asp:ListItem Text="11" Value="11"></asp:ListItem>
                                    <asp:ListItem Text="12" Value="12"></asp:ListItem>
                                    <asp:ListItem Text="13" Value="13"></asp:ListItem>
                                    <asp:ListItem Text="14" Value="14"></asp:ListItem>
                                    <asp:ListItem Text="15" Value="15"></asp:ListItem></asp:DropDownList>   </td>
                            <td>
                                <asp:Label ID="Label18" runat="server" Text="Sengelinned"></asp:Label>
                                <asp:CheckBox ID="CheckBoxSengelinned" runat="server" />
                            </td>
                        </tr>
                        <tr><td><p></p></td><td><p></p></td></tr>
                        <tr><td><asp:Label ID="Label12" runat="server" Text="Start dato"></asp:Label><br />
                     <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" Format="yyyy/MM/dd" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="220px" NextPrevFormat="FullMonth" DayNameFormat="Shortest" TitleFormat="Month">
                        <DayHeaderStyle Font-Bold="True" Font-Size="7pt" BackColor="#CCCCCC" ForeColor="#333333" Height="10pt" />
                         <DayStyle Width="14%" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                         <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
                        <TitleStyle BackColor="#2f6073" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
                        <TodayDayStyle BackColor="#F2AF5C" />
                    </asp:Calendar></td>
                            <td><asp:Label ID="Label13" runat="server" Text="Slut dato"></asp:Label><br />
                     <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="Black" Format="yyyy/MM/dd" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="220px" NextPrevFormat="FullMonth" DayNameFormat="Shortest" TitleFormat="Month">
                        <DayHeaderStyle Font-Bold="True" Font-Size="7pt" BackColor="#CCCCCC" ForeColor="#333333" Height="10pt" />
                         <DayStyle Width="14%" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                         <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
                        <TitleStyle BackColor="#2f6073" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
                        <TodayDayStyle BackColor="#F2AF5C" />
                    </asp:Calendar></td>
                        </tr>
                        <tr>
                            <td><asp:Button ID="ButtonBestil" runat="server" Text="Bestil" OnClick="ButtonBestil_Click" /></td> 
                        </tr>
                    </table>

                    <table class="BookingTable">
                        <tr>
                            <td>
                                <img class="imgMap" src="Picture/kortover.PNG" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <ul>
                                    <li>Teltplads 1-50</li>
                                    <li>Lille plads 51-217</li>
                                    <li>Stor plads 218-309</li>
                                    <li>Standard hytte 310-317</li>
                                    <li>Luksus hytte 318-324</li>
                                </ul>
                            </td>
                        </tr>
                    </table>
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
            <div class="social-media-box">Facebook - Instagram</div>
        </footer>
    </form>
</body>
</html>
