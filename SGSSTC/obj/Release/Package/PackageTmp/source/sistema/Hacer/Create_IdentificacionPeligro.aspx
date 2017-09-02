﻿<%@ Page Language="C#" MasterPageFile="~/source/MasterPages/Menu.Master" AutoEventWireup="true" CodeBehind="Create_IdentificacionPeligro.aspx.cs" Inherits="SGSSTC.source.sistema.Hacer.Create_IdentificacionPeligro" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, 
	PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<%@ Register Src="~/source/WebUserControl/ucMsjModal.ascx" TagPrefix="ucm" TagName="ucMsjModal" %>
<%@ Register Src="~/source/WebUserControl/pagination.ascx" TagPrefix="ucpag" TagName="pagination" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:updatepanel id="MyUpdatePanel" runat="server">
        <ContentTemplate>


                
                <ol class="breadcrumb">
                    <li><a href="#">Fase: Hacer</a></li>
                    <li><a href="../Hacer/index_IdentificacionPeligros.aspx">Identificación de Peligros</a></li>
                    <li><a href="#">Crear Identificacion de Peligro</a></li>
                </ol>

                <div class="page-header">
                    <h1 class="text-center">Nueva Identificacion de Peligro</h1>
                </div>
                    
                    <div class="row">
                        <asp:PlaceHolder runat="server" id="phEmpresa">
                            <div class="col-md-4">
                                <h4>Empresa</h4>
                                <asp:DropDownList runat="server" id="ddlEmpresa" data-toggle="tooltip" data-placement="bottom" title="Seleccione una Empresa" CssClass="form-control" 
                                    AutoPostBack="true" OnSelectedIndexChanged="ddlEmpresa_SelectedIndexChanged"></asp:DropDownList>
                                <asp:RequiredFieldValidator ErrorMessage="<p>Campo Obligatorio!</p>" setfocusonerror="true" 
                                    Display="Dynamic" ForeColor="#B50128" Font-Size="10"Font-Bold="true" 
                                    ControlToValidate="ddlEmpresa" runat="server" ValidationGroup="ValidationAdd"/>
                            </div>
                        </asp:PlaceHolder> 

                        <asp:PlaceHolder runat="server" id="phSucursal">
                            <div class="col-md-4">
                                <h4>Sucursal</h4>
                                <asp:DropDownList runat="server" id="ddlSucursal" data-toggle="tooltip" data-placement="bottom" title="Seleccione una Sucursal" CssClass="form-control" AutoPostBack="true"
                                    OnSelectedIndexChanged="ddlSucursal_SelectedIndexChanged"></asp:DropDownList>

                                <asp:RequiredFieldValidator ErrorMessage="<p>Campo Obligatorio!</p>" setfocusonerror="true" 
                                    Display="Dynamic" ForeColor="#B50128" Font-Size="10" Font-Bold="true" 
                                    ControlToValidate="ddlSucursal" runat="server" ValidationGroup="ValidationAdd"/>
                            </div>
                        </asp:PlaceHolder>

                        <div class="col-md-4">
                            <h4>Puesto de Trabajo</h4>
                            <asp:dropdownlist runat="server" id="ddlPuestos" CssClass="form-control"></asp:dropdownlist>
                            <asp:RequiredFieldValidator ErrorMessage="<p>Campo Obligatorio!</p>" 
                                setfocusonerror="true" Display="Dynamic" ForeColor="#B50128" Font-Size="10"
                                Font-Bold="true" ControlToValidate="ddlPuestos" runat="server" 
                                ValidationGroup="ValidationAddPuesto"/>
                        </div>
                        
                        <div class="col-md-3"> 
                            <h4>Añadir Puesto de Trabajo</h4>
                            <asp:Button runat="server" Text="Añadir" class="btn btn-block btn-primary" OnClick="AddPuesto_Click" 
                                ValidationGroup="ValidationAddPuesto"></asp:Button>
                        </div>
                    </div>
                    <br />

                    <!-- titulo puestos-->
                    <div class="row">
                        <div class="col-md-12">
                            <h3 class="text-left">Puestos de Trabajo Afectados</h3>
                            <asp:textbox id="txtPuestos" runat="server" MaxLength="1000" TextMode="multiline" Rows="5" 
                                class="form-control" readonly ="true" style="word-wrap: break-word;"></asp:textbox>
                            
                            <asp:RequiredFieldValidator ErrorMessage="<p>Campo Obligatorio!</p>" setfocusonerror="true" 
                                Display="Dynamic" ForeColor="#B50128" Font-Size="10" Font-Bold="true" 
                                ControlToValidate="txtPuestos" runat="server" ValidationGroup="ValidationAdd"/>
                        </div>
                        <br />
                        <div class="col-md-3"> 
                            <asp:Button runat="server" id="Button3" Text="Resetear Valores" class="btn btn-block btn-success" 
                                OnClick="btnResetPuestos_Click"></asp:Button>
                        </div>

                    </div>

                    <!-- titulo Riesgos-->
                    <div class="row">
                        <div class="col-md-12">
                            <h3 class="text-left">Peligros</h3>
                            <asp:textbox id="txtPeligros" runat="server" MaxLength="1000" TextMode="multiline" Rows="5" 
                                class="form-control" readonly ="true" style="word-wrap: break-word;"></asp:textbox>
                            
                            <asp:RequiredFieldValidator ErrorMessage="<p>Campo Obligatorio!</p>" setfocusonerror="true" 
                                Display="Dynamic" ForeColor="#B50128" Font-Size="10" Font-Bold="true" 
                                ControlToValidate="txtPeligros" runat="server" ValidationGroup="ValidationAdd"/>
                        </div>
                        <br />
                        <div class="col-md-3"> 
                            <asp:Button runat="server" id="btnReset" Text="Resetear Valores" class="btn btn-block btn-success" 
                                OnClick="btnReset_Click"></asp:Button>
                        </div>

                    </div>

                    <div class="row">
                        <div class="col-md-3">
                            <h4 class="text3info text-left">Tipo de Riesgo</h4>
                        </div>             
                        <div class="col-md-3">
                            <h4 class="text3info text-left">Factor de Riesgo</h4>
                        </div>             
                        <div class="col-md-3">
                            <h4 class="text3info text-left">Efectos Posibles</h4>
                        </div>             
                        <div class="col-md-3">
                            <h4>Tiempo de Exposición</h4>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-md-3">
                            <asp:DropDownList runat="server" id="ddlTipoRiesgo1" CssClass="form-control" AutoPostBack="true" 
                                OnSelectedIndexChanged="ddlTipoRiesgo_SelectedIndexChanged"></asp:DropDownList>

                            <asp:RequiredFieldValidator ErrorMessage="<p>Campo Obligatorio!</p>" setfocusonerror="true" 
                                Display="Dynamic" ForeColor="#B50128" Font-Size="10" Font-Bold="true" 
                                ControlToValidate="ddlTipoRiesgo1" runat="server" 
                                    ValidationGroup="ValidationAddPeligro"/>
                        </div>
                        <div class="col-md-3">
                            <asp:DropDownList runat="server" id="ddlFactorRiesgo1" CssClass="form-control"></asp:DropDownList>

                            <asp:RequiredFieldValidator ErrorMessage="<p>Campo Obligatorio!</p>" setfocusonerror="true" 
                                Display="Dynamic" ForeColor="#B50128" Font-Size="10" Font-Bold="true" 
                                ControlToValidate="ddlFactorRiesgo1" runat="server" ValidationGroup="ValidationAddPeligro"/>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox runat="server" MaxLength="1000" id="txtconsecuencias1" CssClass="form-control"></asp:TextBox>
                            
                            <asp:RequiredFieldValidator ErrorMessage="<p>Campo Obligatorio!</p>" setfocusonerror="true" 
                                Display="Dynamic" ForeColor="#B50128" Font-Size="10" Font-Bold="true" 
                                ControlToValidate="txtconsecuencias1" runat="server" ValidationGroup="ValidationAddPeligro"/>
                        </div>
                        <div class="col-md-3">
                            <asp:TextBox runat="server" id="txtTiempoExposicion" CssClass="form-control"></asp:TextBox>
                            
                            <asp:RequiredFieldValidator ErrorMessage="<p>Campo Obligatorio!</p>" setfocusonerror="true" 
                                Display="Dynamic" ForeColor="#B50128" Font-Size="10" Font-Bold="true" runat="server"
                                ControlToValidate="txtTiempoExposicion" ValidationGroup="ValidationAddPeligro"/>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-2"> 
                            <asp:Button runat="server" id="Button1" Text="Añadir Peligro" class="btn btn-block btn-primary" 
                                OnClick="AddPeligro_Click" ValidationGroup="ValidationAddPeligro"></asp:Button>
                        </div>
                    </div>
                    <br />

                    
                    <div class="row">
                        <div class="col-md-12">
                            <h3 class="text-left">Medidas de control existentes:</h3>
                            <asp:textbox id="txtMedidas" runat="server" MaxLength="1000" TextMode="multiline" Rows="5" 
                                class="form-control" style="word-wrap: break-word;"></asp:textbox>
                            
                            <asp:RequiredFieldValidator ErrorMessage="<p>Campo Obligatorio!</p>" setfocusonerror="true" 
                                Display="Dynamic" ForeColor="#B50128" Font-Size="10" Font-Bold="true" 
                                ControlToValidate="txtMedidas" runat="server" ValidationGroup="ValidationAdd"/>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-12">
                            <h3 class="text-left">Observaciones:</h3>
                            <asp:textbox id="txtObservaciones" runat="server" MaxLength="1000" TextMode="multiline" Rows="5" 
                                class="form-control" style="word-wrap: break-word;"></asp:textbox>
                            
                            <asp:RequiredFieldValidator ErrorMessage="<p>Campo Obligatorio!</p>" setfocusonerror="true" 
                                Display="Dynamic" ForeColor="#B50128" Font-Size="10" Font-Bold="true" 
                                ControlToValidate="txtObservaciones" runat="server" ValidationGroup="ValidationAdd"/>
                        </div>
                    </div>
                
                <br />
                
                <!-- Boton-->
                <div class="row">
                    <div class="col-md-2 col-md-offset-4">
                        <asp:Button id="btPrintSave" runat="server" Text="Guardar" class="btn btn-block btn-info" 
                            OnClick="btPrintSave_Click" ValidationGroup="ValidationAdd"/>
                    </div>
                </div>
                
                <br />


        </ContentTemplate>
    </asp:updatepanel>
</asp:Content>