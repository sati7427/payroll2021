<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeeMaster.Master" AutoEventWireup="true" CodeBehind="CurrentDetails.aspx.cs" Inherits="PayrollNew.EmpMaster.CurrentDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script src="../Styles/js/bootstrap-datepicker.js"></script>
    <link href="../Styles/css/datepicker.css" rel="stylesheet" />  
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  <h3 class="text-center">Current Details</h3><br />
   
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
                            <asp:Label ID="lblNametxt" class="font-weight-bold" runat="server" Text="Employee Name" />
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
                        <asp:Label runat="server" class="font-weight-bold" ID="lbl_type" Text="Department" />
                        <asp:DropDownList ID="DepartmentDropdown" runat="server" class="form-control form-control-sm" Style="border-color: #009ca6">
                            <asp:ListItem>Select Department</asp:ListItem>
                            <asp:ListItem>National Institute of Siddha</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>

                <div class="col-sm-5">
                    <div class="form-group">
                        <asp:Label runat="server" class="font-weight-bold" ID="lbl_section" Text="Section" />
                        <asp:DropDownList ID="SectionDropdown" runat="server" class="form-control form-control-sm" Style="border-color: #009ca6">
                            <asp:ListItem>Select Section</asp:ListItem>
                            <asp:ListItem>Admin</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-1"></div>
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

                <div class="col-sm-5">
                    <div class="form-group">
                        <asp:Label ID="lbl_Emptype" runat="server" Text="Employee_Type" class="font-weight-bold" />
                        <asp:DropDownList ID="EmployeeDropdown" runat="server" class="form-control form-control-sm" Style="border-color: #009ca6">
                            <asp:ListItem>Select Employee Type</asp:ListItem>
                            <asp:ListItem>Permanent</asp:ListItem>
                            <asp:ListItem>Temporary</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="col-sm-1"></div>
            </div>



             <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-5">
                    <div class="form-group">
                         <asp:Label ID="lbl_Payment" runat="server" Text="Payment_type" class="font-weight-bold" />
                        <asp:DropDownList ID="PaymetnDropdown" runat="server" class="form-control form-control-sm" Style="border-color: #009ca6">
                            <asp:ListItem>Select Payment type</asp:ListItem>
                            <asp:ListItem>Salary</asp:ListItem>
                            <asp:ListItem>Arrear</asp:ListItem>
                        </asp:DropDownList>
                       
                    </div>
                </div>

                <div class="col-sm-5">
                    <div class="form-group">
                        <asp:Label ID="Label3" runat="server" Text="Salary_Type" class="font-weight-bold" />
                        <asp:DropDownList ID="SalarytypeDropdown" runat="server" class="form-control form-control-sm" Style="border-color: #009ca6">
                            <asp:ListItem>Select Salary Type</asp:ListItem>
                            <asp:ListItem>Fullpay</asp:ListItem>
                            <asp:ListItem>Halfpay</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="col-sm-1"></div>
            </div>






            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-5">
                    <div class="form-group">
                        <asp:Label ID="lbl_frpmperiod" runat="server" Text="Salary_Fromperiod" class="font-weight-bold" />
                        <div class='input-group date'>
                            <asp:TextBox ID="txtFromperiod" runat="server" class="form-control" TextMode="Date" Style="border-color: #009ca6" />
                            <span class="input-group-addon" style="border-color: #009ca6">
                                <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                        </div>
                    </div>
                </div>

                <div class="col-sm-5">
                    <div class="form-group">
                        <asp:Label ID="lbl_tpperiod" runat="server" Text="Salary_Toperiod" class="font-weight-bold" />
                        <div class='input-group date'>
                            <asp:TextBox ID="txttoperiod" runat="server" class="form-control" TextMode="Date" Style="border-color: #009ca6" />
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
                        <asp:Label ID="lbl_billtype" runat="server" Text="Billtype" class="font-weight-bold" />
                         <asp:DropDownList ID="Biitypedropdown" runat="server" class="form-control form-control-sm" Style="border-color: #009ca6">
                            <asp:ListItem>Select Billtype</asp:ListItem>
                            <asp:ListItem>Permanent</asp:ListItem>
                            <asp:ListItem>Temporary</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>

                <div class="col-sm-5">
                    <div class="form-group">
                        <asp:Label ID="lbl_Quarters" runat="server" Text="Quarters" class="font-weight-bold" />

                        <div class="radio">
                            <asp:RadioButton ID="RadioButton1" runat="server" Text="Yes" GroupName="Quart"/>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                             <asp:RadioButton ID="RadioButton2" runat="server" Text="No" GroupName="Quart"/>
                        </div>
                    </div>

                </div>
                <div class="col-sm-1"></div>
            </div>


            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-5">
                    <div class="form-group">
                        <asp:Label ID="lbl_Quarters_Address" runat="server" Text="Quarters_Address" class="font-weight-bold" />
                        <asp:TextBox ID="txtQuarters_Address" runat="server" class="form-control form-control-sm" Style="border-color: #009ca6" />
                    </div>
                </div>


                <div class="col-sm-5">
                    <div class="form-group">
                         <asp:Label ID="lbl_hra" runat="server" Text="HRA_Type" class="font-weight-bold" />
                          <asp:DropDownList ID="Quarters_AddressDropdown" runat="server" class="form-control form-control-sm" Style="border-color: #009ca6">
                            <asp:ListItem>Select HRA_Type</asp:ListItem>
                            <asp:ListItem>X</asp:ListItem>
                            <asp:ListItem>Y</asp:ListItem>
                            <asp:ListItem>Z</asp:ListItem>
                        </asp:DropDownList>
                       
                    </div>
                </div>
                <div class="col-sm-1"></div>
            </div>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-5">
                    <div class="form-group">
                       <asp:Label ID="lbl_cca" runat="server" Text="CCA_Type" class="font-weight-bold" />
                          <asp:DropDownList ID="ccaDropdown" runat="server" class="form-control form-control-sm" Style="border-color: #009ca6">
                            <asp:ListItem>Select CCA_Type</asp:ListItem>
                            <asp:ListItem>A</asp:ListItem>
                            <asp:ListItem>B</asp:ListItem>
                            <asp:ListItem>C</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="col-sm-5">
                    <div class="form-group">
                       <asp:Label ID="lbl_Bankname" runat="server" Text="Bank_Name" class="font-weight-bold" />
                          <asp:DropDownList ID="Bank_NameDropdown" runat="server" class="form-control form-control-sm" Style="border-color: #009ca6">
                            <asp:ListItem>Select Bank_Name</asp:ListItem>
                            <asp:ListItem>Indian Bank</asp:ListItem>
                            <asp:ListItem>State Bank of India</asp:ListItem>
                            <asp:ListItem>Canara Bank</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="col-sm-1"></div>
            </div>

            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-5">
                    <div class="form-group">
                         <asp:Label ID="lbl_branch" runat="server" Text="Branch_Name" class="font-weight-bold" />
                          <asp:DropDownList ID="DropDownList1" runat="server" class="form-control form-control-sm" Style="border-color: #009ca6">
                            <asp:ListItem>Select Branch_Name</asp:ListItem>
                            <asp:ListItem>Velachery</asp:ListItem>
                            <asp:ListItem>Guindy</asp:ListItem>
                            <asp:ListItem>Tambaram</asp:ListItem>
                        </asp:DropDownList>
                      
                    </div>
                </div>
                <div class="col-sm-5">
                    <div class="forn-group">
                          <asp:Label ID="lbl_ifsc" runat="server" Text="IFSC_Code" class="font-weight-bold" />
                        <asp:TextBox ID="txtifsc" runat="server" class="form-control form-control-sm" Style="border-color: #009ca6" />
                    </div>
                </div>
                <div class="col-sm-1"></div>
            </div>

            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-5">
                    <div class="form-group">
                        <asp:Label ID="lbl_micr" runat="server" Text="MICRCode" class="font-weight-bold" />
                        <asp:TextBox ID="txtMicr" runat="server" class="form-control form-control-sm" Style="border-color: #009ca6" />
                    </div>
                </div>
                <div class="col-sm-5">
                    <div class="form-group">
                        <asp:Label ID="lbl_Accountnum" runat="server" Text="AccountNumber" class="font-weight-bold" />
                        <asp:TextBox ID="txtAccnumber" runat="server" class="form-control form-control-sm" Style="border-color: #009ca6" />
                        
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
            <p  style="padding-top: 5px; color: #ffffff">Designed and developed by NIC Chennai.</p>
        </div>
    </footer>

</asp:Content>
