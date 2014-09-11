<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="PracticePage.aspx.cs" Inherits="XMLFiles_PracticePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="XmlDataSource1">
        <Columns>
            <asp:BoundField DataField="EventCode" HeaderText="EventCode" SortExpression="EventCode" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="Active" HeaderText="Active" SortExpression="Active" />
        </Columns>
    </asp:GridView>
    <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/XMLFiles/XMLPractice.xml" TransformFile="~/XMLFiles/XSLTPractice.xslt"></asp:XmlDataSource>
</asp:Content>


