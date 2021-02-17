<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Logout.aspx.cs" Inherits="Cosmetics_Project.Logout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<div style="border-style: double; background-image: url('images/19299539-makeup-brush-and-cosmetics-on-a-white-background-isolated-with-clipping-path[1].jpg'); width: 783px; table-layout: auto;" 
        align="center">
                <br />
                <br />
              <br />
               &nbsp;&nbsp; <table style="border-style: double; width: 49%" align="center" 
                    bgcolor="#CCCCFF">
                    <tr>
                        <td>
           
                            <br />
                            <br />
                            <br />
           
                &nbsp;&nbsp;&nbsp;
           
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="15pt" 
                    ForeColor="Black" Text="Are You Sure You Want To Logout?"></asp:Label>
                <br />
           
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" BackColor="#FF0066" Font-Bold="True" 
                    Font-Size="13pt" ForeColor="White" onclick="Button1_Click" Text="Are" 
                    Width="77px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;



                <asp:Button ID="Button2" runat="server" BackColor="#FF0066" Font-Bold="True" 
                    Font-Size="13pt" ForeColor="White" onclick="Button2_Click" Text="No" 
                    Width="77px" />
                


                            <br />
                            <br />
                        </td>
                    </tr>
                </table>
                <br />
                <br />
        
                


</div>
</asp:Content>
