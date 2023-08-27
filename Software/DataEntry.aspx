<%@ Page Title="DataEntry" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="DataEntry.aspx.cs" Inherits="ERecs.DataEntry" %>

<asp:Content ID="Main" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>



    <h5>Data Entry Form...</h5>
    <div class="p-3 mb-2 bg-primary text-white">
        <asp:UpdatePanel ID="updatePanel5" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <div class="form-group row">
                    <label for="TID" class="col-sm-2 col-form-label">Transaction ID :</label>
                    <asp:Label ID="lblTrasnID" class="col-sm-1 col-form-label" runat="server" Text=""></asp:Label>
                    <label for="PayMonth" class="col-sm-2 col-form-label">Process Month :</label>
                    <asp:Label ID="lblMonth" class="col-sm-1 col-form-label" runat="server" Text=""></asp:Label>
                    <label for="PayMonth" class="col-sm-1 col-form-label">YYYYMM</label>
                </div>
                <div class="form-group row">
                    <label for="SysCode" class="col-sm-2 col-form-label">Base Code :</label>
                    <asp:Label ID="lblBaseCode" class="col-sm-1 col-form-label" runat="server" Text="BaseCode"></asp:Label>
                    <label for="bCode" class="col-sm-2 col-form-label">Base Name :</label>
                    <asp:Label ID="lblBase" class="col-sm-2 col-form-label" runat="server" Text="Base Name"></asp:Label>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    <%-- set 01 --%>
    <div>
        <asp:UpdatePanel ID="updatePanel3" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <div class="form-group row">
                    <label for="SysCode" class="col-sm-2 col-form-label">
                        Subject
                    </label>
                    <div class="col-sm-5">
                        <asp:DropDownList ID="cmbSubject" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="cmbSubject_SelectedIndexChanged" >
                        </asp:DropDownList>
                    </div>
                    <asp:Label ID="lblSubCode" class="col-sm-2 col-form-label" runat="server" Text=""></asp:Label>

                </div>
                <%-- set 02 --%>
                <div class="form-group row">
                    <label for="SysCode" class="col-sm-2 col-form-label">Pay Item</label>
                    <div class="col-sm-4">
                        <asp:DropDownList ID="cmbItem" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="cmbItem_SelectedIndexChanged" >
                        </asp:DropDownList>
                    </div>
                    <asp:Label ID="lblItemCode" class="col-sm-2 col-form-label" runat="server" Text=""></asp:Label>


                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    <%-- set 04 --%>
    <div class="accordion md-accordion" id="accordionEx" role="tablist" aria-multiselectable="true">

        <!-- Accordion card -->
        <div class="card">

            <!-- Card header -->
            <div class="card-header" role="tab" id="headingOne1">
                <a data-toggle="collapse" data-parent="#accordionEx" href="#collapseOne1" aria-expanded="false"
                    aria-controls="collapseOne1">
                    <h5 class="mb-0 ">Load from external Source <i class="fas fa-angle-double-right  rotate-icon"></i>
                    </h5>
                </a>
            </div>

            <!-- Card body -->
            <div id="collapseOne1" class="collapse show" role="tabpanel" aria-labelledby="headingOne1"
                data-parent="#accordionEx">
                <div class="card-body p-3 mb-2 bg-secondary text-white">
                    <fieldset>
                        <div class="form-group row">
                            <label for="lblfrom" class="col-sm-3 col-form-label">Load from Previous Month</label>&nbsp;&nbsp;
                                    <asp:Button ID="btnLoad" runat="server" Text="Search" CssClass="btn btn-primary " OnClick="btnLoad_Click" />
                        </div>

                        <div class="form-group row">
                            <label for="lblexcel" class="col-sm-3 col-form-label">Load from Excel Sheet </label>
                            <div class="col-4 ">
                                <asp:UpdatePanel ID="updatePanel2" runat="server" UpdateMode="Conditional">
                                    <ContentTemplate>
                                        <asp:FileUpload ID="FileUpload1" runat="server" class="form-control " />
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </div>
                            <div class="col-2 ">
                                <asp:Button ID="Button1" runat="server" Text="Load Excel" OnClick="Button1_Click" class="btn btn-primary" CausesValidation="False" />

                            </div>
                            <div class="col-2">
                                <asp:Button ID="btnSample" runat="server" Text="Download Excel Format" class="btn btn-primary" CausesValidation="False" OnClick="btnSample_Click" />
                            </div>
                        </div>
                        <div class="form-group row">
                            <asp:Label ID="lblpath" runat="server" Text="" Visible="true"></asp:Label>
                        </div>
                    </fieldset>



                </div>
            </div>

        </div>

        <div class="card">
            <!-- Card header -->
            <div class="card-header" role="tab" id="headingTwo2">
                <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx" href="#collapseTwo2"
                    aria-expanded="true" aria-controls="collapseTwo2">
                    <h5 class="mb-0">Recovery List  <i class="fas fa-angle-double-right  rotate-icon"></i>
                    </h5>
                </a>
            </div>
            <!-- Card body -->
            <div id="collapseTwo2" class="collapse" role="tabpanel" aria-labelledby="headingTwo2"
                data-parent="#accordionEx">
                <div class="card-body p-3 mb-2 bg-secondary text-white">
                    <asp:UpdatePanel ID="updatePanel1" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <fieldset>
                                <div class="form-group row">
                                    <label for="SysCode" class="col-sm-2 col-form-label">SysCode</label>
                                    <div class="col-sm-2">
                                        <select class="form-control" id="cmbSysCode" runat="server">
                                            <option>RNF</option>
                                            <option>VNF</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="SysCode" class="col-sm-2 col-form-label">CatCode</label>
                                    <div class="col-sm-2">
                                        <select class="form-control" id="cmbCatCode" runat="server">
                                            <option>O</option>
                                            <option>S</option>

                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="SysCode" class="col-sm-2 col-form-label">Official No</label>
                                    <div class="col-sm-2">
                                        <asp:TextBox ID="txtOfficialNo" runat="server" MaxLength="6" TextMode="Number" CssClass="form-control "></asp:TextBox>
                                    </div>
                                    <div class="col-sm-2">
                                        <asp:Button ID="btnSearchOfficer" runat="server" Text="Search" CssClass="btn btn-primary " OnClick="btnSearchOfficer_Click" />


                                    </div>
                                    <label for="amt" class="col-sm-2 col-form-label">Amount</label>
                                    <div class="col-sm-2">

                                        <asp:TextBox ID="txtAmount" runat="server" MaxLength="8" CssClass="form-control " Style="text-align: right"></asp:TextBox>




                                    </div>
                                    <div class="col-sm-2">
                                        <asp:Button ID="btnOfficerLoad" runat="server" Text="Add to List" CssClass="btn btn-primary " OnClick="btnOfficerLoad_Click" />

                                    </div>
                                </div>

                                <div class="form-group row border-top my-5 alert-primary ">
                                    <asp:Label ID="lRank" runat="server" Text="Rank :" Visible="true" class="col-sm-1 col-form-label"></asp:Label>

                                    <asp:Label ID="lbloRank" runat="server" Text="Rank" Visible="true" class="col-sm-2 col-form-label"></asp:Label>
                                    <asp:Label ID="Label3" runat="server" Text="Name :" Visible="true" class="col-sm-1 col-form-label"></asp:Label>

                                    <asp:Label ID="lbloName" runat="server" Text="Name with initial" Visible="true" class=" col-sm-3 col-form-label"></asp:Label>
                                    <asp:Label ID="Label4" runat="server" Text="Base :" Visible="true" class=" col-sm-1 col-form-label"></asp:Label>
                                    <asp:Label ID="lbloBase" runat="server" Text="Base Name" Visible="true" class="col-sm-3 col-form-label"></asp:Label>

                                </div>
                                <%--     BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Height="67px" Width="1285px" --%>

                                <div class="form-group row">
                                    <div class="table-responsive-xl">
                                        <asp:GridView ID="GvSubjectItems" runat="server" AllowPaging ="true"  class="table table-dark table-striped" OnRowDeleting="GvSubjectItems_RowDeleting" Width="1250px">
                                            <Columns>
                                                <asp:ButtonField ButtonType="Button" CommandName="Delete" HeaderText="Delete" ShowHeader="True" Text="Delete" />
                                            </Columns>
                                            <%--   <FooterStyle BackColor="White" ForeColor="#000066" />
                                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                        <RowStyle ForeColor="#000066" />--%>
                                            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                            <%--    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#00547E" />--%>
                                        </asp:GridView>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <div class="col-3">

                                        <asp:Label ID="lblvalidate" runat="server" Text="Validation on Going-----> " Visible="false" class="col-sm-2 col-form-label"></asp:Label>

                                    </div>
                                    <div class="col-sm-2">
                                        <asp:Button ID="btnCheckValidity" OnClientClick="Confirm()" runat="server" Text="Validity Check" CssClass="btn btn-primary " OnClick="btnValidity_Click" />
                                    </div>
                                    <div class="col-sm-1">
                                        <asp:Button ID="btnShort" runat="server" Text="List Short" CssClass="btn btn-primary " OnClick="btnShort_Click" /></div> 
                                          <div class="col-sm-1">
                                        <asp:Button ID="btnGetTotal" runat="server" CssClass="btn btn-primary " OnClick="btnTotal_Click" Text="Get Total" />
                                    </div>

                                 <%--   <div class="col-sm-2">
                                        <asp:Button ID="btnTotal" runat="server" Text="Check Total" CssClass="btn btn-primary " OnClick="btnTotal_Click" />
                                    </div>--%>
                                    <div class="col-sm-2">




                                        <asp:TextBox ID="txtTotal" runat="server" MaxLength="12" CssClass="form-control" Style="text-align: right" ReadOnly="true"></asp:TextBox>
                                    </div>
                                </div>



                            </fieldset>
                        </ContentTemplate>
                    </asp:UpdatePanel>

                    <asp:UpdateProgress ID="UpdateProgressbar1" runat="server" AssociatedUpdatePanelID="updatePanel1" ClientIDMode="Predictable" ViewStateMode="Inherit">
                        <ProgressTemplate>
                            <div class="div1" style="margin-left: 40px">
                                <img alt="" src="Images/Processing.gif" />
                            </div>

                        </ProgressTemplate>

                    </asp:UpdateProgress>




                </div>
            </div>
        </div>

    </div>



    <div class="card">
        <!-- Card header -->
        <div class="card-header" role="tab" id="headingTwo3">
            <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx" href="#collapseTwo3"
                aria-expanded="false" aria-controls="collapseTwo3">
                <h5 class="mb-0">Forward Through   <i class="fas fa-angle-double-right  rotate-icon"></i>
                </h5>
            </a>
        </div>


        <!-- Card body -->
        <div id="collapseTwo3" class="collapse" role="tabpanel" aria-labelledby="headingTwo3"
            data-parent="#accordionEx">
            <div class="card-body p-3 mb-2 bg-secondary text-white">




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
                                <div class="col-sm-1">
                                    <asp:Button ID="btnForward" runat="server" Text="Save" CssClass="btn btn-primary " OnClick="btnForward_Click" />
                                </div>
                                <div class="col-sm-1">
                                    <asp:Button ID="btnForwardConfrim" runat="server" Enabled ="false"  Text="Confirm" CssClass="btn btn-primary " OnClick="btnForwardConfrim_Click" />
                                </div>
                                <div class="col-sm-1">
                                    <asp:Button ID="btnClear" runat="server" Text="New" CssClass="btn btn-primary " OnClick="btnClear_Click" />
                                </div>
                            </div>

                        </fieldset>

                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
    </div>
    <div class="card">
        <!-- Card header -->
        <div class="card-header" role="tab" id="headingTwo4">
            <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx" href="#collapseTwo4"
                aria-expanded="false" aria-controls="collapseTwo3">
                <h5 class="mb-0">Transaction Lists <i class="fas fa-angle-double-right  rotate-icon"></i>
                </h5>
            </a>
        </div>
        <!-- Card body -->
        <div id="collapseTwo4" class="collapse" role="tabpanel" aria-labelledby="headingTwo4"
            data-parent="#accordionEx">
            <div class="card-body p-3 mb-2 bg-secondary text-white">

                <br />
                <asp:UpdatePanel ID="updatePanel6" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <div class="form-group row">

                            <asp:GridView ID="GVTransDetails" class="table table-info table-striped" runat="server" Width="1105px" OnLoad="GVTransDetails_Load" OnRowCommand="GVTransDetails_RowCommand">
                                <Columns>
                                    <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="Select" ShowHeader="True" Text="Select" />
                                </Columns>
                             <%--   <FooterStyle BackColor="White" ForeColor="#000066" />
                                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                <RowStyle ForeColor="#000066" />--%>
                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                         <%--       <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#00547E" />--%>
                            </asp:GridView>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>

            </div>
        </div>
    </div>

</asp:Content>



