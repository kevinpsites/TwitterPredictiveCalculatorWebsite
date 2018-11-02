<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TwitterPredictiveCalculatorWebsite.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <h2>Twitter Re-Tweet Prediction Calculator</h2>
            <table>
                <tr>
                    <td>Gender</td>
                    <td>
                        <asp:RadioButtonList ID="rblGender" runat="server">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td>Is Re-share</td>
                    <td>
                        <asp:RadioButtonList ID="rblReshare" runat="server">
                            <asp:ListItem Value="1">Yes</asp:ListItem>
                            <asp:ListItem Value="0">No</asp:ListItem>
                        </asp:RadioButtonList>
                        
                    </td>
                    
                </tr>
                <tr>
                    <td>Klout</td>
                    <td>
                        <asp:TextBox ID="txtKlout" runat="server"></asp:TextBox>
                      
                    </td>
                </tr>
                <tr>
                    <td>Sentiment</td>
                    <td>
                        <asp:TextBox ID="txtSentiment" runat="server"></asp:TextBox>
                      
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:button ID="btnPredict" runat="server" Text="Predict" OnClick="btnPredict_Click"/></td>
                    <td></td>
                </tr>
            </table>
            <asp:Label ID="lblResults" runat="server" Text="This is where my results will go"></asp:Label>
        </div>
    </form>
</body>
</html>
