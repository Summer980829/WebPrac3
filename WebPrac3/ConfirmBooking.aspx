<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfirmBooking.aspx.cs" Inherits="WebPrac3.ConfirmBooking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table>
           <tr>
               <td colspan="2" style="text-align:center; font-weight:600; font-size:30px">
                   <asp:Label ID="Label1" runat="server" Text="ABC BUS ONLINE BOOKING & TICKETING SYSTEM"></asp:Label>
               </td>
           </tr>
          
            <tr>
               <td >
                   <asp:Label ID="lbl" runat="server" Text="You have confirmed your booking with the following details:"></asp:Label>
               </td>
           </tr>
            
            <tr>
                <td></td>
            </tr>

            <tr>
                <td>
                    <asp:Label ID="lblDetails" runat="server" Text=""></asp:Label>
                </td>
            </tr>

             <tr>
                <td></td>
            </tr>

            <tr>
                <td>
                    <asp:Label ID="lbl2" runat="server" Text="Please make payment at our counter."></asp:Label>
                </td>
            </tr>
    </table>

    </form>
</body>
</html>
