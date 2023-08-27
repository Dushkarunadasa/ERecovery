<%@ Page Title="ExtraDuty" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="ExtraSubjectCleark.aspx.cs" Inherits="ERecs.ExtraSubjectCleark" %>

<asp:Content ID="Main" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <h5>Recovery/Allowances - Approve...</h5>

    <div class="accordion md-accordion" id="accordionEx" role="tablist" aria-multiselectable="true">



        <div class="card">

            <!-- Card header -->
            <div class="card-header" role="tab" id="headingTwo4">
                <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx" href="#collapseTwo4"
                    aria-expanded="true" aria-controls="collapseTwo2">
                    <h5 class="mb-0">Edit Grade Rates <i class="fas fa-angle-double-right  rotate-icon"></i>
                    </h5>
                </a>
            </div>

            <div id="collapseTwo4" class="collapse" role="tabpanel" aria-labelledby="headingTwo4"
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
                                    <div class="col-sm-2">
                                    </div>
                                    <label for="Grade" class="col-sm-2 col-form-label">Grade :</label>
                                    <div class="col-sm-2">
                                        <select class="form-control" id="cmbGrade" runat="server">                                  
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="SysCode" class="col-sm-2 col-form-label">CatCode</label>
                                    <div class="col-sm-2">
                                        <select class="form-control" id="cmbCatCode" runat="server">
                                            <option>O</option>
                                           

                                        </select>
                                    </div>
                                    <div class="col-sm-2">
                                    </div>
                                    <label for="EffectDt" class="col-sm-2 col-form-label">Effect Date :</label>
                                    <div class="col-sm-2">
                                        <asp:TextBox ID="txtEffectDt" runat="server"  TextMode="Date" CssClass="form-control "></asp:TextBox>
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
                                </div>
                                <div class="form-group row">                                   
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


                                    <asp:GridView ID="GVGradeDetails" runat="server" class="table table-dark table-striped" Width="1285px" >
                                                                                                               

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
                    <h5 class="mb-0">DDN Approved  <i class="fas fa-angle-double-right  rotate-icon"></i>
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
            <div class="card-header" role="tab" id="headingTwo3">
                <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx" href="#collapseTwo3"
                    aria-expanded="true" aria-controls="collapseTwo2">
                    <h5 class="mb-0">DDN Rejected List  <i class="fas fa-angle-double-right  rotate-icon"></i>
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

                                    <asp:GridView ID="GVTransRejected" runat="server" class="table table-dark table-striped" Width="1105px" OnRowCommand="GVTransRejected_RowCommand">
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
                    <h5 class="mb-0">All Transactions<i class="fas fa-angle-double-right  rotate-icon"></i>
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
                                <div class="col-2 ">
                                    <asp:Button ID="btnLoadArrearsFormat" runat="server" Text="Load in Arrears format" class="btn btn-primary" OnClick="btnLoadArrearsFormat_Click" />
                                </div>

                            </div>
                            <fieldset>
                                <div class="form-group row">

                                    <asp:GridView ID="dgMonthList" runat="server" class="table table-dark table-striped">


                                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />

                                    </asp:GridView>
                                </div>
                            </fieldset>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <div class="col-2">
                        <asp:Button ID="btnDownLoad" runat="server" Text="DownLoad" class="btn btn-primary" OnClick="btnDownLoad_Click" />
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


                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />

                </asp:GridView>
                <br />
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>



