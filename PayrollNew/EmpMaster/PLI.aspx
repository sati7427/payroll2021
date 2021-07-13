<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeeMaster.Master" AutoEventWireup="true" CodeBehind="PLI.aspx.cs" Inherits="PayrollNew.EmpMaster.PLI" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h3 class="text-center">PLI</h3>
    <br />

    <div class="container-fluid">
        <!-- Charts -->
        <div class="col-md-12 p-sm-5" style="border-color: #009ca6; border-style: solid;">
            <div class="w-sm-50 w-auto mx-auto">

                <div class="row">
                    <div class="col-sm-1"></div>
                    <div class="col-sm-3">
                        <div class="form-group">
                            <asp:Label class="font-weight-bold" ID="lbl_pligpf" runat="server" Text="Gpf_No/Suffix" />
                            <asp:TextBox class="form-control form-control-sm" Style="border-color: #009ca6" runat="server" ID="pliGpf_No" />
                        </div>
                    </div>
                    <div class="col-sm-2">
                        <div class="form-group">
                            <asp:Label ID="lbl_plisuffix" Style="color: white" runat="server" Text="--" />
                            <asp:DropDownList ID="txtpliSuffix" runat="server" class="form-control form-control-sm" Style="border-color: #009ca6">
                                <asp:ListItem>Select Suffix</asp:ListItem>
                                <asp:ListItem>AIS</asp:ListItem>
                                <asp:ListItem>MEDL</asp:ListItem>
                                <asp:ListItem>EDN</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-sm-5">
                        <div class="form-group">
                            <asp:Label ID="lblpliNametxt" class="font-weight-bold" runat="server" Text="Employee Name" />
                            <asp:TextBox runat="server" ID="plitxtName" class="form-control form-control-sm" Style="border-color: #009ca6" />
                        </div>
                    </div>
                    <div class="col-sm-1"></div>
                </div>
            </div>



            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-5">
                    <div class="form-group">
                        <asp:Label ID="lbl_pliname" runat="server" Text="PLI Name" class="font-weight-bold" />
                        <asp:TextBox ID="txtpliname" runat="server" class="form-control form-control-sm" Style="border-color: #009ca6" />
                    </div>
                </div>
                <div class="col-sm-5">
                    <div class="form-group">
                        <asp:Label ID="lbl_pliamount" runat="server" Text="Amount" class="font-weight-bold" />
                        <asp:TextBox ID="txtpliamount" runat="server" class="form-control form-control-sm" Style="border-color: #009ca6" />

                    </div>
                </div>
                <div class="col-sm-1"></div>
            </div>





            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-5">
                    <div class="form-group">
                        <asp:Label ID="lbl_pliacceptance" runat="server" Text="DateofAcceptance" class="font-weight-bold" />
                        <div class='input-group date'>
                            <asp:TextBox ID="txtpliAcceptance" runat="server" class="form-control" TextMode="Date" Style="border-color: #009ca6" />
                            <span class="input-group-addon" style="border-color: #009ca6">
                                <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                        </div>
                    </div>
                </div>

                <div class="col-sm-5">
                    <div class="form-group">
                        <asp:Label ID="lbl_pliMaturity" runat="server" Text="DateofMaturity" class="font-weight-bold" />
                        <div class='input-group date'>
                            <asp:TextBox ID="txtpliMaturity" runat="server" class="form-control" TextMode="Date" Style="border-color: #009ca6" />
                            <span class="input-group-addon" style="border-color: #009ca6">
                                <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="col-sm-1"></div>
            </div>






            <br />
            <div class="d-flex justify-content-center">
                <center>
                    <asp:Button ID="btnSubmit" class="btn btn-sm btn-primary" style="font-weight:bold" runat="server" Text="SUBMIT" />
                    <asp:Button ID="btnClear" class="btn btn-sm btn-danger" style="font-weight:bold" runat="server" Text="CLEAR" />
               </center>
            </div>




        </div>
        <!--div colomn class-->
    </div>
    <!--div container class-->


    <br />
    <br />

    <footer style="background-color: #017298;">
        <div class="container d-flex justify-content-center">
            <p  style="padding-top: 5px; color: #ffffff">Designed and developed by NIC Chennai.</p>
        </div>
    </footer>

</asp:Content>
