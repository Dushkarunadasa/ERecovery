<%@ Page Title="ExtraDuty" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="ExtraDutyHistory.aspx.cs" Inherits="ERecs.ExtraDutyHistory" %>

<asp:Content ID="Main" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>



    <h5>Extra Duty Allowances History ...</h5>
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
            <div class="card-header" role="tab" id="headingTwo2">
                <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx" href="#collapseTwo2"
                    aria-expanded="true" aria-controls="collapseTwo2">
                    <h5 class="mb-0">Processed Allowances...  <i class="fas fa-angle-double-right  rotate-icon"></i>
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

                                    <asp:GridView ID="GVTransConfirmed" runat="server"  class="table table-dark table-striped" Width="1105px" OnRowCommand="GVTransConfirmed_RowCommand">
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
   
    </div>
    <br />
    <br />
    <div class="form-group row">
        <asp:UpdatePanel ID="updatePanel4" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <asp:GridView ID="GvSubjectItems" runat="server"  class="table table-dark table-striped" Width="1285px">

                    
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                
                </asp:GridView>
                <br />
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>



