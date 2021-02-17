<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Placedsuccessfully.aspx.cs" Inherits="Cosmetics_Project.Placedsuccessfully" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 357px;
        }
        .style2
        {
            width: 100%;
            height: 88px;
        }
        .style3
        {
            width: 405px;
        }
        .style4
        {
            height: 67px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="14pt" 
            ForeColor="Black" Text="Your Order Has Been Placed Sucessfully ,Thanks"></asp:Label>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Order ID:&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server"></asp:Label>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" BackColor="#FF0066" Font-Bold="True" 
            ForeColor="White" onclick="Button1_Click" Text="Download Invoice" />
        <br />
        <br />
        <br />
        <asp:Panel ID="Panel1" runat="server">
            <br />
        
            <table class="style1" border="1">
                <tr>
                    <td align="justify" 
                        style="font-size: 20px; font-weight: bold; text-decoration: none">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Retail Invoice&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        Order Number:&nbsp;
                        <asp:Label ID="Label3" runat="server"></asp:Label>
                        <br />
                        <br />
                        Order Date:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label4" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table border="1" class="style2">
                            <tr>
                                <td class="style3">
                                    <br />
                                    Buyer Address:<br />
                                    <br />
                                    <asp:Label ID="Label5" runat="server"></asp:Label>
                                    <br />
                                </td>
                                <td>
                                    Seller Address:
                                    <br />
                                    Beauty product,Mumbai</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            Height="144px" Width="856px">
                            <Columns>
                                <asp:BoundField DataField="sno" HeaderText="Sr.No">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="productid" HeaderText="Product ID">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="productname" HeaderText="Product Name">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="quantity" HeaderText="Quantity">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="price" HeaderText="Price">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="totalprice" HeaderText="Total Price">
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td>
                        <br />
                        Grand Total:&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label7" runat="server"></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <br />
                        Declaration: We declare that this invoice shows actual price of the goods 
                        described inclusive of taxes and that all particulars are true and correct.<br />
                        <br />
                        Incase you find Selling price on this invoice to be more than MRP mentioned on 
                        product,Please inform <a href="mailto:BeautyProduct@gmail.com">
                        BeautyProduct@gmail.com</a><br />
                        <br />
                        THIS IS A COMPUTER INVOICE AND DOES REQUIRED SIGNATURE<br /> </td>
                </tr>
            </table>
        </asp:Panel>
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
