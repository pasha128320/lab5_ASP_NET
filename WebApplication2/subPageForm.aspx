<%@ Page Title="" Language="C#" MasterPageFile="~/homePage.Master" AutoEventWireup="true" CodeBehind="subPageForm.aspx.cs" Inherits="WebApplication2.subPageForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <asp:Label ID="Label3" runat="server" Text="Выберите, о каких подписках хотите узнать"></asp:Label>
    <br />
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1222" DataTextField="publishHouseType" DataValueField="idPublishHouseType" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1222" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [idPublishHouseType], [publishHouseType] FROM [publishHouseType]"></asp:SqlDataSource>
    <br />
    <br />
    <asp:Label ID="Label4" runat="server">Выберите издание, по которому желаете получить информацию</asp:Label>
    <br />
    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1111" DataTextField="publishHouse" DataValueField="publishHouse" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1111" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" OnSelecting="SqlDataSource1111_Selecting" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [publishHouse] FROM [publishHouse] WHERE ([idPublishHouseType] = ?)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="idPublishHouseType" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
</asp:SqlDataSource>
<br />
<br />
    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Выбрать тип подписки" />
    <br />
<br />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Visible="False">
    <Columns>
        <asp:BoundField DataField="publicationName" HeaderText="Название публикаций" SortExpression="publicationName" />
        <asp:BoundField DataField="publishHouse" HeaderText="Издание" SortExpression="publishHouse" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" OnSelecting="SqlDataSource1_Selecting1" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [publicationName], [publishHouse] FROM [publishHouse] WHERE ([publishHouse] = ?)">
    <SelectParameters>
        <asp:ControlParameter ControlID="DropDownList2" Name="publishHouse" PropertyName="SelectedValue" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
    <br />
&nbsp;&nbsp;&nbsp; 
</asp:Content>
