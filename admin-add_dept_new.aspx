<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="admin-add_dept_new.aspx.cs" Inherits="sample_internal.add_dept_new" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style2 {
            height: 52px;
        }
        .auto-style6 {
            height: 22px;
        }
        .auto-style11 {
            height: 29px;
        }
        .auto-style13 {
            width: 222px;
            height: 29px;
        }
        .auto-style18 {
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
        .auto-style31 {
            height: 29px;
            width: 483px;
        }
        .auto-style32 {
            height: 52px;
            width: 483px;
        }
        .auto-style33 {
            height: 22px;
            width: 483px;
        }
        .auto-style34 {
            width: 483px;
        }
        .auto-style35 {
            height: 18px;
        }
        .auto-style36 {
            width: 483px;
            height: 18px;
        }
        .auto-style37 {
            width: 222px;
            height: 18px;
        }
        .auto-style38 {
            height: 52px;
            width: 222px;
        }
        .auto-style39 {
            height: 22px;
            width: 222px;
        }
        .auto-style40 {
            width: 222px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td class="auto-style11"></td>
            <td class="auto-style31"></td>
            <td class="auto-style11" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style26"><strong>Add Department&nbsp;</strong></span></td>
            <td class="auto-style13"></td>
            <td class="auto-style11" colspan="2"></td>
            <td class="auto-style11"></td>
            <td class="auto-style11"></td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style32"></td>
            <td class="auto-style20">
                    <asp:Label ID="Label4" runat="server" Text=" Department Name"></asp:Label>
                </td>
            <td class="auto-style24">
                    <asp:TextBox ID="txtdept" runat="server" Width="93px" ></asp:TextBox>
                </td>
            <td class="auto-style38">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtdept" ErrorMessage="* Please enter  department name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style2" colspan="2">
                    &nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style33"></td>
            <td class="auto-style21">
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Add Department" OnClick="Button1_Click" Width="109px" />
                    &nbsp;</td>
            <td class="auto-style25">
                    <asp:Button ID="btn_clear" runat="server" Text="Clear" Width="96px" OnClick="Button2_Click" />
                </td>
            <td class="auto-style39">
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
            <td class="auto-style34">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style40">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                    &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style35"></td>
            <td class="auto-style36"></td>
            <td class="auto-style35" colspan="2">
                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">View existing departments</asp:LinkButton>
            </td>
            <td class="auto-style37">
                    </td>
            <td colspan="2" class="auto-style35"></td>
            <td class="auto-style35">
                    </td>
            <td class="auto-style35">
                    </td>
            <td class="auto-style35"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style34">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style40">
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
            <td class="auto-style34">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style40">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style34">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style40">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style34">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style40">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style34">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style40">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style34">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style40">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style34">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style40">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style34">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style40">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style34">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style40">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style34">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style40">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style34">&nbsp;</td>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style40">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
