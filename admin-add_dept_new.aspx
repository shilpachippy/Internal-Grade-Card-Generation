<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="admin-add_dept_new.aspx.cs" Inherits="sample_internal.add_dept_new" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style2 {
            height: 52px;
        }
        .auto-style4 {
            width: 260px;
        }
        .auto-style5 {
            height: 52px;
            width: 260px;
        }
        .auto-style6 {
            height: 22px;
        }
        .auto-style7 {
            width: 260px;
            height: 22px;
        }
        .auto-style8 {
            width: 123px;
        }
        .auto-style9 {
            height: 52px;
            width: 123px;
        }
        .auto-style10 {
            height: 22px;
            width: 123px;
        }
        .auto-style11 {
            height: 29px;
        }
        .auto-style12 {
            width: 260px;
            height: 29px;
        }
        .auto-style13 {
            width: 123px;
            height: 29px;
        }
        .auto-style18 {
    }
    .auto-style19 {
        height: 29px;
    }
    .auto-style20 {
        height: 52px;
        width: 149px;
    }
    .auto-style21 {
        height: 22px;
        width: 149px;
    }
    .auto-style22 {
        width: 101px;
    }
    .auto-style24 {
        height: 52px;
        width: 101px;
    }
    .auto-style25 {
        height: 22px;
        width: 101px;
    }
    .auto-style26 {
        text-decoration: underline;
        color: #CC33FF;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11"></td>
            <td class="auto-style11"></td>
            <td class="auto-style12"></td>
            <td class="auto-style19" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style26"><strong>Add Departments&nbsp;</strong></span></td>
            <td class="auto-style13"></td>
            <td class="auto-style11" colspan="2"></td>
            <td class="auto-style11"></td>
            <td class="auto-style11"></td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
            <td class="auto-style5"></td>
            <td class="auto-style20">
                    <asp:Label ID="Label4" runat="server" Text="New Department"></asp:Label>
                </td>
            <td class="auto-style24">
                    <asp:TextBox ID="txtdept" runat="server" Width="93px" ></asp:TextBox>
                </td>
            <td class="auto-style9">
                    &nbsp;</td>
            <td class="auto-style2" colspan="2">
                    &nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style6"></td>
            <td class="auto-style7"></td>
            <td class="auto-style21">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Add Department" OnClick="Button1_Click" Width="107px" />
                    &nbsp;</td>
            <td class="auto-style25">
                    <asp:Button ID="btn_clear" runat="server" Text="Clear" Width="96px" OnClick="Button2_Click" />
                </td>
            <td class="auto-style10">
                    &nbsp;</td>
            <td class="auto-style6">
                    &nbsp;</td>
            <td class="auto-style6">
                &nbsp;</td>
            <td class="auto-style6">
                </td>
            <td class="auto-style6">
            </td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                    &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style18" colspan="2">
                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">View existing departments</asp:LinkButton>
            </td>
            <td class="auto-style8">
                    &nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>
                    &nbsp;</td>
            <td>
                    &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style8">
                <asp:GridView ID="GridView3" runat="server" Visible="False">
                </asp:GridView>
            </td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
