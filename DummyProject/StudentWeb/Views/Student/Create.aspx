<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<StudentWeb.Models.View.Student>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Create Student
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>
        <%: ViewData["msg"]%>
    </h2>
    <h2>
        Create Student</h2>
    <div>
        <% using (Html.BeginForm())
           {
               
        %>
        <%: Html.ValidationSummary(true, "Login was unsuccessful. Please correct the errors and try again.") %>
        
        <div class="editor-label">
            <%: Html.LabelFor(model => model.Name)%>
        </div>
        <div class="editor-field">
            <%: Html.TextBox("Name")%>
            <%: Html.ValidationMessageFor(m=> m.Name) %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.FatherName)%>
        </div>
        <%: Html.TextBox("FatherName")%>
        <%: Html.ValidationMessageFor(m=> m.FatherName) %>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.MotherName)%>
        </div>
        <%: Html.TextBox("MotherName")%>
        <%: Html.ValidationMessageFor(m=> m.MotherName) %>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.Age)%>
        </div>
        <%: Html.TextBox("Age")%>
        <%: Html.ValidationMessageFor(m=> m.Age) %>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.Gender)%>
        </div>
        <%: Html.TextBox("Gender")%>
        <%: Html.ValidationMessageFor(m=> m.Gender) %>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.AddressDetails.HouseNo)%>
        </div>
        <%: Html.TextBox("HouseNo")%>
        <%: Html.ValidationMessageFor(m=> m.AddressDetails.HouseNo) %>
        <p>
            <input type="submit" value="Create" />
        </p>
        <%} %>
    </div>
</asp:Content>
