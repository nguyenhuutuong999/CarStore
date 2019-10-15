<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CategoryCar.aspx.cs" Inherits="Final.CategoryCar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ListView ID="ListView1" runat="server">
        <ItemTemplate>
            <div class="product col-lg-6">
                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton_Type" CommandArgument='<%#Eval ("MaXe") %>'>
                    <asp:Image ID="Image2" runat="server" ImageUrl='<%#"~/image/"+Eval("Image")%>' />
                    <p>
                        Name:
                        <asp:Label ID="Label3" runat="server" Text='<%#Eval ("TenXe") %>'></asp:Label>
                    </p>
                    <p>
                        Price:
                        <asp:Label ID="Label4" runat="server" Text='<%#Eval ("DonGia") %>'></asp:Label>
                        $
                    </p>
                    
                    <p>More...</p>

                </asp:LinkButton>
            </div>
        </ItemTemplate>
    </asp:ListView>
</asp:Content>

