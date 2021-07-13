<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="PayrollNew.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src='https://code.responsivevoice.org/responsivevoice.js'></script>
    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <textarea style="background-image:url('https://upload.wikimedia.org/wikipedia/commons/8/85/Codero_Hosting_Logo_%28100px%29.png');font-size:300%;font-weight: bold;color:red" id="commentBox" runat="server" cols="4" rows="1"></textarea><br />

<%--<textarea id="commentBox1" value="<%= Value%>" cols="50" rows="8"></textarea><br />--%> 
<%--<select id="voiceselection"></select> 
 
<input 
  onclick="responsiveVoice.speak($('#text').val(), $('#voiceselection').val());" 
  type="button" 
  value="Play" 
/>
 
<script>
    //Populate voice selection dropdown
    var voicelist = responsiveVoice.getVoices();
    var vselect = $("#voiceselection");
    $.each(voicelist, function () {
        vselect.append($("<option />").val(this.name).text(this.name));
    });
</script>--%>
      

  <input   onclick="responsiveVoice.speak($('#commentBox').val());"  type="button"  value="Play"/>

    </form>
</body>
</html>
