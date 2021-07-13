<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeeMaster.Master" AutoEventWireup="true" CodeBehind="Dues.aspx.cs" Inherits="PayrollNew.EmpMaster.Dues" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Styles/css/W3.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="w3-container">
  <h2>Tabs</h2>
  <p>Tabs are perfect for single page web applications, or for web pages capable of displaying different subjects. Click on the links below.</p>
</div>

<div class="w3-bar w3-black">
  <button class="w3-bar-item w3-button" onclick="openCity('London')" runat="server" autopostback="false" xmlns:asp="#unknown">London</button>
  <button class="w3-bar-item w3-button" onclick="openCity('Paris')" runat="server" autopostback="false" xmlns:asp="#unknown">Paris</button>
  <button class="w3-bar-item w3-button" onclick="openCity('Tokyo')" runat="server" autopostback="false" xmlns:asp="#unknown">Tokyo</button>
</div>

<div id="London" class="w3-container city">
  <h2>London</h2>
  <p>London is the capital city of England.</p>
</div>

<div id="Paris" class="w3-container city" style="display:none">
  <h2>Paris</h2>
  <p>Paris is the capital of France.</p> 
</div>

<div id="Tokyo" class="w3-container city" style="display:none">
  <h2>Tokyo</h2>
  <p>Tokyo is the capital of Japan.</p>
</div>

    <script>
        function openCity(cityName) {
            var i;
            var x = document.getElementsByClassName("city");
            for (i = 0; i < x.length; i++) {
                x[i].style.display = "none";
            }
            document.getElementById(cityName).style.display = "block";
        }
</script>
</asp:Content>
