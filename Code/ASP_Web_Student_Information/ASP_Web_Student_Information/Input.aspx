<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Input.aspx.cs" Inherits="ASP_Web_Student_Information.Input" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Registration</title>
    <link rel="stylesheet" href="styles.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Student Data</h1>
            <hr />

            <table>
                <tr>
                    <td class="left">
                        <label for="txt_Name">Name</label></td>
                    <td>
                        <asp:TextBox CssClass="input" ID="TextBox1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><small>Please enter your first and last name. (required)</small></td>
                </tr>

                <tr>
                    <td class="left">
                        <label>Password</label></td>
                    <td>
                        <asp:TextBox CssClass="input" ID="txt_Password" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><small>Password must be five or more characters. (required)</small></td>
                </tr>

                <tr>
                    <td class="left">
                        <label>Hobbies</label></td>
                    <td>
                        <asp:CheckBoxList CssClass="input" ID="lstChk_Hobbies" runat="server">
                            <asp:ListItem Text="Surfing" Value="surfing" />
                            <asp:ListItem Text="Running" Value="running" />
                            <asp:ListItem Text="Biking" Value="biking" />
                            <asp:ListItem Text="Padding" Value="padding" />
                        </asp:CheckBoxList>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><small>Check zero or more hobbies. (optional)</small></td>
                </tr>

                <tr>
                    <td class="left">
                        <label>Level</label></td>
                    <td>
                        <asp:RadioButtonList CssClass="input" ID="lstRdo_Level" runat="server">
                            <asp:ListItem Text="Freshman" Value="freshman" />
                            <asp:ListItem Text="Sophomore" Value="sophomore" />
                            <asp:ListItem Text="Junior" Value="junior" />
                            <asp:ListItem Text="Senior" Value="senior" />
                            <asp:ListItem Text="Other" Value="other" />
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><small>Select your grade level. (required)</small></td>
                </tr>

                <tr>
                    <td class="left">
                        <label>GPA</label></td>
                    <td>
                        <asp:dropdownlist cssclass="input" id="ddl_gpa" runat="server">
                            <asp:listitem value="" text="please select a value" disabled selected hidden/>
                            <asp:listitem text="1" value="1"  />
                            <asp:listitem text="2" value="2" />
                            <asp:listitem text="3" value="3" />
                            <asp:listitem text="4" value="4" />
                            <asp:listitem text="5" value="5" />
                        </asp:dropdownlist>
                        <%--<select name="ddl_GPA" id="ddl_GPA" class="input" required>
                            <option value="" disabled selected hidden>Please select a value</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                        </select>--%>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><small>Select your GPA. (required)</small></td>
                </tr>

                <tr>
                    <td class="left">
                        <label>Majors</label></td>
                    <td>
                        <asp:ListBox CssClass="input" ID="lbox_Majors" runat="server" SelectionMode="Multiple">
                            <asp:ListItem Text="Physics" Value="physics" />
                            <asp:ListItem Text="Chemistry" Value="chemistry" />
                            <asp:ListItem Text="Mathematics" Value="mathematics" />
                            <asp:ListItem Text="Biology" Value="biology" />
                        </asp:ListBox>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><small>Check zero or more majors. (optional)</small></td>
                </tr>

                <tr>
                    <td>
                    </td>
                    <td>
                        <asp:Button ID="submit" Text="Submit" runat="server" />
                        <asp:Button ID="cancel" Text="Cancel" runat="server" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
