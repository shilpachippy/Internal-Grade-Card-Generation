<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="admin-add_facultytype_new.aspx.cs" Inherits="sample_internal.add_facultytype_new" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 329px;
    }
    .auto-style2 {
    }
    .auto-style6 {
        width: 329px;
        height: 24px;
    }
    .auto-style7 {
        width: 121px;
        height: 24px;
    }
    .auto-style8 {
        height: 24px;
    }
    .auto-style10 {
        width: 329px;
        height: 20px;
    }
    .auto-style11 {
        width: 121px;
        height: 20px;
    }
    .auto-style12 {
        height: 20px;
    }
    .auto-style13 {
        width: 134px;
    }
    .auto-style14 {
        width: 134px;
        height: 20px;
    }
    .auto-style15 {
        width: 134px;
        height: 24px;
    }
    .auto-style16 {
        color: #CC33FF;
    }
    .auto-style17 {
        text-decoration: underline;
    }
    .auto-style18 {
        width: 329px;
        height: 40px;
    }
    .auto-style19 {
        height: 40px;
    }
    .auto-style22 {
        width: 134px;
        height: 28px;
    }
    .auto-style23 {
        width: 329px;
        height: 28px;
    }
    .auto-style24 {
        height: 28px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style13">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style13">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style13">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style13">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style10"></td>
        <td class="auto-style11"></td>
        <td class="auto-style14"></td>
        <td class="auto-style12"></td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2" colspan="2">
                    &nbsp; <span class="auto-style16"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style17">Add Designations</span></strong></span>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6"></td>
        <td class="auto-style7"></td>
        <td class="auto-style15"></td>
        <td class="auto-style8"></td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Add Designation"></asp:Label>
                </td>
        <td class="auto-style13">
                    <asp:TextBox ID="txt_faculty_type" runat="server"></asp:TextBox>
                </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style13">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="btn_add" runat="server" OnClick="btn_add_Click" Text="Add" />
                </td>
        <td class="auto-style13">
                    <asp:Button ID="btn_clear" runat="server" OnClick="btn_clear_Click" Text="Clear" />
                </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style18"></td>
        <td class="auto-style19" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">View existing designations</asp:LinkButton>
            &nbsp;</td>
        <td class="auto-style19"></td>
    </tr>
    <tr>
        <td class="auto-style23"></td>
        <td class="auto-style24"></td>
        <td class="auto-style22"></td>
        <td class="auto-style24">
            <asp:GridView ID="GridView2" runat="server" Visible="False">
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style13">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style13">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style13">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style13">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style13">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style13">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style13">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style13">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style13">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style13">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style13">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style13">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
