<%@ Page Title="Extra Duty" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Extra_Duty.aspx.cs" Inherits="ERecs.Extra_Duty" %>

<asp:Content ID="Main" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>



    <h5>Extra Duty - Data Entry Form...</h5>
    <div class="p-3 mb-2 bg-primary text-white">
        <asp:UpdatePanel ID="updatePanel5" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <div class="form-group row">
                    <label for="TID" class="col-sm-2 col-form-label">Transaction ID :</label>
                    <asp:Label ID="lblTrasnID" class="col-sm-1 col-form-label" runat="server" Text=""></asp:Label>
                    <label for="PayMonth" class="col-sm-2 col-form-label">Relevant Month :</label>
                    <asp:Label ID="lblMonth" class="col-sm-1 col-form-label" runat="server" Text=""></asp:Label>
                    <label for="PayMonth" class="col-sm-1 col-form-label">YYYYMM</label>

                </div>
                <div class="form-group row">
                    <label for="SysCode" class="col-sm-2 col-form-label">Base Code :</label>
                    <asp:Label ID="lblBaseCode" class="col-sm-1 col-form-label" runat="server" Text="BaseCode"></asp:Label>
                    <label for="bCode" class="col-sm-2 col-form-label">Base Name :</label>
                    <asp:Label ID="lblBase" class="col-sm-2 col-form-label" runat="server" Text="Base Name"></asp:Label>
                </div>
                <div class="form-group row">
                    <label for="officialNo" class="col-sm-1 col-form-label">officialNo  :</label>
                    <asp:Label ID="lblOfficialNo" class="col-sm-1 col-form-label" runat="server" Text=""></asp:Label>
                    <label for="Grade" class="col-sm-1 col-form-label">Grade  :</label>
                    <asp:Label ID="lblGrade" class="col-sm-1 col-form-label" runat="server" Text=""></asp:Label>
                    <label for="Rate" class="col-sm-1 col-form-label">Rate  :</label>
                    <asp:Label ID="lblRate" class="col-sm-1 col-form-label" runat="server" Text=""></asp:Label>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>











    <div class="form-group row">
        <label for="Effecteddt" class="col-sm-2 col-form-label">Effected Date</label>

        <asp:TextBox ID="txtEffectDate" runat="server" TextMode="Date" CssClass="col-sm-2 form-control" MaxLength="10"></asp:TextBox>

    </div>
    <div class="form-group row">

        <label for="Time" class="col-sm-2 col-form-label">Time Period</label>

        <label for="from" class="col-sm-1 col-form-label">From :</label>

        <asp:TextBox ID="txtfromhr" runat="server" TextMode="Number" CssClass="col-sm-1 form-control" MaxLength="2" ValidationGroup="time" placeholder="HH"></asp:TextBox>
        <%--          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Please enter started Time in 24hr format." ControlToValidate="txtfrom" CssClass="text-danger" ValidationGroup="Second">
            </asp:RequiredFieldValidator>--%>
        <label for="from" class=" col-form-label">: </label>




        <asp:TextBox ID="txtfromm" runat="server" TextMode="Number" CssClass="col-sm-1 form-control" MaxLength="2" ValidationGroup="time" placeholder="MM"></asp:TextBox>

        <asp:RangeValidator ID="Rangevalidator1" ErrorMessage="Please enter value between 0-23." ForeColor="Red" ControlToValidate="txtfromhr" MinimumValue="0" MaximumValue="23" runat="server" Type="Integer">
        </asp:RangeValidator>
        <asp:RangeValidator ID="Rangevalidator2" ErrorMessage="Please enter value between 0-59." ForeColor="Red" ControlToValidate="txtfromm" MinimumValue="0" MaximumValue="59" runat="server" Type="Integer">
        </asp:RangeValidator>

    </div>
    <div class="form-group row">
        <div class="col-sm-2"></div>
        <label for="to" class="col-sm-1 col-form-label">To :</label>

        <asp:TextBox ID="txttohh" runat="server" TextMode="Number" CssClass="col-sm-1 form-control" MaxLength="2" ValidationGroup="time" placeholder="HH"></asp:TextBox>
        <%--          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Please enter started Time in 24hr format." ControlToValidate="txtfrom" CssClass="text-danger" ValidationGroup="Second">
            </asp:RequiredFieldValidator>--%>
        <label for="from" class="col-form-label">: </label>




        <asp:TextBox ID="txttoMM" runat="server" TextMode="Number" CssClass="col-sm-1 form-control" MaxLength="2" ValidationGroup="time" placeholder="MM"></asp:TextBox>

        <asp:RangeValidator ID="Rangevalidator3" ErrorMessage="Please enter value between 0-24." ForeColor="Red" ControlToValidate="txttohh" MinimumValue="0" MaximumValue="24" runat="server" Type="Integer">
        </asp:RangeValidator>
        <asp:RangeValidator ID="Rangevalidator4" ErrorMessage="Please enter value between 0-59." ForeColor="Red" ControlToValidate="txttoMM" MinimumValue="0" MaximumValue="59" runat="server" Type="Integer">
        </asp:RangeValidator>


    </div>
    <div class="form-group row">
        <div class="col-sm-2"></div>
        <div class="col-sm-2">
            <asp:Button ID="Button1" runat="server" Text="Calulate Period" CssClass="btn btn-primary " OnClick="btnCal_Click" />
        </div>
        <asp:Label ID="lbltime" class="col-form-label" runat="server" Text="" ForeColor="Green" Visible="false"></asp:Label>

    </div>

    <div class="form-group row">
        <label for="remarks1" class="col-sm-2 col-form-label">Details of Extra Duty</label>
        <asp:TextBox ID="txtextraDutyDetails" runat="server" TextMode="SingleLine" CssClass="col-sm-6 form-control" ValidationGroup="Second"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="* Please enter extra duty details." ControlToValidate="txtextraDutyDetails" CssClass="text-danger" ValidationGroup="Second">
        </asp:RequiredFieldValidator>
        &nbsp;
    </div>
   
    <div class="form-group row">
        <div class="col-sm-2">
            
        </div>
        <div class="col-sm-2">
            <asp:Button ID="btnAdd" runat="server" Text="Add to List" CssClass="btn btn-primary " OnClick="btnAdd_Click" />
        </div>
        <div class="col-sm-1">
            <asp:Button ID="btnClear" runat="server" Text="New" CssClass="btn btn-primary " OnClick="btnClear_Click" />
        </div>
    </div>
    <br />
    <div class="form-group row">
        <asp:Label ID="lblinfo" class="col-form-label" runat="server" Text="" ForeColor="Red"></asp:Label>
    </div>
    <br />
    <div class="alert  alert-dismissible alert-info">
        <%-- <button type="button" class="close" data-dismiss="alert">&times;</button>--%>
        <h4 class="alert-heading">List of Extra Duty </h4>
        <p class="mb-0">Extra duty is limited to 120hrs for the month and maximum 6 hours and minimum 1 hour per day.</p>


        <div class="form-group row">
            <div class="table-responsive-xl">
                <asp:GridView ID="GvSubjectItems" runat="server" AllowPaging="false" class="table table-dark table-striped" OnRowDeleting="GvSubjectItems_RowDeleting" Width="1250px">
                    <Columns>
                        <asp:ButtonField ButtonType="Button" CommandName="Delete" HeaderText="Delete" ShowHeader="True" Text="Delete" />
                    </Columns>
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />

                </asp:GridView>
            </div>
        </div>
    </div>




    <div class="card">
        <!-- Card header -->
        <div class="card-header" role="tab" id="headingTwo3">
            <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx" href="#collapseTwo3"
                aria-expanded="false" aria-controls="collapseTwo3">
                <h5 class="mb-0">Dental/Medical Department Head  <i class="fas fa-angle-double-right  rotate-icon"></i>
                </h5>
            </a>
        </div>


        <!-- Card body -->
        <div id="collapseTwo3" class="collapse" role="tabpanel" aria-labelledby="headingTwo3"
            data-parent="#accordionEx">
            <div class="card-body p-3 mb-2 bg-secondary text-white">


                <div class="accordion md-accordion" id="accordionEx" role="tablist" aria-multiselectable="true">


                    <asp:UpdatePanel ID="updatePanel4" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <fieldset>
                                <div class="form-group row">
                                    <label for="SCode" class="col-sm-2 col-form-label">SysCode</label>
                                    <div class="col-sm-2">
                                        <select class="form-control" id="TsysCode" runat="server">
                                            <option>RNF</option>
                                            <option>VNF</option>

                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="tSysCode" class="col-sm-2 col-form-label">CatCode</label>
                                    <div class="col-sm-2">
                                        <select class="form-control" id="tCatCode" runat="server">
                                            <option>O</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="SysCode" class="col-sm-2 col-form-label">Official No</label>
                                    <div class="col-sm-2">
                                        <asp:TextBox ID="txtTOfficialNo" runat="server" MaxLength="6" TextMode="Number" CssClass="form-control "></asp:TextBox>
                                    </div>
                                    <div class="col-sm-4">
                                        <asp:Button ID="btnLsearch" runat="server" Text="Search" CssClass="btn btn-primary " OnClick="btnLsearch_Click" />

                                    </div>
                                </div>
                                <div class="form-group row border-top my-5 alert-primary ">
                                    <div class="col-sm-sm-1">
                                        <asp:Label ID="Label1" runat="server" Text="Rank :" class="col-form-label"></asp:Label>
                                    </div>
                                    <div class="col-sm-1">
                                        <asp:Label ID="lblTRank" runat="server" Text="" class="col-form-label"></asp:Label>
                                    </div>
                                    <div class="col-sm-sm-1">
                                        <asp:Label ID="Label2" runat="server" Text="Name :" class="col-form-label"></asp:Label>
                                    </div>
                                    <div class="col-sm-2">
                                        <asp:Label ID="lblTName" runat="server" Text="" class="col-form-label"></asp:Label>
                                    </div>
                                    <div class="col-sm-sm-2">
                                        <asp:Label ID="Label5" runat="server" Text="Appointment :" class="col-form-label"></asp:Label>
                                    </div>
                                    <div class="col-sm-3">
                                        <asp:Label ID="lblTApointment" runat="server" Text="" Visible="true" class="col-form-label"></asp:Label>
                                    </div>
                                    <div class="col-sm-1">
                                        <asp:Label ID="Label6" runat="server" Text="Base :" class="col-form-label"></asp:Label>
                                    </div>
                                    <div class="col-sm-2">
                                        <asp:Label ID="lblTBase" runat="server" Text="" Visible="true" class="col-form-label"></asp:Label>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-2">
                                    </div>
                                    <div class="col-sm-2">
                                        <asp:Button ID="btnDSave" runat="server" Text="Save Step 01" CssClass="btn btn-primary " OnClick="btnDSave_Click" />
                                    </div>
                                    <div class="col-sm-5 ">
                                        <asp:Label ID="lbldInfo" runat="server" Text="" Visible="true" class="col-form-label" ForeColor="Red"></asp:Label>
                                    </div>

                                </div>

                            </fieldset>

                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>
        </div>
    </div>

    <div class="card">
        <!-- Card header -->
        <div class="card-header" role="tab" id="headingTwo3">
            <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx" href="#collapseTwo3"
                aria-expanded="false" aria-controls="collapseTwo3">
                <h5 class="mb-0">Area Commander  <i class="fas fa-angle-double-right  rotate-icon"></i>
                </h5>
            </a>
        </div>


        <!-- Card body -->
        <div id="collapseTwo3" class="collapse" role="tabpanel" aria-labelledby="headingTwo3"
            data-parent="#accordionEx">
            <div class="card-body p-3 mb-2 bg-secondary text-white">


                <div class="accordion md-accordion" id="accordionEx" role="tablist" aria-multiselectable="true">


                    <asp:UpdatePanel ID="updatePanel1" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <fieldset>
                                <div class="form-group row">
                                    <label for="SCode" class="col-sm-2 col-form-label">SysCode</label>
                                    <div class="col-sm-2">
                                        <select class="form-control" id="cmbASysCode" runat="server">
                                            <option>RNF</option>
                                            <option>VNF</option>

                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="tSysCode" class="col-sm-2 col-form-label">CatCode</label>
                                    <div class="col-sm-2">
                                        <select class="form-control" id="CmbACatCode" runat="server">
                                            <option>O</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="SysCode" class="col-sm-2 col-form-label">Official No</label>
                                    <div class="col-sm-2">
                                        <asp:TextBox ID="txtAOfficialNo" runat="server" MaxLength="6" TextMode="Number" CssClass="form-control "></asp:TextBox>
                                    </div>
                                    <div class="col-sm-4">
                                        <asp:Button ID="btnASerach" runat="server" Text="Search" CssClass="btn btn-primary " OnClick="btnASearch_Click" />

                                    </div>
                                </div>
                                <div class="form-group row border-top my-5 alert-primary ">
                                    <div class="col-sm-sm-1">
                                        <asp:Label ID="blblArank1" runat="server" Text="Rank :" class="col-form-label"></asp:Label>
                                    </div>
                                    <div class="col-sm-1">
                                        <asp:Label ID="lblArank" runat="server" Text="" class="col-form-label"></asp:Label>
                                    </div>
                                    <div class="col-sm-sm-1">
                                        <asp:Label ID="Label7" runat="server" Text="Name :" class="col-form-label"></asp:Label>
                                    </div>
                                    <div class="col-sm-2">
                                        <asp:Label ID="lblAName" runat="server" Text="" class="col-form-label"></asp:Label>
                                    </div>
                                    <div class="col-sm-sm-2">
                                        <asp:Label ID="Label9" runat="server" Text="Appointment :" class="col-form-label"></asp:Label>
                                    </div>
                                    <div class="col-sm-3">
                                        <asp:Label ID="lblAAppointment" runat="server" Text="" Visible="true" class="col-form-label"></asp:Label>
                                    </div>
                                    <div class="col-sm-1">
                                        <asp:Label ID="Label11" runat="server" Text="Base :" class="col-form-label"></asp:Label>
                                    </div>
                                    <div class="col-sm-2">
                                        <asp:Label ID="lblABase" runat="server" Text="" Visible="true" class="col-form-label"></asp:Label>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-2">
                                    </div>
                                    <div class="col-sm-3">
                                        <asp:Button ID="btnASave" runat="server" Text="Save Step 02" CssClass="btn btn-primary " OnClick="btnASave_Click" />
                                    </div>
                                    <div class="col-5 ">
                                        <asp:Label ID="lblAInfo" runat="server" Text="" Visible="true" class="col-form-label" ForeColor="Red"></asp:Label>
                                    </div>

                                </div>

                            </fieldset>

                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>
        </div>

    </div>
    <br />
    <div class="form-group row">

        <asp:GridView ID="GVTransDetails" class="table table-info table-striped" runat="server" Width="1105px" OnRowCommand="GVTransDetails_RowCommand">
            <Columns>
                <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="Select" ShowHeader="True" Text="Select" />
            </Columns>
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
    </div>
</asp:Content>



