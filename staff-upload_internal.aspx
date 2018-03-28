<%@ Page Title="" Language="C#" MasterPageFile="~/Staff.Master" AutoEventWireup="true" CodeBehind="staff-upload_internal.aspx.cs" Inherits="sample_internal.staff_upload_internal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 275px;
        }
        .auto-style2 {
        }
        .auto-style3 {
            height: 18px;
        }
        .auto-style4 {
            width: 275px;
            height: 18px;
        }
        .auto-style5 {
            width: 120px;
            height: 18px;
        }
        .auto-style6 {
            width: 84px;
        }
        .auto-style7 {
            height: 18px;
            width: 84px;
        }
        .auto-style8 {
            width: 128px;
        }
        .auto-style9 {
            height: 18px;
            width: 128px;
        }
        .auto-style10 {
            text-decoration: underline;
            color: #CC33FF;
        }
        .auto-style11 {
            width: 272px;
        }
        .auto-style12 {
            height: 18px;
            width: 272px;
        }
        .auto-style13 {
            height: 22px;
        }
        .auto-style14 {
            width: 275px;
            height: 22px;
        }
        .auto-style15 {
            width: 84px;
            height: 22px;
        }
        .auto-style16 {
            width: 128px;
            height: 22px;
        }
        .auto-style17 {
            width: 272px;
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style10"><strong>&nbsp;Upload Subject Mark&nbsp;</strong></span></td>
            <td>&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server">Enter mark of a student</asp:LinkButton>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13"></td>
            <td class="auto-style14"></td>
            <td class="auto-style13">
                <asp:Label ID="Label1" runat="server" Text="Select Department"></asp:Label>
            </td>
            <td class="auto-style15">
                <asp:DropDownList ID="ddl_dept" AutoPostBack="true" runat="server" OnSelectedIndexChanged="ddl_dept_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td class="auto-style13"></td>
            <td class="auto-style16"></td>
            <td class="auto-style13"></td>
            <td class="auto-style17">
            </td>
            <td class="auto-style13"></td>
            <td class="auto-style13"></td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style4"></td>
            <td class="auto-style5">
                <asp:Label ID="Label2" runat="server" Text="Select Course"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:DropDownList ID="ddl_course" AutoPostBack="true" runat="server" Height="16px" OnSelectedIndexChanged="ddl_course_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td class="auto-style3"></td>
            <td class="auto-style9"></td>
            <td class="auto-style3"></td>
            <td class="auto-style12"></td>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="Label3" runat="server" Text="Select Batch"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:DropDownList ID="ddl_batch" AutoPostBack="true" runat="server" OnSelectedIndexChanged="ddl_batch_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="Label4" runat="server" Text="Select Semester "></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:DropDownList ID="ddl_semester" runat="server" Height="22px">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="Label5" runat="server" Text="Select Exam"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:DropDownList ID="ddl_exam_title" AutoPostBack="true" runat="server" OnSelectedIndexChanged="ddl_exam_title_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="Label6" runat="server" Text="Select Subject Code"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:DropDownList ID="ddl_subject_code" runat="server">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
        <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
        <asp:Label ID="Label7" runat="server" Text="Has Header ?"></asp:Label>
            </td>
            <td class="auto-style6">
        <asp:RadioButtonList ID="rbHDR" runat="server">
            <asp:ListItem Text = "Yes" Value = "Yes" Selected = "True" ></asp:ListItem>
            <asp:ListItem Text = "No" Value = "No"></asp:ListItem>
        </asp:RadioButtonList>
            </td>
            <td>&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
        <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" />
            </td>
            <td class="auto-style6">
                <asp:Button ID="btn_clear" runat="server" OnClick="btn_clear_Click" Text="Clear" />
            </td>
            <td>&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style8">
        <asp:GridView ID="GridView1" runat="server" OnPageIndexChanging = "PageIndexChanging" AllowPaging = "true"  >
        </asp:GridView>
            </td>
            <td>&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
