<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="admin-add_batch_new.aspx.cs" Inherits="sample_internal.add_batch_new" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 252px;
    }
    .auto-style6 {
        width: 142px;
    }
    .auto-style7 {
        width: 180px;
    }
        .auto-style8 {
            width: 252px;
            height: 22px;
        }
        .auto-style12 {
            width: 180px;
            height: 22px;
        }
        .auto-style13 {
            width: 142px;
            height: 22px;
        }
        .auto-style14 {
        }
        .auto-style15 {
            width: 110px;
            height: 22px;
        }
    .auto-style16 {
        text-decoration: underline;
        color: #CC33FF;
    }
    .auto-style17 {
        width: 16px;
    }
    .auto-style18 {
        width: 16px;
        height: 22px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style14">&nbsp;</td>
        <td class="auto-style17">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style14">&nbsp;</td>
        <td class="auto-style17">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style14">&nbsp;</td>
        <td class="auto-style17">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style14" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <span class="auto-style16"><strong>Add Batch&nbsp;</strong></span></td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style14">
                    &nbsp;</td>
        <td class="auto-style17">&nbsp;</td>
        <td class="auto-style7">
                    &nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style14">
                    <asp:Label ID="Label1" runat="server" Text="Select Department"></asp:Label>
                </td>
        <td class="auto-style17">
                    <asp:DropDownList ID="ddl_dept" AutoPostBack="true" runat="server" OnSelectedIndexChanged="ddl_dept_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style8"></td>
        <td class="auto-style15">
                    <asp:Label ID="Label2" runat="server" Text="Select Course"></asp:Label>
                </td>
        <td class="auto-style18">
                    <asp:DropDownList ID="ddl_course"  runat="server" >
                    </asp:DropDownList>
                </td>
        <td class="auto-style12">
                    &nbsp;</td>
        <td class="auto-style13"></td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style14">
                    <asp:Label ID="Label4" runat="server" Text="Add Batch"></asp:Label>
                </td>
        <td class="auto-style17">
                    <asp:TextBox ID="txt_batch" runat="server"></asp:TextBox>
                </td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style14">
                    &nbsp;</td>
        <td class="auto-style17">&nbsp;</td>
        <td class="auto-style7">
                    &nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_add" runat="server" Text="Add" OnClick="btn_add_Click" />
                </td>
        <td class="auto-style17">
                    <asp:Button ID="Button2" runat="server" Text="Cancel" OnClick="Button2_Click" Height="26px" />
                </td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style14" colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">View existing batches</asp:LinkButton>
                    &nbsp;</td>
        <td class="auto-style7">
                    &nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style14">&nbsp;</td>
        <td class="auto-style17">&nbsp;</td>
        <td class="auto-style7">
            <asp:GridView ID="GridView1" runat="server" Visible="False">
            </asp:GridView>
        </td>
        <td class="auto-style6">
                   <%-- <asp:GridView ID="GridView_batch" runat="server">
                       <%-- <Columns>
                            <asp:CommandField  ShowEditButton="True" ShowHeader="True" />
                        </Columns>
                        <Columns>
                            <asp:CommandField  ShowDeleteButton="True" ShowHeader="True" />
                        </Columns>--%>
                   <%-- </asp:GridView>--%>
                </td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style14">&nbsp;</td>
        <td class="auto-style17">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style14">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
        <td class="auto-style17">
                    &nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style14">&nbsp;</td>
        <td class="auto-style17">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style14">&nbsp;</td>
        <td class="auto-style17">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style14">&nbsp;</td>
        <td class="auto-style17">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style14">&nbsp;</td>
        <td class="auto-style17">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style14">&nbsp;</td>
        <td class="auto-style17">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style14">&nbsp;</td>
        <td class="auto-style17">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style14">&nbsp;</td>
        <td class="auto-style17">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style14">&nbsp;</td>
        <td class="auto-style17">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style14">&nbsp;</td>
        <td class="auto-style17">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style14">&nbsp;</td>
        <td class="auto-style17">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style14">&nbsp;</td>
        <td class="auto-style17">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
</table>
</asp:Content>
