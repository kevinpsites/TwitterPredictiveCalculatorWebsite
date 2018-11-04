<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TwitterPredictiveCalculatorWebsite.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="style.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container-row">
                <div class="flex-item">
                    <h2>Twitter Re-Tweet Prediction Calculator</h2>
                </div>
            </div>
            <div class="container-row">
                <div class="flex-item2">
                    
                </div>
                <div class="flex-item2">
                    <p>Gender</p>
                    <asp:RadioButtonList ID="rblGender" runat="server"  RepeatDirection="Horizontal" CssClass="RBL">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                </div>

                <div class="flex-item2">
                    
                </div>
                <div class="flex-item2">
                    <p>Is Re-share</p>
                    <asp:RadioButtonList ID="rblReshare" runat="server"  RepeatDirection="Horizontal" CssClass="RBL">
                            <asp:ListItem Value="1">Yes</asp:ListItem>
                            <asp:ListItem Value="0">No</asp:ListItem>
                        </asp:RadioButtonList>
                </div>
            </div>

            <div class="container-row">
                <div class="flex-item3">
                    <p>Klout</p>
                    <asp:TextBox ID="txtKlout" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtKlout"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="RangeValidator" MaximumValue="100" MinimumValue="0" ControlToValidate="txtKlout" Visible="True" Type="Integer"></asp:RangeValidator>
                   
                </div>

                <div class="flex-item3">
                    <p>Sentiment</p>
                    <asp:TextBox ID="txtSentiment" runat="server"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtSentiment"></asp:RequiredFieldValidator>
                          <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="RangeValidator" MaximumValue="3" MinimumValue="-3" ControlToValidate="txtSentiment" Visible="True" Type="Integer"></asp:RangeValidator>
                    
                </div>
            </div>

            <div class="container-row">
                
            </div>
            <br />
            <div class="container-row">
                <div class="flex-item4">
                   <asp:button ID="btnPredict" runat="server" Text="Predict" OnClick="btnPredict_Click"/>
                    
                </div>
                <div class="flex-item">
                   <asp:Label ID="lblResults" runat="server" Text="This is where my results will go"></asp:Label>
                    
                </div>
            </div>
            
        </div>
    </form>
</body>
</html>
