<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<StudentWeb.Models.View.Student>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Create Student
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        Create Student</h2>
    <div>
        <%{ %>
        <%: Html.LabelFor(model => model.FatherName)%>
        <%: Html.TextBox("Name")%>
        <%} %>
        <%
            {

            }
        %>
    </div>
</asp:Content>
