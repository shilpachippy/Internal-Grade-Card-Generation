<%@ Page Title="" Language="C#" MasterPageFile="~/Staff.Master" AutoEventWireup="true" CodeBehind="staff-enter_internal_mark.aspx.cs" Inherits="sample_internal.staff_enter_internal_mark" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style2 {
        }
        .auto-style3 {
            height: 18px;
        }
        .auto-style4 {
            width: 352px;
            height: 18px;
        }
        .auto-style5 {
            width: 197px;
            height: 18px;
        }
        .auto-style7 {
            width: 251px;
            height: 18px;
        }
        .auto-style8 {
            width: 352px;
        }
        .auto-style9 {
            width: 251px;
        }
        .auto-style10 {
            color: #CC33FF;
            text-align: left;
        }
        .auto-style11 {
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style9">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style9">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style9">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style9">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style10" colspan="2"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style11">Enter Subject Mark</span></strong></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style9">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style2">
                    <asp:Label ID="Label9" runat="server" Text="Select Department"></asp:Label>
                </td>
        <td class="auto-style9">
                    <asp:DropDownList ID="ddl_dept"  AutoPostBack="true" runat="server" OnSelectedIndexChanged="ddl_dept_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Select Course"></asp:Label>
                </td>
        <td class="auto-style9">
                    <asp:DropDownList ID="ddl_course"  AutoPostBack="true" runat="server" OnSelectedIndexChanged="ddl_course_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
        <td>&nbsp;</td>
        <td colspan="4" rowspan="9">
                    <asp:Panel ID="Panel1" runat="server" Visible="False" Width="325px">
                        &nbsp;&nbsp;<asp:Label ID="Label11" runat="server" Text="Select Subject Code"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:DropDownList ID="ddl_subject_code" runat="server">
                        </asp:DropDownList>
                        &nbsp;&nbsp; &nbsp;&nbsp;
                        <br />
                        <br />
                        &nbsp;&nbsp;
                        <asp:Label ID="Label12" runat="server" Text="Enter Roll No"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txt_roll_no" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label7" runat="server" Text="Enter Mark"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txt_mark" runat="server" style="margin-left: 0px"></asp:TextBox>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btn_save" runat="server" Text="Save" OnClick="btn_save_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Text="Clear" OnClick="Button2_Click" />
                    </asp:Panel>
                </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="Select Batch"></asp:Label>
                </td>
        <td class="auto-style9">
                    <asp:DropDownList ID="ddl_batch"  AutoPostBack="true" runat="server" Height="16px" OnSelectedIndexChanged="ddl_batch_SelectedIndexChanged" >
                    </asp:DropDownList>
                </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style2">
                    <asp:Label ID="Label6" runat="server" Text="Select Semester"></asp:Label>
                </td>
        <td class="auto-style9">
                    <asp:DropDownList ID="ddl_semester" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" Text="Select Exam Title"></asp:Label>
                </td>
        <td class="auto-style9">
                    <asp:DropDownList ID="ddl_exam_title" runat="server"  >
                        <asp:ListItem>First Internal</asp:ListItem>
                        <asp:ListItem>Second Internal</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style9">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3"></td>
        <td class="auto-style3"></td>
        <td class="auto-style4"></td>
        <td class="auto-style5"></td>
        <td class="auto-style7"></td>
        <td class="auto-style3"></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btn_add" runat="server" OnClick="btn_add_Click" Text="Add Mark" />
                &nbsp;</td>
        <td class="auto-style9">
                    <asp:Button ID="btn_clear" runat="server" Text="Clear" OnClick="btn_clear_Click" />
                </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style9">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style9">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style9">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style9">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style9">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style9">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style9">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style9">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style9">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style9">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style9">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
