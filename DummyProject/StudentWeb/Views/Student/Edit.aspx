<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<StudentWeb.Models.View.Student>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        Edit</h2>
    <% using (Html.BeginForm())
       {%>
    <%: Html.ValidationSummary(true) %>
    <div class="editor-label">
        <%: Html.LabelFor(model => model.ID) %>
    </div>
    <div class="editor-field">
        <%: Html.TextBoxFor(model => model.ID) %>
        <%: Html.ValidationMessageFor(model => model.ID) %>
    </div>
    <div class="editor-label">
        <%: Html.LabelFor(model => model.Name) %>
    </div>
    <div class="editor-field">
        <%: Html.TextBoxFor(model => model.Name) %>
        <%: Html.ValidationMessageFor(model => model.Name) %>
    </div>
    <div class="editor-label">
        <%: Html.LabelFor(model => model.FatherName) %>
    </div>
    <div class="editor-field">
        <%: Html.TextBoxFor(model => model.FatherName) %>
        <%: Html.ValidationMessageFor(model => model.FatherName) %>
    </div>
    <div class="editor-label">
        <%: Html.LabelFor(model => model.MotherName) %>
    </div>
    <div class="editor-field">
        <%: Html.TextBoxFor(model => model.MotherName) %>
        <%: Html.ValidationMessageFor(model => model.MotherName) %>
    </div>
    <div class="editor-label">
        <%: Html.LabelFor(model => model.Age) %>
    </div>
    <div class="editor-field">
        <%: Html.TextBoxFor(model => model.Age) %>
        <%: Html.ValidationMessageFor(model => model.Age) %>
    </div>
    <div class="editor-label">
        <%: Html.LabelFor(model => model.Gender) %>
    </div>
    <div class="editor-field">
        <%: Html.TextBoxFor(model => model.Gender) %>
        <%: Html.ValidationMessageFor(model => model.Gender) %>
    </div>
    <div class="editor-label">
        <%: Html.LabelFor(model => model.CreatedDate) %>
    </div>
    <div class="editor-field">
        <%--<%: Html.TextBoxFor(model => model.CreatedDate, String.Format("{0:g}", Model.CreatedDate)) %>--%>
        <%: Html.TextBoxFor(model => model.CreatedDate) %>
        <%: Html.ValidationMessageFor(model => model.CreatedDate) %>
    </div>
    <div class="editor-label">
        <%: Html.LabelFor(model => model.CreatedBy) %>
    </div>
    <div class="editor-field">
        <%: Html.TextBoxFor(model => model.CreatedBy) %>
        <%: Html.ValidationMessageFor(model => model.CreatedBy) %>
    </div>
    <%--<div class="editor-label">
            <%: Html.LabelFor(model => model.Active) %>
        </div>
        <div class="editor-field">
            <%: Html.TextBoxFor(model => model.Active) %>
            <%: Html.ValidationMessageFor(model => model.Active) %>
        </div>--%>
    <p>
        <input type="submit" value="Save" />
    </p>
    <% } %>
    <div>
        <%: Html.ActionLink("Back to List", "list") %>
    </div>
</asp:Content>
