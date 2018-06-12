<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="id_sanpham" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            id_sanpham:
            <asp:Label ID="id_sanphamLabel1" runat="server" Text='<%# Eval("id_sanpham") %>' />
            <br />
            id_loaisanpham:
            <asp:TextBox ID="id_loaisanphamTextBox" runat="server" Text='<%# Bind("id_loaisanpham") %>' />
            <br />
            ten_sanmpham:
            <asp:TextBox ID="ten_sanmphamTextBox" runat="server" Text='<%# Bind("ten_sanmpham") %>' />
            <br />
            so_luong:
            <asp:TextBox ID="so_luongTextBox" runat="server" Text='<%# Bind("so_luong") %>' />
            <br />
            mota_sanpham:
            <asp:TextBox ID="mota_sanphamTextBox" runat="server" Text='<%# Bind("mota_sanpham") %>' />
            <br />
            anh_sanpham:
            <asp:TextBox ID="anh_sanphamTextBox" runat="server" Text='<%# Bind("anh_sanpham") %>' />
            <br />
            gia_sanpham:
            <asp:TextBox ID="gia_sanphamTextBox" runat="server" Text='<%# Bind("gia_sanpham") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            id_sanpham:
            <asp:TextBox ID="id_sanphamTextBox" runat="server" Text='<%# Bind("id_sanpham") %>' />
            <br />
            id_loaisanpham:
            <asp:TextBox ID="id_loaisanphamTextBox" runat="server" Text='<%# Bind("id_loaisanpham") %>' />
            <br />
            ten_sanmpham:
            <asp:TextBox ID="ten_sanmphamTextBox" runat="server" Text='<%# Bind("ten_sanmpham") %>' />
            <br />
            so_luong:
            <asp:TextBox ID="so_luongTextBox" runat="server" Text='<%# Bind("so_luong") %>' />
            <br />
            mota_sanpham:
            <asp:TextBox ID="mota_sanphamTextBox" runat="server" Text='<%# Bind("mota_sanpham") %>' />
            <br />
            anh_sanpham:
            <asp:TextBox ID="anh_sanphamTextBox" runat="server" Text='<%# Bind("anh_sanpham") %>' />
            <br />
            gia_sanpham:
            <asp:TextBox ID="gia_sanphamTextBox" runat="server" Text='<%# Bind("gia_sanpham") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            id_sanpham1:
            <asp:Label ID="id_sanphamLabel" runat="server" Text='<%# Eval("id_sanpham") %>' />
            <br />
            id_loaisanpham:
            <asp:Label ID="id_loaisanphamLabel" runat="server" Text='<%# Bind("id_loaisanpham") %>' />
            <br />
            ten_sanmpham:
            <asp:Label ID="ten_sanmphamLabel" runat="server" Text='<%# Bind("ten_sanmpham") %>' />
            <br />
            so_luong:
            <asp:Label ID="so_luongLabel" runat="server" Text='<%# Bind("so_luong") %>' />
            <br />
            mota_sanpham:
            <asp:Label ID="mota_sanphamLabel" runat="server" Text='<%# Bind("mota_sanpham") %>' />
            <br />
            anh_sanpham:
            <asp:Image ID="id_sanpham" runat="server" ImageUrl="<%# Bind('anh_sanpham')%>" />
            <br />
            gia_sanpham:
            <asp:Label ID="gia_sanphamLabel" runat="server" Text='<%# Bind("gia_sanpham") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\QuanLyBanHang.mdf;Integrated Security=True" DeleteCommand="DELETE FROM [SanPham] WHERE [id_sanpham] = @id_sanpham" InsertCommand="INSERT INTO [SanPham] ([id_sanpham], [id_loaisanpham], [ten_sanmpham], [so_luong], [mota_sanpham], [anh_sanpham], [gia_sanpham]) VALUES (@id_sanpham, @id_loaisanpham, @ten_sanmpham, @so_luong, @mota_sanpham, @anh_sanpham, @gia_sanpham)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [id_sanpham], [id_loaisanpham], [ten_sanmpham], [so_luong], [mota_sanpham], [anh_sanpham], [gia_sanpham] FROM [SanPham]" UpdateCommand="UPDATE [SanPham] SET [id_loaisanpham] = @id_loaisanpham, [ten_sanmpham] = @ten_sanmpham, [so_luong] = @so_luong, [mota_sanpham] = @mota_sanpham, [anh_sanpham] = @anh_sanpham, [gia_sanpham] = @gia_sanpham WHERE [id_sanpham] = @id_sanpham">
        <DeleteParameters>
            <asp:Parameter Name="id_sanpham" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="id_sanpham" Type="Int32" />
            <asp:Parameter Name="id_loaisanpham" Type="Int32" />
            <asp:Parameter Name="ten_sanmpham" Type="String" />
            <asp:Parameter Name="so_luong" Type="Decimal" />
            <asp:Parameter Name="mota_sanpham" Type="String" />
            <asp:Parameter Name="anh_sanpham" Type="String" />
            <asp:Parameter Name="gia_sanpham" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="id_loaisanpham" Type="Int32" />
            <asp:Parameter Name="ten_sanmpham" Type="String" />
            <asp:Parameter Name="so_luong" Type="Decimal" />
            <asp:Parameter Name="mota_sanpham" Type="String" />
            <asp:Parameter Name="anh_sanpham" Type="String" />
            <asp:Parameter Name="gia_sanpham" Type="Int32" />
            <asp:Parameter Name="id_sanpham" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

