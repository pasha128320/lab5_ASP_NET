<%@ Page Title="" Language="C#" MasterPageFile="~/homePage.Master" AutoEventWireup="true" CodeBehind="homePageForm.aspx.cs" Inherits="WebApplication2.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label3" runat="server" Text="Введите код посылки"></asp:Label>
    <br />
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <br />
    <br />
    <br />
    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Найти посылку" />
<br />
<br />
<br />
<asp:SqlDataSource ID="SqlDataSource266765" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT status.status, package.departureDate, package.gettingDate, package.idStatus, package.idПосылки FROM (package INNER JOIN status ON package.idStatus = status.idStatus)"></asp:SqlDataSource>
<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource266765" Visible="False">
    <Columns>
        <asp:BoundField DataField="status" HeaderText="Статус" SortExpression="status" />
        <asp:BoundField DataField="departureDate" HeaderText="Дата отправки" SortExpression="departureDate" />
        <asp:BoundField DataField="gettingDate" HeaderText="Дата получения" SortExpression="gettingDate" />
        <asp:BoundField DataField="idStatus" HeaderText="idStatus" SortExpression="idStatus" Visible="False" />
        <asp:BoundField DataField="idПосылки" HeaderText="idПосылки" InsertVisible="False" SortExpression="idПосылки" Visible="False" />
    </Columns>
</asp:GridView>
</asp:Content>

