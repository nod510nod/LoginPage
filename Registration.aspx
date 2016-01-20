<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" UnobtrusiveValidationMode="None"%>﻿
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>sign up!</title>

        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
        <link rel="stylesheet" type="text/css" href="css/StyleSheet.css" />
    


</head>
<body>
     <div class="test2">
     <form id="form2" runat="server" class="form-signin">
    
       <h2 class="form-signin-heading">Registration Page</h2>
               
        

                   Username: <asp:TextBox ID="TextBoxUN" runat="server" Width="180px"></asp:TextBox>
                 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUN" CssClass="auto-style12" ErrorMessage="User Name is required "></asp:RequiredFieldValidator>
                    <br />
                
                
                   Email:      <asp:TextBox ID="TextBoxEmail" runat="server" Width="180px"></asp:TextBox>
                
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxEmail" CssClass="auto-style12" ErrorMessage="Email is required "></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="You must enter vaild Email" ForeColor="Red" ControlToValidate="TextBoxEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
              
                 <p>Password:</p> 
                 
                    <asp:TextBox ID="TextBoxPass" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxPass" CssClass="auto-style12" ErrorMessage="Password is required "></asp:RequiredFieldValidator>
            <br />
                 Confrim Password: 
             
                    <asp:TextBox ID="TextRPass" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextRPass" CssClass="auto-style12" ErrorMessage="Password is required "></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPass" ControlToValidate="TextRPass" CssClass="auto-style12" ErrorMessage="Passwords don't match"></asp:CompareValidator>
                
                    <asp:DropDownList ID="DropDownCountry" runat="server" Width="180px">
                        <asp:ListItem>Select Country</asp:ListItem>
                        <asp:ListItem>United States</asp:ListItem>
                        <asp:ListItem>UK</asp:ListItem>
                        <asp:ListItem>Germany</asp:ListItem>
                        <asp:ListItem>France</asp:ListItem>
                 </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownCountry" CssClass="auto-style12" ErrorMessage="Select a Country" InitialValue="Select Country"></asp:RequiredFieldValidator>
             <br />
                    <input id="Reset1" type="reset" value="clear" class="btn btn-primary" /><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" class="btn btn-primary" />
            

    </form>

     </div> 
</body>
</html>
