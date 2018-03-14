<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="admin-add_subject_new.aspx.cs" Inherits="sample_internal.add_subject_new" %>
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
        .auto-style25 {
            height: 18px;
            text-align: justify;
        }
        .auto-style26 {
            width: 22px;
        }
        .auto-style28 {
            height: 22px;
            width: 22px;
        }
        .auto-style29 {
            width: 22px;
            height: 18px;
        }
        .auto-style30 {
            text-decoration: underline;
            color: #CC33FF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td class="auto-style11" colspan="2">&nbsp;</td>
            <td class="auto-style25" colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style30"> <strong>ADD SUBJECT&nbsp;</strong></span></td>
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
                    <asp:DropDownList ID="ddl_dept" AutoPostBack="true" runat="server" Height="16px" OnSelectedIndexChanged="ddl_dept_SelectedIndexChanged">
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
                    <asp:DropDownList ID="ddl_course" AutoPostBack="true" runat="server" OnSelectedIndexChanged="ddl_course_SelectedIndexChanged" >
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
                    <asp:DropDownList ID="ddl_scheme"  AutoPostBack="true" runat="server" OnSelectedIndexChanged="ddl_scheme_SelectedIndexChanged" >
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
                <asp:Label ID="Label2" runat="server" Text="Select Batch"></asp:Label>
            </td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style10">
                &nbsp;</td>
            <td>
                <asp:DropDownList ID="ddl_batchid" runat="server">
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
                <asp:Label ID="Label3" runat="server" Text="Select Sem"></asp:Label>
            </td>
            <td class="auto-style19"></td>
            <td class="auto-style9">
                &nbsp;</td>
            <td class="auto-style5">
                <asp:DropDownList ID="ddl_semid" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
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
                <asp:TextBox ID="txtslot" runat="server"></asp:TextBox>
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
                <asp:TextBox ID="txtcourseno" runat="server"></asp:TextBox>
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
                <asp:TextBox ID="txtsubject" runat="server"></asp:TextBox>
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
                <asp:TextBox ID="txtiamark" runat="server" ></asp:TextBox>
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
                <asp:TextBox ID="txtexemark" runat="server"></asp:TextBox>
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
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="Label12" runat="server" Text="Total"></asp:Label>
            </td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style10">
                &nbsp;</td>
            <td>
                <asp:TextBox ID="txttotal" runat="server" ></asp:TextBox>
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
                <asp:TextBox ID="txtcredit" runat="server"></asp:TextBox>
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
                <asp:Button ID="Button1" runat="server" Height="22px" Text="ADD" OnClick="Button1_Click" />
            </td>
            <td class="auto-style10">
                <asp:Button ID="CLEAR" runat="server" OnClick="CLEAR_Click" Text="CLEAR"  />
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
