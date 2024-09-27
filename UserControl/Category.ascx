<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Category.ascx.cs" Inherits="de1.UserControl.Category" %>
<asp:ListView ID="ListView1" runat="server" DataSourceID="EntityDataSource1">
    <AlternatingItemTemplate>
        <td runat="server" style="">Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
            <br />
            ImageFilePath:
            <asp:Label ID="ImageFilePathLabel" runat="server" Text='<%# Eval("ImageFilePath") %>' />
            <br />
            Price:
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
            <br />
        </td>
    </AlternatingItemTemplate>
    <EditItemTemplate>
        <td runat="server" style="">Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <br />
            ImageFilePath:
            <asp:TextBox ID="ImageFilePathTextBox" runat="server" Text='<%# Bind("ImageFilePath") %>' />
            <br />
            Price:
            <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
            <br />
            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
        </td>
    </EditItemTemplate>
    <EmptyDataTemplate>
        <table style="">
            <tr>
                <td>No data was returned.</td>
            </tr>
        </table>
    </EmptyDataTemplate>
    <InsertItemTemplate>
        <td runat="server" style="">Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <br />ImageFilePath:
            <asp:TextBox ID="ImageFilePathTextBox" runat="server" Text='<%# Bind("ImageFilePath") %>' />
            <br />Price:
            <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
            <br />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
        </td>
    </InsertItemTemplate>
    <ItemTemplate>
        <td runat="server" style="">Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
            <br />
            ImageFilePath:
            <asp:Label ID="ImageFilePathLabel" runat="server" Text='<%# Eval("ImageFilePath") %>' />
            <br />
            Price:
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
            <br />
        </td>
    </ItemTemplate>
    <LayoutTemplate>
        <table runat="server" border="0" style="">
            <tr id="itemPlaceholderContainer" runat="server">
                <td id="itemPlaceholder" runat="server"></td>
            </tr>
        </table>
        <div style="">
        </div>
    </LayoutTemplate>
    <SelectedItemTemplate>
        <td runat="server" style="">Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
            <br />
            ImageFilePath:
            <asp:Label ID="ImageFilePathLabel" runat="server" Text='<%# Eval("ImageFilePath") %>' />
            <br />
            Price:
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
            <br />
        </td>
    </SelectedItemTemplate>
</asp:ListView>
<asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=QLDoUongEntities1" DefaultContainerName="QLDoUongEntities1" EnableFlattening="False" EntitySetName="Beverage" Select="it.[Name], it.[ImageFilePath], it.[Price]">
</asp:EntityDataSource>

