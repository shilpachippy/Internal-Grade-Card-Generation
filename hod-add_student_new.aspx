<%@ Page Title="" Language="C#" MasterPageFile="~/staff_advisor.Master" AutoEventWireup="true" CodeBehind="hod-add_student_new.aspx.cs" Inherits="sample_internal.add_student_new" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 287px;
        }
        .auto-style2 {
            width: 107px;
        }
        .auto-style3 {
            width: 635px;
        }
        .auto-style4 {
            width: 31px;
        }
        .auto-style5 {
            width: 147px;
        }
        .auto-style6 {
            width: 287px;
            height: 18px;
        }
        .auto-style7 {
            width: 107px;
            height: 18px;
        }
        .auto-style8 {
            width: 31px;
            height: 18px;
        }
        .auto-style9 {
            width: 147px;
            height: 18px;
        }
        .auto-style10 {
            width: 635px;
            height: 18px;
        }
        .auto-style11 {
            height: 18px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style7"></td>
            <td colspan="2" class="auto-style11">&nbsp;STUDENT REGISTRATION &nbsp;FORM</td>
            <td class="auto-style11"></td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                    <asp:Label ID="Label11" runat="server" Text="Department"></asp:Label>
                    </td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3">
                    <asp:DropDownList ID="ddl_dept" AutoPostBack="true" runat="server" Height="16px" OnSelectedIndexChanged="ddl_dept_SelectedIndexChanged">
                    </asp:DropDownList>
                    </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style7">
                    <asp:Label ID="Label14" runat="server" Text="Course"></asp:Label>
                    </td>
            <td class="auto-style8"></td>
            <td class="auto-style9"></td>
            <td class="auto-style10">
                        <asp:DropDownList ID="ddl_course" AutoPostBack="true"  runat="server" OnSelectedIndexChanged="ddl_course_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                    <asp:Label ID="Label13" runat="server" Text="Batch "></asp:Label>
                </td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3">  
                     <asp:DropDownList ID="ddl_batch" runat="server">
                     </asp:DropDownList>


                    </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1"></td>
            <td class="auto-style2">
                    <asp:Label ID="Label12" runat="server" Text="Admission No"></asp:Label>
                </td>
            <td class="auto-style4"></td>
            <td class="auto-style5"></td>
            <td class="auto-style3">  
                     <asp:TextBox ID="txt_adm_no" runat="server"></asp:TextBox>


                    </td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                    <asp:Label ID="Label15" runat="server" Text="Admission Year"></asp:Label>
                </td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3">
                    <asp:TextBox ID="txt_adm_year" runat="server"></asp:TextBox>
                </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                    <asp:Label ID="Label16" runat="server" Text="Roll No"></asp:Label>
                </td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3">
                    <asp:TextBox ID="txt_roll_no" runat="server"></asp:TextBox>
                </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                </td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3">
                    <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
                </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                    <asp:Label runat="server" Text="Gender" ID="Label18"></asp:Label>
                </td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3">
                        <asp:RadioButtonList ID="rbl_gender" runat="server" >  
                            <asp:ListItem>Male</asp:ListItem>  
                            <asp:ListItem>Female</asp:ListItem>  
                        </asp:RadioButtonList>  
                </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="DateOfBirth"></asp:Label>
                </td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3">
                   <asp:TextBox ID="txt_dob" runat="server" TextMode="Date"></asp:TextBox>


                </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label>
                </td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3">
                    <asp:TextBox ID="txt_address" runat="server"></asp:TextBox>


                </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                    <asp:Label ID="Label7" runat="server" Text="Phone"></asp:Label>
                </td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3">
                    <asp:TextBox ID="txt_phone" runat="server"></asp:TextBox>
                    </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                    <asp:Label ID="Label8" runat="server" Text="Email"></asp:Label>
                </td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3">
                    <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
                </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                    &nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3">
                    &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">
                    <asp:Button ID="btn_register" runat="server"  Text="Register" OnClick="Button1_Click" />
                </td>
            <td class="auto-style5">
                    <asp:Button ID="btn_cancel" runat="server" Text="Cancel" OnClick="btn_cancel_Click" />
                </td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
