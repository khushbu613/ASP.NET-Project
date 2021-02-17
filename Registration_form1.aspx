<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Registration_form1.aspx.cs" Inherits="Cosmetics_Project.Registration_form1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background-image: url('images/TempBanner.jpg'); background-repeat: no-repeat;">
    <table style="width: 1023px"> 
    <tr><td align="center" colspan="2" class="style5" >
        <h3 style="height: 46px; background-image: url('images/TempBanner.jpg'); background-repeat: no-repeat;">
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:Label ID="Label1" runat="server" Font-Size="40px" Font-Bold="True" Text="NEW USER REGISTRATION" 
            ForeColor="#660066"></asp:Label></h3>
            </td>
    </tr>

 <tr> 
<td align="right" style="font-size:larger; font-weight: bold;" >First Name</td> 
 <td>&nbsp;&nbsp; <asp:TextBox ID="txtFirstName" runat="server" Width="154px"></asp:TextBox> 
 </td> 
 <td><asp:RequiredFieldValidator ID="rfvFirstName" 
 runat="server" 
 ControlToValidate="txtFirstName" 
 ErrorMessage="First Name can't be left blank" 
 SetFocusOnError="True" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator> 
 </td> 
 </tr> 
 <tr> 
 <td align="right" style="font-size: large; font-weight: bold">Last Name</td> 
 <td>&nbsp;&nbsp; <asp:TextBox ID="txtLastName" runat="server" Width="155px"></asp:TextBox></td> 
 <td><asp:RequiredFieldValidator 
 ID="RequiredFieldValidator" runat="server" 
 ControlToValidate="txtLastName" 
 ErrorMessage="Last Name can't be left blank" 
 SetFocusOnError="True" ForeColor="Red" Display="Dynamic"> </asp:RequiredFieldValidator> 
 </td></tr>
 <tr><td align="right" style="font-size: large; font-weight: bold">Gender</td> 
 <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:RadioButtonList ID="rdoGender" 
 runat="server" > 
 <asp:ListItem>Male</asp:ListItem> 
 <asp:ListItem>Female</asp:ListItem> 
 </asp:RadioButtonList>
 </td> 
 <td><asp:RequiredFieldValidator 
 ID="RequiredFieldValidator0" 
 runat="server" 
 ControlToValidate="rdoGender" 
 ErrorMessage="Gender can't be left blank" 
 SetFocusOnError="True" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator> 
 </td></tr> 
 
 <tr><td align="right" style="font-size: large; font-weight: bold">City</td> 
 <td>&nbsp;&nbsp; <asp:TextBox ID="txtAdress" runat="server" 
 TextMode="MultiLine"> 
 </asp:TextBox> 
 </td> 
 <td><asp:RequiredFieldValidator ID="rfvAddress" 
 runat="server" 
 ControlToValidate="txtAdress" 
 ErrorMessage="Address can't be left blank" 
 SetFocusOnError="True" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator> 
 </td></tr> 
 
 <tr><td align="right" style="font-size: large; font-weight: bold">Email ID</td> 
 <td>&nbsp;&nbsp; <asp:TextBox ID="txtEmailID" runat="server" Width="155px"></asp:TextBox> 
 </td> 
 <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
         ControlToValidate="txtEmailID" ErrorMessage="Email can't be left blank" 
         SetFocusOnError="True" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator> 
 </td></tr> 
 <tr><td align="right" style="font-size: large; font-weight: bold">Password</td> 
 <td>&nbsp;&nbsp;&nbsp;
     <asp:TextBox ID="txtPwd" runat="server" 
 TextMode="Password" Width="155px"></asp:TextBox> 
 </td> <td>
     <asp:RequiredFieldValidator ID="rfvPwd" 
 runat="server" ControlToValidate="txtPwd" 
 ErrorMessage="Password can't be left blank" 
 SetFocusOnError="True" ForeColor="Red"></asp:RequiredFieldValidator>
     </td></tr>
 
 <tr><td align="right" style="font-size: large; font-weight: bold">Confirm Password</td> 
 <td>&nbsp;&nbsp;&nbsp;
     <asp:TextBox ID="txtRePwd" runat="server" 
 TextMode="Password" Width="154px"></asp:TextBox>
 </td> 

 <td><asp:CompareValidator ID="CompareValidator" 
 runat="server"  ControlToCompare="txtRePwd" 
 ControlToValidate="txtPwd" 
 Operator="Equal" 
 ErrorMessage="Password and confirm password do not match" 
 SetFocusOnError="True" ForeColor="Red"></asp:CompareValidator> 
 </td></tr> 
 
 <tr><td>
     &nbsp;</td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td></tr> 
 
 <tr><td><asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label> 
 </td> <td>
         &nbsp;</td></tr> 
 
 <tr><td align="right">
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</td><td>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnSave" runat="server" 
 Text="Sign Up" 
 onclick="btnSave_Click" Height="26px" BackColor="#FF0066" Font-Bold="True" 
             ForeColor="White" Width="86px"/>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <input id="Reset1" 
             style="font-size: 13px; font-weight: bold; background-color: #FF0066; color: #FFFFFF; width: 64px;" 
             type="reset" value="Clear" /></td></tr> </table></div>
   
</asp:Content>
