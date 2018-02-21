<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="add_subject_new.aspx.cs" Inherits="sample_internal.add_subject_new" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 122px;
        }
        .auto-style3 {
            width: 345px;
        }
        .auto-style4 {
            width: 345px;
            height: 22px;
        }
        .auto-style5 {
            height: 22px;
        }
        .auto-style6 {
            width: 122px;
            height: 22px;
        }
        .auto-style9 {
            width: 58px;
            height: 22px;
        }
        .auto-style10 {
            width: 58px;
        }
        .auto-style11 {
            height: 18px;
        }
        .auto-style13 {
            width: 122px;
            height: 18px;
        }
        .auto-style15 {
            width: 58px;
            height: 18px;
        }
        .auto-style16 {
            width: 345px;
            height: 18px;
        }
        .auto-style17 {
            width: 68px;
        }
        .auto-style18 {
            width: 68px;
            height: 18px;
        }
        .auto-style19 {
            width: 68px;
            height: 22px;
        }
        .auto-style20 {
            width: 345px;
            height: 40px;
        }
        .auto-style21 {
            height: 40px;
        }
        .auto-style22 {
            width: 122px;
            height: 40px;
        }
        .auto-style23 {
            width: 68px;
            height: 40px;
        }
        .auto-style24 {
            width: 58px;
            height: 40px;
        }
        .auto-style25 {
            height: 18px;
            text-align: justify;
        }
        .auto-style26 {
            width: 22px;
        }
        .auto-style27 {
            width: 22px;
            height: 40px;
        }
        .auto-style28 {
            height: 22px;
            width: 22px;
        }
        .auto-style29 {
            width: 22px;
            height: 18px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td class="auto-style3">A</td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style20"></td>
            <td class="auto-style27"></td>
            <td class="auto-style22"></td>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style24"></td>
            <td class="auto-style21"></td>
        </tr>
        <tr>
            <td class="auto-style11" colspan="2">&nbsp;</td>
            <td class="auto-style25" colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>ADD SUBJECT&nbsp;</strong></td>
        </tr>
        <tr>
            <td class="auto-style11" colspan="2">&nbsp;</td>
            <td class="auto-style11" colspan="2">&nbsp;</td>
            <td class="auto-style11" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style28"></td>
            <td class="auto-style6">
                    <asp:Label ID="Label6" runat="server" Text="Select Department"></asp:Label>
                </td>
            <td class="auto-style19"></td>
            <td class="auto-style9">
                </td>
            <td class="auto-style5">
                    <asp:DropDownList ID="ddl_dept" AutoPostBack="true" runat="server" Height="16px">
                    </asp:DropDownList>
                </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style2">
                    <asp:Label ID="Label7" runat="server" Text="Select Course"></asp:Label>
                </td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style10">
                    &nbsp;</td>
            <td>
                    <asp:DropDownList ID="ddl_course" AutoPostBack="true" runat="server" >
                    </asp:DropDownList>
                </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style2">
                    <asp:Label ID="Label8" runat="server" Text="Select Scheme"></asp:Label>
                </td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style10">
                    &nbsp;</td>
            <td>
                    <asp:DropDownList ID="ddl_scheme"  runat="server" >
                    </asp:DropDownList>
                </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="Label2" runat="server" Text="BATCH ID"></asp:Label>
            </td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style10">
                &nbsp;</td>
            <td>
                <asp:DropDownList ID="ddl_batchid" runat="server" Height="16px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style16"></td>
            <td class="auto-style29"></td>
            <td class="auto-style13"></td>
            <td class="auto-style18"></td>
            <td class="auto-style15"></td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style28"></td>
            <td class="auto-style6">
                <asp:Label ID="Label3" runat="server" Text="SEM ID"></asp:Label>
            </td>
            <td class="auto-style19"></td>
            <td class="auto-style9">
                &nbsp;</td>
            <td class="auto-style5">
                <asp:DropDownList ID="ddl_semid" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="Label4" runat="server" Text="Slot"></asp:Label>
            </td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style10">
                &nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="Label5" runat="server" Text="Course No"></asp:Label>
            </td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style10">
                &nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="Label9" runat="server" Text="Subject"></asp:Label>
            </td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style10">
                &nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="Label10" runat="server" Text="IA MARK"></asp:Label>
            </td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style10">
                &nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="Label11" runat="server" Text="ESE MARK"></asp:Label>
            </td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style10">
                &nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="Label12" runat="server" Text="Total"></asp:Label>
            </td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style10">
                &nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" OnTextChanged="TextBox6_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="Label13" runat="server" Text="Credit"></asp:Label>
            </td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style10">
                &nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style17">
                <asp:Button ID="Button1" runat="server" Height="22px" Text="ADD" />
            </td>
            <td class="auto-style10">
                <asp:Button ID="Button2" runat="server" Text="CLEAR" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
