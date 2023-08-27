<%@ Page Title="User Role" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="UserRole.aspx.cs" Inherits="ERecs.UserRole" %>


<asp:Content ID="Main" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="container my-4">



        <p class="font-weight-bold">Application Settings</p>

        <!--Accordion wrapper-->
        <div class="accordion md-accordion" id="accordionEx" role="tablist" aria-multiselectable="true">

            <!-- Accordion card -->
            <div class="card">

                <!-- Card header -->
                <div class="card-header" role="tab" id="headingOne1">
                    <a data-toggle="collapse" data-parent="#accordionEx" href="#collapseOne1" aria-expanded="true"
                        aria-controls="collapseOne1">
                        <h5 class="mb-0">User Role <i class="fas fa-angle-double-right  rotate-icon"></i>
                        </h5>
                    </a>
                </div>

                <!-- Card body -->
                <div id="collapseOne1" class="collapse show" role="tabpanel" aria-labelledby="headingOne1"
                    data-parent="#accordionEx">
                    <div class="card-body">
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
                                <div class="col-sm-4">


                                    <asp:Button ID="btnSearchOfficer" runat="server" OnClick="btnSearchOfficer_Click1" Text="Search" CssClass="btn btn-primary " />


                                </div>
                            </div>
                            <div class="alert alert-dismissible alert-warning">

                                <div class="form-group row">
                                    <label for="UserRole" class="col-sm-2 col-form-label">User Role</label>
                                    <div class="col-sm-4">

                                        <asp:DropDownList ID="cmbUserRole" runat="server" CssClass="form-control " AutoPostBack="True">
                                             <asp:ListItem>DDN(Pay)</asp:ListItem>
                                             <asp:ListItem>SO(PSD)</asp:ListItem>
                                            <asp:ListItem>SubjectClerk</asp:ListItem>
                                        </asp:DropDownList>

                                    </div>




                                </div>
                                <div class="form-group row">
                                    <label for="SysCode" class="col-sm-2 col-form-label">Rank</label>
                                    <div class="col-sm-3">
                                        <asp:TextBox ID="TxtRank" runat="server" ReadOnly="true" class="form-control"></asp:TextBox>

                                    </div>
                                    <label for="SysCode" class="col-sm-2 col-form-label">Name With Initial</label>
                                    <div class="col-sm-5">

                                        <asp:TextBox ID="txtName_with_initial" runat="server" ReadOnly="true" class="form-control" placeholder="Name With Initial"></asp:TextBox>

                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="Appointment" class="col-sm-2 col-form-label">Appintment</label>
                                    <div class="col-sm-7">
                                        <asp:TextBox ID="txtAppointment" runat="server" ReadOnly="true" class="form-control"></asp:TextBox>


                                    </div>

                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-2"></div>
                                    <div class="col-sm-3">
                                        <asp:CheckBox ID="chkActive" runat="server" CssClass="custom-control custom-checkbox" Text=".   Active User" />
                                    </div>

                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-2 ">
                                    <asp:Label ID="lblinfoRole" runat="server"  Text="Label" Visible="False" ForeColor ="Red" ></asp:Label>
                                </div>
                                <div style="text-align: center;">


                                    <asp:Button ID="btnRoleSave" runat="server" OnClick="btnRoleSave_Click" Text="Save" CssClass="btn btn-primary " />


                                    <asp:Button ID="btnRoleClear" runat="server" OnClick="btnRoleClear_Click" Text="Clear" CssClass="btn btn-primary " />


                                </div>

                            </div>
                        </fieldset>
                    </div>
                </div>

            </div>
            <!-- Accordion card -->

            <!-- Accordion card -->
            <div class="card">

                <!-- Card header -->
                <div class="card-header" role="tab" id="headingTwo2">
                    <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx" href="#collapseTwo2"
                        aria-expanded="false" aria-controls="collapseTwo2">
                        <h5 class="mb-0">Sujects <i class="fas fa-angle-double-right  rotate-icon"></i>
                        </h5>
                    </a>
                </div>

                <!-- Card body -->
                <div id="collapseTwo2" class="collapse" role="tabpanel" aria-labelledby="headingTwo2"
                    data-parent="#accordionEx">
                    <div class="card-body">
                        <asp:UpdatePanel ID="updatePanel1" runat="server" UpdateMode="Conditional">
                            <ContentTemplate>
                                <div class="form-group row">
                                    <label for="SysCode" class="col-sm-2 col-form-label">Subject Id</label>
                                    <div class="col-sm-3">

                                        <asp:DropDownList ID="DdlSubjects" runat="server" CssClass="form-control " AutoPostBack="true" OnSelectedIndexChanged="DdlSubjects_SelectedIndexChanged">
                                        </asp:DropDownList>
                                    </div>


                                </div>
                                <div class="form-group row">
                                    <label for="BaseCode" class="col-sm-2 col-form-label">Relevant Base</label>
                                    <div class="col-sm-3">

                                        <asp:DropDownList ID="CmbBase" runat="server" CssClass="form-control " AutoPostBack="true">
                                        </asp:DropDownList>
                                    </div>


                                </div>
                                <div class="form-group row">
                                    <label for="ItemCode" class="col-sm-2 col-form-label">Item Code</label>
                                    <div class="col-sm-1">
                                        <asp:TextBox ID="txtItemCode" MaxLength="5" runat="server" class="form-control"></asp:TextBox>

                                    </div>
                                    <div class="col-sm-2">
                                        <asp:Button ID="BtnItemSearch" runat="server" Text="Search" CssClass="btn btn-primary " OnClick="BtnItemSearch_Click" AutoPostBack="false" />


                                    </div>
                                    <asp:Label ID="lblItemName" runat="server" Text="Item Name" class="col-sm-7 col-form-label"></asp:Label>


                                </div>

                                <div class="form-group row">

                                    <div style="text-align: center;">
                                        <asp:Button ID="BtnItemAdd" runat="server" Text="Add Items" CssClass="btn btn-primary " OnClick="BtnItemAdd_Click" />
                                        <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-primary " OnClick="btnSave_Click" />

                                        <asp:Button ID="BtnItemsClear" runat="server" Text="Clear" CssClass="btn btn-primary " OnClick="BtnItemsClear_Click" />


                                    </div>

                                </div>
                                <div class="form-group row">

                                    <asp:Label ID="lblmsg" runat="server" Text="Label" ForeColor ="Red" ></asp:Label>
                                </div>
                                <div class="form-group-body">



                                    <asp:GridView ID="GvSubjectItems" runat="server" Height="67px" Width="1285px"
                                        OnRowCommand="GVInbox_RowCommand"
                                        BackColor="White"
                                        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" OnRowDeleting="GvSubjectItems_RowDeleting">
                                        <Columns>
                                            <asp:ButtonField ButtonType="Button" CommandName="Delete" HeaderText="Delete" ShowHeader="True" Text="Delete" />
                                        </Columns>
                                        <FooterStyle BackColor="White" ForeColor="#000066" />
                                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                        <RowStyle ForeColor="#000066" />
                                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                                    </asp:GridView>




                                </div>

                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>

            </div>

        </div>
        <!-- Accordion wrapper -->

    </div>
</asp:Content>

