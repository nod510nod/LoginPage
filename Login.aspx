<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" UnobtrusiveValidationMode="None"%>﻿

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1">
        
    <link rel="stylesheet" type="text/css" href="css/StyleSheet.css" />
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
    <title>Lab 4</title>
</head>
<body>
    <div class ="test">
    <form id="form1" runat="server" class="form-signin">
    
       <h2 class="form-signin-heading">Please sign in</h2>

                    <asp:TextBox ID="TextBoxUser" runat="server" placeholder="User Name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorUser" runat="server" ControlToValidate="TextBoxUser" CssClass="auto-style7" ErrorMessage="Enter username." ForeColor="Red"></asp:RequiredFieldValidator>

                    <asp:TextBox ID="TextBoxPW" runat="server"  TextMode="Password" placeholder="Password"></asp:TextBox>
                    <br />
                    <a href="Registration.aspx">Register</a>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" runat="server" ControlToValidate="TextBoxPW" CssClass="auto-style7" ErrorMessage="Enter password." ForeColor="Red" style=" margin-right: 100px;"></asp:RequiredFieldValidator>                               
                    <asp:Button  class="btn btn-primary" ID="ButtonLog" runat="server" OnClick="ButtonLog_Click" Text="Login" Width="109px" />
    </form>
    </div>
</body>
</html>
