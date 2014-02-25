<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />

</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    Mike's Mortgage Calculator
        
        <br /><br />
     
        *
     
        Loan Amount:<asp:TextBox ID="loanAmtTB" runat="server" ></asp:TextBox>
                  
        <asp:RequiredFieldValidator ID="amountRFV" runat="server" ControlToValidate="loanAmtTB" ErrorMessage="Please enter a loan amount."></asp:RequiredFieldValidator>
                  
        <br /><br />      
        
        *      
        
        Annual Interest %: <asp:TextBox ID="interestTB" runat="server" ></asp:TextBox>
        
        <asp:RequiredFieldValidator ID="interestRFV" runat="server" ControlToValidate="interestTB" ErrorMessage="Please enter an interest rate."></asp:RequiredFieldValidator>
        
        <br /><br />

        *

        Loan Term (Years): <asp:TextBox ID="termTB" runat="server" ></asp:TextBox>
        
        <asp:RequiredFieldValidator ID="termRFV" runat="server" ControlToValidate="termTB" ErrorMessage="Please enter a loan term."></asp:RequiredFieldValidator>
        
        <br /><br />

        <asp:Button ID="calculateBTN" runat="server" Text="Calculate" />
        
        <br /><br />
                
        Monthly Payment: &nbsp; <asp:Label ID="lblMonthlyPmt" runat="server"></asp:Label>
        
        <br /><br />
        
        <asp:GridView ID="loanGridView" runat="server" />
            
        </div>
    </form>
</body>
</html>
