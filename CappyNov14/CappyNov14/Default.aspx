<%@ Page Title="Kennesaw United ~ Home of the Wolves" Language="VB" MasterPageFile="~/Master1.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="Home" %>

<script runat="server">

    Protected Sub Page_Load(sender As Object, e As EventArgs)

    End Sub
</script>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            margin: 0 auto;
            width: 246px;
            height: 134px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <img alt="Kennesaw United Logo" class="auto-style3" longdesc="Logo" src="images/kennesaw%20united%20logo.jpg" /><table class="home-table" style="width:100%;">
        <tr>
             <!--image provide by https://www.pexels.com/photo/action-activity-balls-day-296302/ -->
            <td class="home-table"><img src="../images/kidsoccer.jpg" class="home-table-img" alt="U-6 Leagues" title="U-6 Leagues"/></td>
            <td class="home-table"> 
                <ul>
                    <li>Kennesaw United is the fastest growing club in Georgia. The leadership within our coaches shows our committment in growing great athelets. </li>
                    <li>Start them young, train them right, watch them grow. </li>
                    <li>The season will include Rec, Club level of playing </li>
                    <li>The goal is to build a true soccer team and players that will support each other on and off the field. Coaches and staff will share the talent brought to Kennesaw United to meet the needs of players teams and the club all together. </li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>
                <ul>
                    <li>At the club level our student Athletes learn to balance the school life with the sports life. </li>
                    <li>Since most scouts seek new college players in the 10th grade Kennesaw United helps our players by setting them up with a recruiting portal that has their current stats to be viewed conviently. </li>
                    <li>What makes the college recruiting process so difficult is knowing what position is a good fit for an individual. At our club level we evaluate inviduals on their size and attributes so they may train for the position that will work best for them. </li>
                    <li>Allowing parents to be a part of the process is important as it allows players the opportunity to take the initiative to send emails and setup college visits, but most important allows a coach to know the player rather than know the parent. </li>
                </ul>
            </td>
            <!--image provide by https://www.pexels.com/photo/action-activity-adult-athletes-262524/  -->
            <td><img src="../images/clubsoccer.jpg" class="home-table-img" alt="Grow as a team" title="Grow as a team" /></td>
        </tr>
        <tr>
            <!--image provide by https://www.pexels.com/photo/three-women-playing-soccer-game-685382/  -->
            <td><img src="../images/girlssoccer.jpg" class="home-table-img" alt="Join one of our competitive leagues" title="Join one of our competitive leagues" /></td>
            <td>
                <ul>
                    <li>With our Rec and Club level, our girls programs teach our young ladies to be prepared for the soccer world. </li>
                    <li>Ladies come out and practice to be the best they can be. </li>
                    <li>Whether the transition is from rec to club the training is intense and designed for the next level </li>
                    <li>Please contact us for the recruiting process if playing on the next level is your goal. </li>
                </ul>
            </td>
        </tr>
    </table>
</asp:Content>

