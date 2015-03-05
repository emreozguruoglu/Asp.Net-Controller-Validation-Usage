<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebControllers.Default" %>

<%@ Register src="mycontrol.ascx" tagname="mycontrol" tagprefix="uc1" %>

<%-- Sayfaya register edildi mycontrol.
    tagprefix="emre" yazarsan kod aşşağıda çağrıldığı yerde emre:mycontrol olarak çağırırsın...! --%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3 {
            height: 28px;
            width: 26px;
        }
        .auto-style4 {
            height: 23px;
            width: 26px;
        }
        .auto-style6 {
            height: 23px;
            width: 226px;
        }
        .auto-style7 {
            width: 226px;
        }
        .auto-style8 {
            height: 28px;
            width: 226px;
        }
        .auto-style9 {
            width: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width: 100%; height: 85px;">
            <tr>
                <td class="auto-style4">
                    <uc1:mycontrol ID="mycontrol1" runat="server" />
                </td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style9">Ad:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Lütfen bir ad giriniz" ControlToValidate="txtName"></asp:RequiredFieldValidator>
                    <%--Error Message--%>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Soyad:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtSurname" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Lütfen bir soyad giriniz" ControlToValidate="txtSurname"></asp:RequiredFieldValidator>
                    <%--Error Message--%>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Doğum Tarihi:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtBirthDay" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Lütfen dogum tarihinizi giriniz" ControlToValidate="txtBirthDay"></asp:RequiredFieldValidator>
                    <%--Error Message--%>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">E-Mail:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Lütfen bir e-mail giriniz" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
                    <%--Error Message--%>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Şehir:</td>
                <td class="auto-style8">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Ankara</asp:ListItem>
                        <asp:ListItem>Istanbul</asp:ListItem>
                        <asp:ListItem>Trabzon</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style8">
                    <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Gönder" />
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" /> 
                    <%--Üstteki kısımı ekleyince diğer validationların içeriğini toplu döker ekrana.Hiçbir şey yapmanıza gerek yoktur.--%>
                </td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style8">
                    <asp:Label ID="lblOutputLabel" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
