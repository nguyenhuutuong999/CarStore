<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="Final.Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
            <div class="col-lg-6 product">
                <asp:Image ID="Image1" runat="server" ImageUrl='<%#"~/image/"+Eval("Image") %>' />
                <p>
                    Name:
                        <asp:Label ID="Label3" runat="server" Text='<%#Eval ("TenXe") %>'></asp:Label>
                </p>
                <p>
                    Price:
                        <asp:Label ID="Label4" runat="server" Text='<%#Eval ("DonGia") %>'></asp:Label>
                    $
                </p>

                
            </div>
        </ItemTemplate>
    </asp:DataList>
    <asp:Label ID="Label1" runat="server" Text="Quantity: "></asp:Label>
    <asp:DropDownList ID="txtSoLuong" runat="server">
        <asp:ListItem Selected="True" Value="1"></asp:ListItem>
        <asp:ListItem Value="2"></asp:ListItem>
        <asp:ListItem Value="3"></asp:ListItem>
        <asp:ListItem></asp:ListItem>
    </asp:DropDownList>
    <asp:Button ID="btnMua" runat="server" Text="Add Cart" OnClick="btnMua_Click" />
    <asp:Label ID="lbKetQua" runat="server" Text=""></asp:Label>
</asp:Content>
