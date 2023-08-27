<%@ Page Title="Area Commander" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="RecommendExtraDuty.aspx.cs" Inherits="ERecs.RecommendExtraDuty" %>

<asp:Content ID="Main" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <h5>Extra Duty Allowance - Approve ...</h5>

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

                                    <asp:GridView ID="GvTransPending" runat="server"  class="table table-dark table-striped table-sm"  OnRowCommand="GvTransPending_RowCommand">
                                        <Columns>
                                            <asp:ButtonField ButtonType="Button" CommandName="Select" ControlStyle-CssClass="btn btn-default" HeaderText="Select" ShowHeader="True" Text="Select" />
                                        </Columns>
                                       
                                        <Columns>
                                            <asp:ButtonField ButtonType="Button" ControlStyle-CssClass="btn btn-success" CommandName="Approve" HeaderText="Approve" ShowHeader="True" Text="Approve" />
                                        </Columns>
                                     <Columns>
                                            <asp:ButtonField ButtonType="Button" ControlStyle-CssClass="btn btn-danger" CommandName="Reject" HeaderText="Reject" ShowHeader="True" Text="Reject" />
                                        </Columns>
                                        <Columns>
                                            <asp:TemplateField HeaderText="Reject Reason">
                                                <ItemTemplate>
                                                    <asp:TextBox ID="Reason" runat="server" Width="250px" Font-Size="Small"></asp:TextBox>
                                                </ItemTemplate>
                                            </asp:TemplateField>
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
        <div class="card">

            <!-- Card header -->
            <div class="card-header" role="tab" id="headingTwo3">
                <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx" href="#collapseTwo3"
                    aria-expanded="true" aria-controls="collapseTwo2">
                    <h5 class="mb-0">Rejected List  <i class="fas fa-angle-double-right  rotate-icon"></i>
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

                                    <asp:GridView ID="GVTransRejected" runat="server"  class="table table-dark table-striped" Width="1105px" OnRowCommand="GVTransRejected_RowCommand">
                                        <Columns>
                                            <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="Select" ShowHeader="True" Text="Select" />
                                        </Columns>
                                    <Columns>
                                            <asp:ButtonField ButtonType="Button" ControlStyle-CssClass="btn btn-success" CommandName="EditMode" HeaderText="EditMode" ShowHeader="True" Text="EditMode" />
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



