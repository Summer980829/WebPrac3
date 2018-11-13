<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BusTicketing.aspx.cs" Inherits="WebPrac3.BusTicketing" %>

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
               <td colspan="2" style="text-align:center">
                   <asp:Label ID="lblTime" runat="server" Text=""></asp:Label>
               </td>
           </tr>

           <tr>
               <td width="40%">
                   <asp:Label ID="Label2" runat="server" Text="Date :"></asp:Label>
               </td>
               <td>
                   <asp:Calendar ID="calDepartDt" runat="server" OnSelectionChanged="calDepartDt_SelectionChanged"></asp:Calendar>
                   <asp:TextBox ID="txtDepartDt" runat="server"></asp:TextBox>
                   <br/>

               </td>
           </tr>

           <tr>
               <td>
                   <asp:Label ID="lblAdult" runat="server" Text="Adult :"></asp:Label>
            </td>
               <td>
                   <asp:TextBox ID="txtAdult" runat="server"></asp:TextBox>
               </td>
           </tr>

           <tr>
               <td>
                   <asp:Label ID="lblChild" runat="server" Text="Child :"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="txtChild" runat="server"></asp:TextBox>
               </td>
           </tr>

           <tr>
               <td>
                   <asp:Label ID="lblFrom" runat="server" Text="From :"></asp:Label>
               </td>
               <td>
                   <asp:DropDownList ID="ddlFrom" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlFrom_SelectedIndexChanged">
                       <asp:ListItem>Hentian Duta</asp:ListItem>
                       <asp:ListItem>Hentian Putra</asp:ListItem>
                   </asp:DropDownList>
               </td>
           </tr>

           <tr>
               <td>
                   <asp:Label ID="lblTo" runat="server" Text="To :"></asp:Label>
               </td>
               <td>
                   <asp:DropDownList ID="ddlTo" runat="server" OnSelectedIndexChanged="ddlTo_SelectedIndexChanged" AutoPostBack="true">
                       <asp:ListItem>Butterworth</asp:ListItem>
                       <asp:ListItem>Seremban</asp:ListItem>
                   </asp:DropDownList>
               </td>
           </tr>

           <tr>
               <td>
                   <asp:Label ID="lblPrice" runat="server" Text="Price :"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="txtPrice" runat="server" Enabled="false"></asp:TextBox>
               </td>
           </tr>

         <tr>
               <td colspan="2">
                   <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
               </td>
           </tr>

           <tr>
               <td colspan="2">
                   <asp:Button ID="btnBookTkt" runat="server" Text="Book Ticket" 
                       OnClientClick="javascript:alert(' You are now will be redirected to the booking confirmation page ') " PostBackUrl="~/ConfirmBooking.aspx"  />
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:Button ID="txtCancel" runat="server" Text="Cancel"  OnClick="btnCancel_Click" OnMouseOver="this.value='Click if you confirm to reset selection'" OnMouseOut="this.value.'Cancel'"/>
               </td>
           </tr>
       </table>
    </form>
</body>
</html>
