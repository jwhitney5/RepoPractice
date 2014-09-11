<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="XMLPage.aspx.cs" Inherits="XMLFiles_XMLPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="XmlDataSource1">
        <Columns>
            <asp:BoundField DataField="StudentID" HeaderText="StudentID" SortExpression="StudentID" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="Average" HeaderText="Average" SortExpression="Average" />
        </Columns>
</asp:GridView>
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/XMLFiles/XMLDemo.xml" TransformFile="~/XMLFiles/XSLTDemo.xslt"></asp:XmlDataSource>
</asp:Content>


