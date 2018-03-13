<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="admin-add_course_new.aspx.cs" Inherits="sample_internal.add_course_new" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 183px;
        }
        .auto-style2 {
            width: 458px;
        }
        .auto-style5 {
            width: 56px;
        }
        .auto-style6 {
            width: 248px;
        }
        .auto-style7 {
            width: 108px;
        }
        .auto-style8 {
        }
        .auto-style10 {
            width: 43px;
        }
        .auto-style11 {
            width: 458px;
            height: 18px;
        }
        .auto-style12 {
            height: 18px;
        }
        .auto-style16 {
            width: 108px;
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
        }
        .auto-style20 {
            width: 131px;
            height: 18px;
        }
        .auto-style21 {
            width: 43px;
            height: 18px;
        }
        .auto-style22 {
            width: 56px;
            height: 18px;
        }
        .auto-style23 {
            text-decoration: underline;
            color: #CC33FF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
                    
                <table class="nav-justified">
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style19">&nbsp;</td>
                        <td class="auto-style10">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style1">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style19">&nbsp;</td>
                        <td class="auto-style10">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style1">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style11"></td>
                        <td class="auto-style20"></td>
                        <td class="auto-style21"></td>
                        <td class="auto-style22"></td>
                        <td class="auto-style16"></td>
                        <td class="auto-style17"></td>
                        <td class="auto-style18"></td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style19" colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style23"><strong>Add Course&nbsp;</strong></span></td>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style1">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style8" colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style1">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2"></td>
                        <td class="auto-style19"></td>
                        <td class="auto-style10"></td>
                        <td class="auto-style5"></td>
                        <td class="auto-style7"></td>
                        <td class="auto-style6"></td>
                        <td class="auto-style1"></td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style19">
                    <asp:Label ID="Label1" runat="server" Text="Select Department"></asp:Label>
                        </td>
                        <td class="auto-style10">
                            &nbsp;</td>
                        <td class="auto-style5">
                    <asp:DropDownList ID="DropDownList1" AutoPostBack="true" runat="server" >
                    </asp:DropDownList>
                        </td>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style6">
                            &nbsp;</td>
                        <td class="auto-style1">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style19">
                    <asp:Label ID="Label2" runat="server" Text="Add Course"></asp:Label>
                        </td>
                        <td class="auto-style10">&nbsp;</td>
                        <td class="auto-style5">
                            <asp:TextBox ID="txt_c" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style1">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style19">&nbsp;</td>
                        <td class="auto-style10">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style1">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style19">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_add" runat="server"  Text="Add" OnClick="btn_add_Click" />
                        </td>
                        <td class="auto-style10">
                    <asp:Button ID="btn_clear" runat="server" style="margin-left: 0px" Text="Clear" />
                        </td>
                        <td class="auto-style5">&nbsp;</td>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style6">
                            &nbsp;</td>
                        <td class="auto-style1">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style11"></td>
                        <td class="auto-style12" colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">View existing courses</asp:LinkButton>
                            &nbsp;</td>
                        <td class="auto-style16">&nbsp;</td>
                        <td class="auto-style17">
                        </td>
                        <td class="auto-style18"></td>
                    </tr>
                    <tr>
                        <td class="auto-style11">&nbsp;</td>
                        <td class="auto-style12" colspan="3">&nbsp;</td>
                        <td class="auto-style16">
                            <asp:GridView ID="GridView2" runat="server" Height="16px" Visible="False">
                            </asp:GridView>
                        </td>
                        <td class="auto-style17">
                            &nbsp;</td>
                        <td class="auto-style18">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style19">&nbsp;</td>
                        <td class="auto-style10">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style1">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style11"></td>
                        <td class="auto-style20"></td>
                        <td class="auto-style21"></td>
                        <td class="auto-style22"></td>
                        <td class="auto-style16"></td>
                        <td class="auto-style17"></td>
                        <td class="auto-style18"></td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style19">&nbsp;</td>
                        <td class="auto-style10">&nbsp;</td>
                        <td class="auto-style5">
                            &nbsp;</td>
                        <td class="auto-style7">
                            &nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style1">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style19">&nbsp;</td>
                        <td class="auto-style10">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style1">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style19">&nbsp;</td>
                        <td class="auto-style10">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style1">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style19">&nbsp;</td>
                        <td class="auto-style10">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style1">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style19">&nbsp;</td>
                        <td class="auto-style10">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style1">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style19">&nbsp;</td>
                        <td class="auto-style10">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style1">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style19">&nbsp;</td>
                        <td class="auto-style10">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style1">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style19">&nbsp;</td>
                        <td class="auto-style10">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style1">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style19">&nbsp;</td>
                        <td class="auto-style10">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style1">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td class="auto-style19">&nbsp;</td>
                        <td class="auto-style10">&nbsp;</td>
                        <td class="auto-style5">&nbsp;</td>
                        <td class="auto-style7">&nbsp;</td>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style1">&nbsp;</td>
                    </tr>
    </table>
</asp:Content>
