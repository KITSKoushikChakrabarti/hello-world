<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmProject.aspx.cs" MasterPageFile="~/SiteMaster.master" Inherits="TRSApplication.Forms_Admin.frmProject" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content1" runat="server">
<link rel="stylesheet" href="../UI/css/Telerik.css" type="text/css" />
    <telerik:radformdecorator id="Radformdecorator1" runat="server" DecoratedControls="All">
    </telerik:radformdecorator>
    <ul class="toolbarTitle">
        <li>Manage Project</li>
    </ul> 

<telerik:RadGrid ID="grdProject" runat="server"  AllowPaging="true"  
         AllowSorting="true"  AutoGenerateColumns="false"  
        PageSize="15" PagerStyle-AlwaysVisible="true"
        OnInsertCommand="grdProject_InsertCommand" 
        OnUpdateCommand="grdProject_UpdateCommand" 
        onitemdatabound="grdProject_ItemDatabound">
        <MasterTableView EditMode="PopUp" CommandItemDisplay="Top" DataKeyNames="ProjectId" >
            <Columns>
             <telerik:GridEditCommandColumn UniqueName="UpdateCommandColumn" ButtonType="ImageButton" EditImageUrl="~/UI/Images/EditIcon.gif">
            <ItemStyle HorizontalAlign="Center" CssClass="ImageButton" />
            </telerik:GridEditCommandColumn>
            <telerik:GridBoundColumn DataField="Code" HeaderText="Code" MaxLength="20"></telerik:GridBoundColumn>
            <telerik:GridBoundColumn DataField="Description"  HeaderText="Description" MaxLength="255"></telerik:GridBoundColumn>
            <telerik:GridBoundColumn DataField="Sponsor"  HeaderText="Sponsor" MaxLength="100"></telerik:GridBoundColumn>
            <telerik:GridBoundColumn DataField="Manager"  HeaderText="Manager" MaxLength="100"></telerik:GridBoundColumn>
            <telerik:GridBoundColumn DataField="DevelopmentManager"  HeaderText="Development Manager" MaxLength="100"></telerik:GridBoundColumn>
            <telerik:GridBoundColumn DataField="UserManager"  HeaderText="User Manager" MaxLength="100"></telerik:GridBoundColumn>
            <telerik:GridBoundColumn DataField="SteeringGroup"  HeaderText="Steering Group" MaxLength="100"></telerik:GridBoundColumn>
            <telerik:GridBoundColumn DataField="AccountCode"  HeaderText="Account Code" MaxLength="20"></telerik:GridBoundColumn>
            <telerik:GridBoundColumn DataField="Budget"  HeaderText="Budget" MaxLength="255"></telerik:GridBoundColumn>
            <telerik:GridBoundColumn DataField="Programme"  HeaderText="Programme" MaxLength="100"></telerik:GridBoundColumn>
            <telerik:GridBoundColumn DataField="RCProject"  HeaderText="RC Project" MaxLength="1"></telerik:GridBoundColumn>
            </Columns>
            </MasterTableView>
    </telerik:RadGrid>

 </asp:Content>   
