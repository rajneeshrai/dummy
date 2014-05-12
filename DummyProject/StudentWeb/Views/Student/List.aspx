<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<List<StudentWeb.Models.View.Student>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    List
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        Student List</h2>
    <table>
        <tr>
            <td>
                ID
            </td>
            <td>
                Name
            </td>
            <td>
                Father's Name
            </td>
            <td>
                Actions
            </td>
        </tr>
        <% foreach (var s in Model)
           { %>
        <tr>
            <td>
                <%: s.ID %>
            </td>
            <td>
                <%: s.Name %>
            </td>
            <td>
                <%: s.FatherName %>
            </td>
            <td>
                <%: Html.ActionLink("Edit","Edit", new {id = s.ID}) %>
            </td>
        </tr>
        <%} %>
    </table>
</asp:Content>
