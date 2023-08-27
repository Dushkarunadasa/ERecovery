<%@ Page Title="Subject Clerk" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="SubjectClerk.aspx.cs" Inherits="ERecs.SubjectClerk" %>

<asp:Content ID="Main" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <h5>Recovery/Allowances - Subject Table...</h5>

    <div class="accordion md-accordion" id="accordionEx" role="tablist" aria-multiselectable="true">

        <!-- Accordion card -->
        <div class="card">
            <!-- Card header -->
            <div class="card-header" role="tab" id="headingOne1">
                <a data-toggle="collapse" data-parent="#accordionEx" href="#collapseOne1" aria-expanded="false"
                    aria-controls="collapseOne1">
                    <h5 class="mb-0 ">Pending Action <i class="fas fa-angle-double-right  rotate-icon"></i>
                    </h5>
                </a>
            </div>

            <div id="collapseOne1" class="collapse show" role="tabpanel" aria-labelledby="headingOne1"
                data-parent="#accordionEx">
                <div class="card-body p-3 mb-2 bg-secondary text-white">

                    <asp:UpdatePanel ID="updatePanel1" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <fieldset>
                                <div class="form-group row">
                                    <asp:GridView ID="GvTransPending" runat="server" class="table table-dark table-striped" Width="1285px" OnRowCommand="GvTransPending_RowCommand">
                                        <Columns>
                                            <asp:ButtonField ButtonType="Button" CommandName="Select" ControlStyle-CssClass="btn btn-default" HeaderText="Select" ShowHeader="True" Text="Select" />
                                        </Columns>

                                        <Columns>
                                            <asp:ButtonField ButtonType="Button" ControlStyle-CssClass="btn btn-success" CommandName="Check" HeaderText="Checking" ShowHeader="True" Text="Checked" />
                                        </Columns>

                                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />

                                    </asp:GridView>
                                </div>
                            </fieldset>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>




        </div>

        <div class="card">

            <!-- Card header -->
            <div class="card-header" role="tab" id="headingTwo2">
                <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx" href="#collapseTwo2"
                    aria-expanded="true" aria-controls="collapseTwo2">
                    <h5 class="mb-0">Action Taken  <i class="fas fa-angle-double-right  rotate-icon"></i>
                    </h5>
                </a>
            </div>

            <!-- Card body -->
            <div id="collapseTwo2" class="collapse" role="tabpanel" aria-labelledby="headingTwo2"
                data-parent="#accordionEx">
                <div class="card-body p-3 mb-2 bg-secondary text-white">



                    <asp:UpdatePanel ID="updatePanel2" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <fieldset>
                                <div class="form-group row">

                                    <asp:GridView ID="GVTransConfirmed" runat="server" class="table table-dark table-striped" Width="1105px" OnRowCommand="GVTransConfirmed_RowCommand">
                                        <Columns>
                                            <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="Select" ShowHeader="True" Text="Select" />
                                        </Columns>

                                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />

                                    </asp:GridView>
                                </div>
                            </fieldset>
                        </ContentTemplate>
                    </asp:UpdatePanel>


                </div>
            </div>
        </div>
        <div class="card">

            <!-- Card header -->
            <div class="card-header" role="tab" id="headingTwo2">
                <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx" href="#collapselist"
                    aria-expanded="true" aria-controls="collapseTwo2">
                    <h5 class="mb-0">Recovery Status Check <i class="fas fa-angle-double-right  rotate-icon"></i>
                    </h5>
                </a>
            </div>

            <!-- Card body -->
            <div id="collapselist" class="collapse" role="tabpanel" aria-labelledby="headingTwo2"
                data-parent="#accordionEx">
                <div class="card-body p-3 mb-2 bg-secondary text-white">
                    <asp:UpdatePanel ID="updatePanel6" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <br />
                            <div class="form-group row">
                                <div class="col-sm-1">
                                    <asp:Button ID="btnFilter" runat="server" Text="Filter" class="btn btn-primary btn-sm" OnClick="btnFilter_Click" />

                                </div>
                                <div class="col-1">
                                    <asp:CheckBox ID="chkforward" runat="server" Text=" : Forward" class="form-check-input" />
                                </div>
                                <div class="col-1">
                                    <asp:CheckBox ID="chkapproved" runat="server" Text=": Approved" class="form-check-input" />
                                </div>
                                <div class="col-1">
                                    <asp:CheckBox ID="chksubject" runat="server" Text=": SubjectClerk" class="form-check-input" />
                                </div>
                                <div class="col-1">
                                    <asp:CheckBox ID="chkreject" runat="server" Text=": Reject" class="form-check-input" />
                                </div>
                                <div class="col-sm-1">
                                    <asp:Label ID="Label1" runat="server" Text="" CssClass="col-form-label "> Base :</asp:Label>
                                </div>
                                <div class="col-sm-2">
                                    <asp:DropDownList ID="ddBaseList" runat="server" Height="45px" Width="377px" AutoPostBack="true" class="form-control " OnSelectedIndexChanged="ddBaseList_SelectedIndexChanged">
                                    </asp:DropDownList>
                                    <asp:Label ID="lblbaseCode" runat="server" Text="" CssClass="col-form-label "></asp:Label>
                                </div>
                              


                            </div>
                            <br />
                            <div class="form-group row">
                              <div class="col-4">
                                    <asp:DropDownList ID="DdSubject" runat="server" Height="45px" Width="377px" AutoPostBack="true" class="form-control " OnSelectedIndexChanged="DdSubject_SelectedIndexChanged" >
                                    </asp:DropDownList>
                                    <asp:Label ID="lblSubId" runat="server" Text="" CssClass="col-form-label "></asp:Label>
                                </div>
                                </div> 
                            <br />

                            <fieldset>
                                <div class="form-group row">

                                    <asp:GridView ID="dgMonthList" runat="server" class="table table-dark table-striped" OnSorting="dgMonthList_Sorting">
                                        <Columns>
                                            <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="Select" ShowHeader="True" Text="Select" />
                                        </Columns>

                                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />

                                    </asp:GridView>
                                </div>
                            </fieldset>
                        </ContentTemplate>
                    </asp:UpdatePanel>


                </div>
            </div>
        </div>
        <div class="card">

            <!-- Card header -->
            <div class="card-header" role="tab" id="headingTwo3">
                <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx" href="#collapseTwo3"
                    aria-expanded="true" aria-controls="collapseTwo2">
                    <h5 class="mb-0">Edit Recoveries  <i class="fas fa-angle-double-right  rotate-icon"></i>
                    </h5>
                </a>
            </div>

            <div id="collapseTwo3" class="collapse" role="tabpanel" aria-labelledby="headingTwo3"
                data-parent="#accordionEx">
                <div class="card-body p-3 mb-2 bg-secondary text-white">



                    <asp:UpdatePanel ID="updatePanel3" runat="server" UpdateMode="Conditional">
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
                                    <div class="col-sm-2">
                                    </div>
                                    <label for="ItemCode" class="col-sm-2 col-form-label">Item Code :</label>
                                    <div class="col-sm-2">
                                        <asp:TextBox ID="txtTransID" runat="server" Visible="false" TextMode="SingleLine" CssClass="form-control "></asp:TextBox>
                                        <asp:TextBox ID="txtBaseCode" runat="server" Visible="false" TextMode="SingleLine" CssClass="form-control "></asp:TextBox>
                                        <asp:TextBox ID="txtItemCode" runat="server" ReadOnly="true" TextMode="SingleLine" CssClass="form-control p-3 mb-2 bg-secondary text-white "></asp:TextBox>
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
                                    <div class="col-sm-2">
                                    </div>
                                    <label for="ItemAmount" class="col-sm-2 col-form-label">Sent Amount :</label>
                                    <div class="col-sm-2">
                                        <asp:TextBox ID="txtSentAmount" runat="server" ReadOnly="true" TextMode="SingleLine" CssClass="form-control p-3 mb-2 bg-secondary text-white"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="SysCode" class="col-sm-2 col-form-label">Official No</label>
                                    <div class="col-sm-2">
                                        <asp:TextBox ID="txtOfficialNo" runat="server" MaxLength="6" TextMode="Number" CssClass="form-control "></asp:TextBox>
                                    </div>
                                    <div class="col-sm-1">
                                        <asp:Button ID="btnSearchOfficer" runat="server" Text="Search" CssClass="btn btn-primary " OnClick="btnSearchOfficer_Click" />
                                    </div>
                                     <div class="col-sm-1">
                                        <asp:Button ID="BtnDuplicates" runat="server" Text="Duplicates" CssClass="btn btn-primary " OnClick="btnDuplicates_Click" />
                                    </div>
                                    <label for="amt" class="col-sm-2 col-form-label">Changed Amount</label>
                                    <div class="col-sm-2">

                                        <asp:TextBox ID="txtAmount" runat="server" MaxLength="8" CssClass="form-control text-primary" Style="text-align: right"></asp:TextBox>

                                    </div>

                                </div>
                                <div class="form-group row">
                                    <label for="SysCode" class="col-sm-2 col-form-label">Edit Reason</label>
                                    <div class="col-sm-8">

                                        <asp:TextBox ID="txtReason" runat="server" MaxLength="150" CssClass="form-control text-primary" Style="text-align: left"></asp:TextBox>

                                    </div>
                                    <div class="col-sm-2">
                                        <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn btn-primary " OnClick="btnUpdate_Click" />

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


                                <div class="form-group row">


                                    <asp:GridView ID="GridView1" runat="server" class="table table-dark table-striped" Width="1285px" OnRowCommand="GridView1_RowCommand">


                                        <Columns>
                                            <asp:ButtonField ButtonType="Button" ControlStyle-CssClass="btn btn-success" CommandName="Check" HeaderText="Edit" ShowHeader="True" Text="Edit" />
                                        </Columns>

                                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />

                                    </asp:GridView>

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
                    aria-expanded="true" aria-controls="collapseTwo4">
                    <h5 class="mb-0">Payroll Jobs  <i class="fas fa-angle-double-right  rotate-icon"></i>
                    </h5>
                </a>
            </div>

            <div id="collapseTwo4" class="collapse" role="tabpanel" aria-labelledby="headingTwo4"
                data-parent="#accordionEx">
                <div class="card-body p-3 mb-2 bg-secondary text-white">



                    <%--    <asp:UpdatePanel ID="updatePanel5" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>--%>


                    <fieldset>


                        <div class="form-group row">
                            <label for="Sysf" class="col-sm-2 col-form-label">System Freeze/Unfreeze :</label>

                            <div class="col-sm-2">
                                <asp:Button ID="btnFreeze" runat="server" Text="Freeze" CssClass="btn btn-primary " OnClick="btnFreeze_Click" />

                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="Sysf" class="col-sm-2 col-form-label">XML Download :</label>
                            <label for="SysCode" class="col-sm-2 col-form-label">SysCode</label>
                            <div class="col-sm-2">
                                <select class="form-control" id="cmbSysCodeXml" runat="server">
                                    <option>RNF</option>
                                    <option>VNF</option>

                                </select>
                            </div>
                            <div class="col-sm-2">
                                <asp:Button ID="btnDownLoad" runat="server" Text="XML DownLoad" CssClass="btn btn-primary " OnClick="btnDownLoad_Click" />
                            </div>
                            <div class="col-sm-2">
                                <asp:Label ID="LabelMessage" runat="server" Text="" />
                            </div>

                        </div>


                        <div class="form-group row ">

                            <label for="Sysf" class="col-sm-2 col-form-label">Type:</label>
                            <asp:UpdatePanel ID="updatePanel5" runat="server" UpdateMode="Conditional">
                                <ContentTemplate>
                                    <div class="col-sm-2">
                                        <asp:DropDownList ID="cmbType" runat="server" CssClass="form-control " AutoPostBack="true" Width="150px">
                                            <asp:ListItem Value="0">Select Type</asp:ListItem>
                                            <asp:ListItem Value="1">Unprocess</asp:ListItem>
                                            <asp:ListItem Value="2">Minus Pay</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                            <div class="col-4">
                                <asp:FileUpload ID="FileUpload1" runat="server" class="form-control " />
                            </div>
                            <div class="col-2">
                                <asp:Button ID="Button1" runat="server" Text="Process Unprocess/Minus Pay" OnClick="Unprocess_Click" class="btn btn-primary" CausesValidation="False" />
                            </div>
                        </div>

                        <div class="form-group row ">
                            <label for="Sysf" class="col-sm-2 col-form-label">Month End :</label>

                            <div class="col-sm-2">
                                <asp:Button ID="btnMonthEnd" runat="server" Text="Month End" CssClass="btn btn-primary " OnClick="btnMonthEnd_Click1" />
                            </div>

                        </div>



                    </fieldset>



                    <%--    </ContentTemplate>
                    </asp:UpdatePanel>--%>
                </div>
            </div>
        </div>
          <div class="card">

            <!-- Card header -->
            <div class="card-header" role="tab" id="headingTwo2">
                <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx" href="#collapselist23"
                    aria-expanded="true" aria-controls="collapseTwo23">
                    <h5 class="mb-0">All PayMonth Transactions<i class="fas fa-angle-double-right  rotate-icon"></i>
                    </h5>
                </a>
            </div>

            <!-- Card body -->
            <div id="collapselist23" class="collapse" role="tabpanel" aria-labelledby="headingTwo2"
                data-parent="#accordionEx">
                <div class="card-body p-3 mb-2 bg-secondary text-white">
                    <asp:UpdatePanel ID="updatePanel7" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>                         
                       
                            <fieldset>
                                <div class="form-group row">

                                    <asp:GridView ID="GVAllTRans" runat="server" class="table table-dark table-striped">


                                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />

                                    </asp:GridView>
                                </div>
                            </fieldset>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <div class="col-2">
                        <asp:Button ID="BtnAllTransDownload" runat="server" Text="DownLoad" class="btn btn-primary" OnClick="btnAllTransDownLoad_Click" />
                    </div>

                </div>
            </div>
        </div>
    </div>
    <br />
    <br />
    <div class="form-group row">
        <asp:UpdatePanel ID="updatePanel4" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <asp:GridView ID="GvSubjectItems" runat="server" class="table table-dark table-striped" Width="1285px">


                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />

                </asp:GridView>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>



