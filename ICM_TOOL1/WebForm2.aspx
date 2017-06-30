<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication26.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
<%--    <form id="form1" runat="server">
    <table>
    <tr>
    <td>
    <asp:Label ID="Label1" runat="server" CssClass="lbl" Text="First Name"></asp:Label>
    </td>
    <td>
    <asp:TextBox ID="TextBox1" runat="server" Font-Size="14px" ></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td>
    <asp:Label ID="Label2" runat="server" CssClass="lbl" Text="Middle Name"></asp:Label>
    </td>
    <td>
    <asp:TextBox ID="TextBox2" runat="server" Font-Size="14px" ></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td>
    <asp:Label ID="Label3" runat="server" CssClass="lbl" Text="Last Name"></asp:Label>
    </td>
    <td>
    <asp:TextBox ID="TextBox3" runat="server" Font-Size="14px" ></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td>
    <asp:Label ID="Label4" runat="server" CssClass="lbl" Text="Gender"></asp:Label>
    </td>
    <td>
    <asp:TextBox ID="TextBox4" runat="server" Font-Size="14px" ></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td>
    <asp:Label ID="Label5" runat="server" CssClass="lbl" Text="Age"></asp:Label>
    </td>
    <td>
    <asp:TextBox ID="TextBox5" runat="server" Font-Size="14px" ></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td>
    <asp:Label ID="Label6" runat="server" CssClass="lbl" Text="City"></asp:Label>
    </td>
    <td>
    <asp:TextBox ID="TextBox6" runat="server" Font-Size="14px" ></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td>
    <asp:Label ID="Label7" runat="server" CssClass="lbl" Text="State"></asp:Label>
    </td>
    <td>
    <asp:TextBox ID="TextBox7" runat="server" Font-Size="14px" ></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td>
    <asp:Label ID="Label8" runat="server" CssClass="lbl" Text="Country"></asp:Label>
    </td>
    <td>
    <asp:TextBox ID="TextBox8" runat="server" Font-Size="14px" ></asp:TextBox>
    </td>
    </tr>
    <tr>
    <td>
    <asp:Label ID="Label9" runat="server" CssClass="lbl" Text="Zip Code"></asp:Label>
    </td>
    <td>
    <asp:TextBox ID="TextBox9" runat="server" Font-Size="14px" ></asp:TextBox>
    </td>
    </tr>
    </table>
    </form>--%>
    <form id="form1" runat="server">
    <div class="form">
                         
                             <div class="form-group">
                             
                                 <asp:FileUpload id="FileUploadControl" runat="server" AllowMultiple="true"/>
                             
                                  
                                  <asp:Button class="btn btn-primary form-control" ID="UploadButton" OnClick="Button3_Click" runat="server" Text="Upload" />
                                 <br /> <br />
                             
                               <asp:Label id="Statuslabel" runat="server"></asp:Label>
                                
                             </div>
                         
                     </div>
        </form>
</body>
</html>
