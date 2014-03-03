<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mortgage Calculator</title>

    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />

</head>
<body>
    <form id="form1" runat="server">
    <div style="position: relative">
    
    <h1>Chuck's Rockin' Mortgage Calculator</h1>
        
        <br /><br />
     
        *
     
        Loan Amount:&nbsp;&nbsp;&nbsp; <asp:TextBox ID="loanAmtTB" runat="server" ></asp:TextBox>
                  
        <asp:RequiredFieldValidator ID="amountRFV" runat="server" ControlToValidate="loanAmtTB" ErrorMessage="Please enter a loan amount."></asp:RequiredFieldValidator>
                  
        <br /><br />      
        
        *      
        
        Annual Interest %:&nbsp;&nbsp;&nbsp; <asp:TextBox ID="interestTB" runat="server" ></asp:TextBox>
        
        <asp:RequiredFieldValidator ID="interestRFV" runat="server" ControlToValidate="interestTB" ErrorMessage="Please enter an interest rate."></asp:RequiredFieldValidator>
        
        <br /><br />

        *

        Loan Term (Years):&nbsp;&nbsp;&nbsp; <asp:TextBox ID="termTB" runat="server" ></asp:TextBox>
        
        <asp:RequiredFieldValidator ID="termRFV" runat="server" ControlToValidate="termTB" ErrorMessage="Please enter a loan term."></asp:RequiredFieldValidator>
        
        <br /><br />

        <asp:Button ID="calculateBTN" runat="server" Text="Calculate" />
        
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="clearBTN" runat="server" Text="Clear" />
        <br />
        <br />
        Welcome to my mortgage calculator. Please complete the fields above to have your monthly payment and loan repayment schedule calculated for you.<br /><br />
               
        <h2>Monthly Payment: &nbsp; <asp:Label ID="lblMonthlyPmt" runat="server" BackColor="White"></asp:Label></h2>
        </div>

        <div id="table">
        <br />
                <asp:GridView ID="loanGridView" runat="server" CssClass="cssgridview" HorizontalAlign="Center">
            <AlternatingRowStyle CssClass="alt" />
            </asp:GridView>
         <br />   
        </div>
    </form>
</body>
</html>
