<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="admin-add_course_new.aspx.cs" Inherits="sample_internal.add_course_new" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 183px;
        }
        .auto-style6 {
            width: 248px;
        }
        .auto-style10 {
            width: 43px;
        }
        .auto-style12 {
            height: 18px;
        }
        .auto-style17 {
            width: 248px;
            height: 18px;
        }
        .auto-style18 {
            width: 183px;
            height: 18px;
        }
        .auto-style19 {
            width: 177px;
        }
        .auto-style20 {
            width: 177px;
            height: 18px;
        }
        .auto-style21 {
            width: 43px;
            height: 18px;
        }
        .auto-style25 {
            height: 22px;
            width: 177px;
        }
        .auto-style26 {
            width: 43px;
            height: 22px;
        }
        .auto-style29 {
            width: 248px;
            height: 22px;
        }
        .auto-style30 {
            width: 183px;
            height: 22px;
        }
        .auto-style31 {
        }
        .auto-style32 {
            height: 18px;
        }
        .auto-style33 {
            width: 304px;
            height: 22px;
        }
        .auto-style43 {
            height: 22px;
        }
        .auto-style45 {
            width: 1026px;
            height: 18px;
        }
        .auto-style46 {
            text-decoration: underline;
            color: #CC33FF;
        }
        .auto-style47 {
            width: 304px;
            height: 18px;
        }
        .auto-style48 {
            width: 304px;
        }
        .auto-style49 {
            width: 496px;
        }
        .auto-style50 {
            width: 496px;
            height: 18px;
        }
        .auto-style51 {
            width: 496px;
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
                    
                <table class="nav-justified">
                    <tr>
                        <td class="auto-style19">&nbsp;</td>
                        <td class="auto-style10" colspan="2">&nbsp;</td>
                        <td class="auto-style48">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td class="auto-style49">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style1">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style19">&nbsp;</td>
                        <td class="auto-style10" colspan="2">&nbsp;</td>
                        <td class="auto-style48">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td class="auto-style49">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style1">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style20">&nbsp;</td>
                        <td class="auto-style21" colspan="2"></td>
                        <td class="auto-style47">&nbsp;</td>
                        <td class="auto-style12"></td>
                        <td class="auto-style50"></td>
                        <td class="auto-style17">&nbsp;</td>
                        <td class="auto-style17">&nbsp;</td>
                        <td class="auto-style17">&nbsp;</td>
                        <td class="auto-style17">&nbsp;</td>
                        <td class="auto-style18"></td>
                    </tr>
                    <tr>
                        <td class="auto-style12" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td class="auto-style45"></td>
                        <td class="auto-style32" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style46"><strong>Add Courses&nbsp;</strong></span></td>
                        <td class="auto-style50"></td>
                        <td class="auto-style17">&nbsp;</td>
                        <td class="auto-style17">&nbsp;</td>
                        <td class="auto-style17">&nbsp;</td>
                        <td class="auto-style17">&nbsp;</td>
                        <td class="auto-style18"></td>
                    </tr>
                    <tr>
                        <td class="auto-style20"></td>
                        <td class="auto-style21" colspan="2"></td>
                        <td class="auto-style47"></td>
                        <td class="auto-style12"></td>
                        <td class="auto-style50"></td>
                        <td class="auto-style17">&nbsp;</td>
                        <td class="auto-style17">&nbsp;</td>
                        <td class="auto-style17">&nbsp;</td>
                        <td class="auto-style17">&nbsp;</td>
                        <td class="auto-style18"></td>
                    </tr>
                    <tr>
                        <td class="auto-style19">
                            &nbsp;</td>
                        <td class="auto-style10" colspan="2">
                            &nbsp;</td>
                        <td class="auto-style48">
                            &nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label1" runat="server" Text="Select Department"></asp:Label>
                        </td>
                        <td>
                    <asp:DropDownList ID="DropDownList1" AutoPostBack="true" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" >
                    </asp:DropDownList>
                        </td>
                        <td class="auto-style49">
                            &nbsp;</td>
                        <td class="auto-style6">
                            &nbsp;</td>
                        <td class="auto-style6">
                            &nbsp;</td>
                        <td class="auto-style6">
                            &nbsp;</td>
                        <td class="auto-style6">
                            &nbsp;</td>
                        <td class="auto-style1">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style25">
                            &nbsp;</td>
                        <td class="auto-style26" colspan="2"></td>
                        <td class="auto-style33">
                            &nbsp;&nbsp; &nbsp;
                    <asp:Label ID="Label2" runat="server" Text="Enter course name"></asp:Label>
                        </td>
                        <td class="auto-style43">
                            <asp:TextBox ID="txt_c" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style51">
                            &nbsp;</td>
                        <td class="auto-style29">&nbsp;</td>
                        <td class="auto-style29">&nbsp;</td>
                        <td class="auto-style29">&nbsp;</td>
                        <td class="auto-style29">&nbsp;</td>
                        <td class="auto-style30"></td>
                    </tr>
                    <tr>
                        <td class="auto-style20">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td class="auto-style21" colspan="2">
                        </td>
                        <td class="auto-style47">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="btn_add" runat="server"  Text="Add" OnClick="btn_add_Click" />
                        </td>
                        <td class="auto-style12">
                    <asp:Button ID="btn_clear" runat="server" style="margin-left: 0px" Text="Clear" OnClick="btn_clear_Click" />
                        </td>
                        <td class="auto-style50">
                            </td>
                        <td class="auto-style17">
                            &nbsp;</td>
                        <td class="auto-style17">
                            &nbsp;</td>
                        <td class="auto-style17">
                            &nbsp;</td>
                        <td class="auto-style17">
                            &nbsp;</td>
                        <td class="auto-style18"></td>
                    </tr>
                    <tr>
                        <td class="auto-style20">
                            &nbsp;</td>
                        <td class="auto-style21" colspan="2">
                            &nbsp;</td>
                        <td class="auto-style47">&nbsp;</td>
                        <td class="auto-style12">&nbsp;</td>
                        <td class="auto-style50">
                            &nbsp;</td>
                        <td class="auto-style17">
                            &nbsp;</td>
                        <td class="auto-style17">
                            &nbsp;</td>
                        <td class="auto-style17">
                            &nbsp;</td>
                        <td class="auto-style17">
                            &nbsp;</td>
                        <td class="auto-style18">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style19">&nbsp;</td>
                        <td class="auto-style10" colspan="2">&nbsp;</td>
                        <td class="auto-style31" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">View existing courses</asp:LinkButton>
                            </td>
                        <td class="auto-style49">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style1">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style20"></td>
                        <td class="auto-style21" colspan="2"></td>
                        <td class="auto-style47">&nbsp;</td>
                        <td class="auto-style12">
                            <asp:GridView ID="GridView2" runat="server" Height="16px" Visible="False">
                            </asp:GridView>
                        </td>
                        <td class="auto-style50"></td>
                        <td class="auto-style17">&nbsp;</td>
                        <td class="auto-style17">&nbsp;</td>
                        <td class="auto-style17">&nbsp;</td>
                        <td class="auto-style17">&nbsp;</td>
                        <td class="auto-style18"></td>
                    </tr>
                    <tr>
                        <td class="auto-style19">&nbsp;</td>
                        <td class="auto-style10" colspan="2">&nbsp;</td>
                        <td class="auto-style48">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td class="auto-style49">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style1">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style19">&nbsp;</td>
                        <td class="auto-style10" colspan="2">&nbsp;</td>
                        <td class="auto-style48">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td class="auto-style49">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style1">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style19">&nbsp;</td>
                        <td class="auto-style10" colspan="2">&nbsp;</td>
                        <td class="auto-style48">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td class="auto-style49">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style1">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style19">&nbsp;</td>
                        <td class="auto-style10" colspan="2">&nbsp;</td>
                        <td class="auto-style48">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td class="auto-style49">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style1">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style19">&nbsp;</td>
                        <td class="auto-style10" colspan="2">&nbsp;</td>
                        <td class="auto-style48">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td class="auto-style49">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style1">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style19">&nbsp;</td>
                        <td class="auto-style10" colspan="2">&nbsp;</td>
                        <td class="auto-style48">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td class="auto-style49">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style1">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style19">&nbsp;</td>
                        <td class="auto-style10" colspan="2">&nbsp;</td>
                        <td class="auto-style48">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td class="auto-style49">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style1">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style19">&nbsp;</td>
                        <td class="auto-style10" colspan="2">&nbsp;</td>
                        <td class="auto-style48">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td class="auto-style49">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style1">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style19">&nbsp;</td>
                        <td class="auto-style10" colspan="2">&nbsp;</td>
                        <td class="auto-style48">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td class="auto-style49">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style1">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style19">&nbsp;</td>
                        <td class="auto-style10" colspan="2">&nbsp;</td>
                        <td class="auto-style48">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td class="auto-style49">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style1">&nbsp;</td>
                    </tr>
    </table>
</asp:Content>
