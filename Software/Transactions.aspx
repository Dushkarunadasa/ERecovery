<%@ Page Title="Forward" EnableEventValidation="false"  Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="Transactions.aspx.cs" Inherits="ERecs.Transactions" %>

<asp:Content ID="Main" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="True"></asp:ScriptManager>
    <h5>Recovery/Allowances...</h5>
    <div class="form-group row">
        <label for="SysCode" class="col-sm-2 col-form-label">
            Subject
        </label>
        <div class="col-sm-5">
            <asp:DropDownList ID="cmbSubject" runat="server" CssClass="form-control " AutoPostBack="true" OnSelectedIndexChanged="cmbSubject_SelectedIndexChanged">
            </asp:DropDownList>
        </div>
        <asp:Label ID="lblSubCode" class="col-sm-2 col-form-label" runat="server" Text=""></asp:Label>

    </div>

    <div class="row form-group ">
        <label for="SysCode" class="col-sm-2 col-form-label">
            Pay-Month
        </label>
        <div class="col-sm-2">
            <asp:DropDownList ID="ddlPayMonths" runat="server" Width="200" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlPayMonths_SelectedIndexChanged">
            </asp:DropDownList>
        </div>

    </div>
    <div class="accordion md-accordion" id="accordionEx" role="tablist" aria-multiselectable="true">



        <div class="card">

            <!-- Card header -->
            <div class="card-header" role="tab" id="headingOne1">
                <a data-toggle="collapse" data-parent="#accordionEx" href="#collapseOne1" aria-expanded="false"
                    aria-controls="collapseOne1">
                    <h5 class="mb-0 ">Confirmed Recovery Lists <i class="fas fa-angle-double-right  rotate-icon"></i>
                    </h5>
                </a>
            </div>

            <div id="collapseOne1" class="collapse show" role="tabpanel" aria-labelledby="headingOne1"
                data-parent="#accordionEx">
                <div class="card-body p-3 mb-2 bg-secondary text-white">



                    <%--     <asp:UpdatePanel ID="updatePanel2" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>--%>
                    <fieldset>
                        <div class="form-group row">

                            <asp:GridView ID="GVTransConfirmed" AutoPostBack="true" class="table table-dark table-striped" runat="server" Width="1105px" OnRowCommand="GVTransConfirmed_RowCommand">
                                <Columns>
                                    <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="Select" ShowHeader="True" Text="Select" />
                                    <asp:ButtonField ButtonType="Button" CommandName="Download" HeaderText="Download" ShowHeader="True" Text="Download" />
                                </Columns>

                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />

                            </asp:GridView>
                        </div>
                    </fieldset>
                    <%--     </ContentTemplate>
                    </asp:UpdatePanel>--%>
                </div>
            </div>
        </div>

    </div>
    <br />

    <div class="form-group row">
        <asp:UpdatePanel ID="updatePanel4" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <asp:GridView ID="GvSubjectItems" runat="server" class="table table-dark table-striped" Width="1285px">

                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />

                </asp:GridView>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    <div class="form-group row">
        <div class="col-2 ">
            <asp:Button ID="BtnGrid_to_Excel" runat="server" Text="Grid To Excel" class="btn btn-primary" OnClick="BtnGrid_to_Excel_Click" />
        </div>
    </div>
</asp:Content>



