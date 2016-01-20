<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Confrim.aspx.cs" Inherits="Confrim" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Confirmation Page</title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>

    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
        <link rel="stylesheet" type="text/css" href="css/StyleSheet.css" />

</head>
<body>
    <form id="confrim" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1Reg" runat="server" ConnectionString="<%$ ConnectionStrings:RegConnectionString %>" SelectCommand="SELECT [FName], [LName], [Address1], [Address2], [Phone], [ZipCode], [State], [City], [InsurenceNum], [uImg] FROM [Uploas]"></asp:SqlDataSource>
    <h2 class="form-signin-heading">Confirmation Page</h2>
    </div>
        <div class="auto-style1">
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1Reg">
            <ItemTemplate>
                First Name:
                <asp:Label ID="FNameLabel" runat="server" Text='<%# Eval("FName") %>' />
                <br />
                Last Name:
                <asp:Label ID="LNameLabel" runat="server" Text='<%# Eval("LName") %>' />
                <br />
                Address 1:
                <asp:Label ID="Address1Label" runat="server" Text='<%# Eval("Address1") %>' />
                <br />
                Address 2:
                <asp:Label ID="Address2Label" runat="server" Text='<%# Eval("Address2") %>' />
                <br />
                Phone:
                <asp:Label ID="PhoneLabel" runat="server" Text='<%# Eval("Phone") %>' />
                <br />
                ZipCode:
                <asp:Label ID="ZipCodeLabel" runat="server" Text='<%# Eval("ZipCode") %>' />
                <br />
                State:
                <asp:Label ID="StateLabel" runat="server" Text='<%# Eval("State") %>' />
                <br />
                City:
                <asp:Label ID="CityLabel" runat="server" Text='<%# Eval("City") %>' />
                <br />
                Insurence Number:
                <asp:Label ID="InsurenceNumLabel" runat="server" Text='<%# Eval("InsurenceNum") %>' />
                <br />
                Image you uploaded:
                <asp:Label ID="uImgLabel" runat="server" Text='<%# Eval("uImg") %>' />
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
        </div>
    </form>
</body>
</html>
