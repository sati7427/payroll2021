<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeeMaster.Master" AutoEventWireup="true" CodeBehind="PermanentDetails.aspx.cs" Inherits="PayrollNew.EmpMaster.PermanentDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../Styles/js/bootstrap-datepicker.js"></script>
    <link href="../Styles/css/datepicker.css" rel="stylesheet" />  
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h3 class="text-center">Employee Details</h3>
    <br />
    <div class="container-fluid">
        <!-- Charts -->
        <div class="col-md-12 p-sm-5" style="border-color: #009ca6;border-style: solid;">
            <div class="w-sm-50 w-auto mx-auto">

                <div class="row">
                    <div class="col-sm-1"></div>
                    <div class="col-sm-3">
                        <div class="form-group">
                            <asp:Label class="font-weight-bold" ID="lbl_gpf" runat="server" Text="Gpf_No/Suffix" />
                            <asp:TextBox class="form-control form-control-sm" Style="border-color: #009ca6" runat="server" ID="Gpf_No" />
                        </div>
                    </div>
                    <div class="col-sm-2">
                        <div class="form-group">
                            <asp:Label ID="Label1" Style="color: white" runat="server" Text="--" />
                            <asp:DropDownList ID="txtSuffix" runat="server" class="form-control form-control-sm" Style="border-color: #009ca6">
                            <asp:ListItem>Select Suffix</asp:ListItem>
                            <asp:ListItem>AIS</asp:ListItem>
                            <asp:ListItem>MEDL</asp:ListItem>
                             <asp:ListItem>EDN</asp:ListItem>
                        </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-sm-5">
                        <div class="form-group">
                            <asp:Label ID="lblNametxt" class="font-weight-bold" runat="server" Text="Name" />
                            <asp:TextBox runat="server" ID="txtName" class="form-control form-control-sm" Style="border-color: #009ca6" />
                        </div>
                    </div>
                    <div class="col-sm-1"></div>
                </div>
            </div>


            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-5">
                    <div class="form-group">
                        <asp:Label runat="server" class="font-weight-bold" ID="lbl_type" Text="Post Type" />
                        <div class="radio">
                            &nbsp;&nbsp;
                        <asp:RadioButton ID="radioMinistral" runat="server" class="radio" Text="Ministral"  GroupName="ministrl"/>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="radioEcecutive" runat="server" class="radio" Text="Executive" GroupName="ministrl"/>
                        </div>
                    </div>
                </div>

                <div class="col-sm-5">
                    <div class="form-group">
                         <asp:Label runat="server" class="font-weight-bold" ID="lbl_pftype" Text="PFType" />
                        <asp:DropDownList ID="Pftypedropdown" runat="server" class="form-control form-control-sm" Style="border-color: #009ca6">
                            <asp:ListItem>Select PFType</asp:ListItem>
                            <asp:ListItem>NPS</asp:ListItem>
                            <asp:ListItem>CPS</asp:ListItem>
                            <asp:ListItem>AISPF</asp:ListItem>
                            <asp:ListItem>TPF</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-5">
                    <div class="form-group">
                        <asp:Label ID="lbl_category" runat="server" Text="Category" class="font-weight-bold" />
                        <asp:DropDownList ID="Categorydropdown" runat="server" class="form-control form-control-sm" Style="border-color: #009ca6">
                            <asp:ListItem>Select Category</asp:ListItem>
                            <asp:ListItem>Others</asp:ListItem>
                            <asp:ListItem>AIS</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>

                <div class="col-sm-5">
                    <div class="form-group">
                        <asp:Label ID="lbl_designation" runat="server" Text="Designation" class="font-weight-bold" />
                        <asp:DropDownList ID="DesignationDropdown" runat="server" class="form-control form-control-sm" Style="border-color: #009ca6">
                            <asp:ListItem>Select Designation</asp:ListItem>
                            <asp:ListItem>Additional Director</asp:ListItem>
                            <asp:ListItem>Accountant</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="col-sm-1"></div>
            </div>

            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-5">
                    <div class="form-group">
                        <asp:Label ID="lbl_DOB" runat="server" Text="Date of Birth (dd/mm/yyyy)" class="font-weight-bold" />
                        <div class='input-group date'>
                            <asp:TextBox ID="txtdob" runat="server" class="form-control" TextMode="Date" Style="border-color: #009ca6" />
                            <span class="input-group-addon" style="border-color: #009ca6">
                                <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                        </div>
                    </div>
                </div>

                <div class="col-sm-5">
                    <div class="form-group">
                        <asp:Label ID="lbl_retair" runat="server" Text="Date of Retirement (dd/mm/yyyy)" class="font-weight-bold" />
                        <div class='input-group date'>
                            <asp:TextBox ID="txtRetair" runat="server" class="form-control" TextMode="Date" Style="border-color: #009ca6" />
                            <span class="input-group-addon" style="border-color: #009ca6">
                                <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                        </div>
                    </div>
                </div>
                <div class="col-sm-1"></div>
            </div>

            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-5">
                    <div class="form-group">
                        <asp:Label ID="lbl_doj" runat="server" Text="DOJ Govt. Service (dd/mm/yyyy)" class="font-weight-bold" />
                        <div class='input-group date'>
                            <asp:TextBox ID="txtDOJ" runat="server" class="form-control" TextMode="Date" Style="border-color: #009ca6" />
                            <span class="input-group-addon" style="border-color: #009ca6">
                                <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                        </div>
                    </div>
                </div>

                <div class="col-sm-5">
                    <div class="form-group">
                        <asp:Label ID="lbl_gender" runat="server" Text="Gender" class="font-weight-bold" />
                         <asp:DropDownList ID="Genderdropdown" runat="server" class="form-control form-control-sm" Style="border-color: #009ca6">
                            <asp:ListItem>Select Gender</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                             <asp:ListItem>Transgender</asp:ListItem>
                        </asp:DropDownList>
                    </div>

                </div>
                <div class="col-sm-1"></div>
            </div>


            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-5">
                    <div class="form-group">
                        <asp:Label ID="Label6" runat="server" Text="Marital status" class="font-weight-bold" />
                          <asp:DropDownList ID="txtMarried" runat="server" class="form-control form-control-sm" Style="border-color: #009ca6">
                            <asp:ListItem>Select Married status</asp:ListItem>
                            <asp:ListItem>Married</asp:ListItem>
                            <asp:ListItem>UnMarried</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>


                <div class="col-sm-5">
                    <div class="form-group">
                        <asp:Label ID="lbl_Father" runat="server" Text="FathersName" class="font-weight-bold" />
                        <asp:TextBox ID="txtFather" runat="server" class="form-control form-control-sm" Style="border-color: #009ca6" />
                    </div>
                </div>
                <div class="col-sm-1"></div>
            </div>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-5">
                    <div class="form-group">
                        <asp:Label ID="lbl_Spouse" runat="server" Text="SpouseName" class="font-weight-bold" />
                        <asp:TextBox ID="txtSpouse" runat="server" class="form-control form-control-sm" Style="border-color: #009ca6" />
                    </div>
                </div>
                <div class="col-sm-5">
                    <div class="form-group">
                        <asp:Label ID="lbl_Aadhar" runat="server" Text="Aadhar No" class="font-weight-bold" />
                        <asp:TextBox ID="txtAadhar" runat="server" class="form-control form-control-sm" Style="border-color: #009ca6" />
                    </div>
                </div>
                <div class="col-sm-1"></div>
            </div>

            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-5">
                    <div class="form-group">
                        <asp:Label ID="lbl_PANNo" runat="server" Text="PAN No" class="font-weight-bold" />
                        <asp:TextBox ID="txtPanNo" runat="server" class="form-control form-control-sm" Style="border-color: #009ca6" />
                    </div>
                </div>
                <div class="col-sm-5">
                    <div class="forn-group">
                        <asp:Label ID="lbl_physicallyChan" runat="server" Text="Physically_Chalelnged?" class="font-weight-bold" />

                        <div class="radio">
                            <asp:RadioButton ID="Phy_yes" runat="server" Text="Yes" GroupName="phychan"/>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                             <asp:RadioButton ID="Phy_No" runat="server" Text="No" GroupName="phychan"/>
                        </div>
                    </div>
                </div>
                <div class="col-sm-1"></div>
            </div>

            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-5">
                    <div class="form-group">
                        <asp:Label ID="lbl_Email" runat="server" Text="Email_Id" class="font-weight-bold" />
                        <asp:TextBox ID="txtEmail" runat="server" class="form-control form-control-sm" Style="border-color: #009ca6" />
                    </div>
                </div>
                <div class="col-sm-5">
                    <div class="form-group">
                        <asp:Label ID="lbl_Address" runat="server" Text="Address" class="font-weight-bold" />
                        <asp:TextBox ID="txtAddress" runat="server" class="form-control form-control-sm" Style="border-color: #009ca6" />
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




        </div><!--div colomn class-->        
    </div><!--div container class-->
    

    <br />
    <br />

    <footer style="background-color: #017298;">
        <div class="container d-flex justify-content-center">
            <p style="padding-top: 5px; color: #ffffff">Designed and developed by NIC Chennai.</p>
        </div>
    </footer>



    <!-- Menu Toggle Script -->
</asp:Content>
