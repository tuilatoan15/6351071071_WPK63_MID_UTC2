<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Default.ascx.cs" Inherits="de1.UserControl.Default" %>
<asp:DataList ID="DataList1" runat="server" DataSourceID="EntityDataSource1">
    <ItemTemplate>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="" Text='<%# Eval("CatName") %>'></asp:HyperLink>
    </ItemTemplate>
</asp:DataList>
<asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=QLDoUongEntities1" DefaultContainerName="QLDoUongEntities1" EnableFlattening="False" EntitySetName="Category" Select="it.[CatName]">
</asp:EntityDataSource>
<asp:EntityDataSource ID="EntityDataSource2" runat="server" ConnectionString="name=QLDoUongEntities1" DefaultContainerName="QLDoUongEntities1" EnableFlattening="False" EntitySetName="Category" Select="it.[CatName]">
</asp:EntityDataSource>

