﻿<%@ Page Language="C#" MasterPageFile="~/source/MasterPages/Menu.Master" AutoEventWireup="true" CodeBehind="index_ComunicacionPoliticaSST.aspx.cs" Inherits="SGSSTC.source.sistema.Hacer.index_ComunicacionPoliticaSST" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"></asp:Content><%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %><%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %><%@ Register Src="~/source/WebUserControl/ucMsjModal.ascx" TagPrefix="ucm" TagName="ucMsjModal" %><%@ Register Src="~/source/WebUserControl/pagination.ascx" TagPrefix="ucpag" TagName="pagination" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    

    <asp:updatepanel id="updatePanelPrinicpal" runat="server">
        <ContentTemplate>
            
            
            <ol class="breadcrumb">
                <li><a href="#">Fase: Hacer</a></li>
                <li><a href="#">Comunicado de Politica SST</a></li>
            </ol>
            
            <div class="page-header">
                <h1 class="text-center">Comunicado de Politica SST</h1>
            </div>  
            
            <div class="row">
                <div class="col-md-6 col-md-offset-2">
                    <asp:TextBox id="txtSearch" data-toggle="tooltip" data-placement="bottom" title="Ingrese Texto a Buscar" runat="server" class="form-control" PlaceHolder="Ingrese el comunicado a buscar"></asp:TextBox>
                </div>
                  
                <div class="col-md-2">
                    <asp:Button id="btnSearch" data-toggle="tooltip" data-placement="bottom" title="Presione para Buscar" runat="server" Text="Buscar" CssClass="btn btn-info" OnClick="BuscarRegistro"/>
                </div>
            </div>
			<br />

            <div class="row">
                <asp:PlaceHolder runat="server" id="phSucursal" Visible="false">
                    <div class="col-md-4 col-md-offset-2">
                        <h4 class="text-center">Sucursal</h4>
                        <asp:DropDownList runat="server" id="ddlSucursal" data-toggle="tooltip" data-placement="bottom" title="Seleccione una Sucursal" class="form-control" AutoPostBack="true" 
                            OnSelectedIndexChanged="ddlSucursal_SelectedIndexChanged"></asp:DropDownList>
                    </div>
                </asp:PlaceHolder>
                
                <div class="col-md-4">
                    <h4 class="text-center">Trabajador</h4>
                    <asp:DropDownList runat="server" id="ddlTrabajador" class="form-control" AutoPostBack="true" 
                        OnSelectedIndexChanged="ddlTrabajador_SelectedIndexChanged"></asp:DropDownList>
                </div>
            </div>
            
            <div class="row">
                <div class="box-body">
                    <div class="dataTables_wrapper form-inline dt-bootstrap">
                        <ucpag:pagination runat="server" id="pagination"/>
                        <asp:GridView 
                            id="GridView1" 
                            class="table table-bordered table-hover dataTable"
                            runat="server"
                            AutoGenerateColumns="false" 
                            AllowPaging="true"
                            PageSize="10" 
                            OnRowCommand="GridView1_RowCommand" 
                            onpageindexchanging="GridView1_PageIndexChanging"
                            EmptyDataText="No existen Registros">
                            <rowstyle  HorizontalAlign="Center"/>
                            
                            <Columns>
                                <asp:TemplateField visible="false">
                                    <ItemTemplate>
                                        <asp:Label id="id_comunicado" runat="server" Text='<%# Eval("id_comunicado") %>'/>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                
                                <asp:TemplateField HeaderText="Nombre" HeaderStyle-CssClass="text-center">
                                    <ItemTemplate>
                                        <asp:Label id="nombre" runat="server" Text='<%# Eval("nombre") %>'/>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                
                                <asp:TemplateField HeaderText="Trabajador" HeaderStyle-CssClass="text-center">
                                    <ItemTemplate>
                                        <asp:Label id="NomTrabajador" runat="server" Text='<%# Eval("NomTrabajador") %>'/>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                
                                <asp:TemplateField HeaderText="Sucursal" HeaderStyle-CssClass="text-center">
                                    <ItemTemplate>
                                        <asp:Label id="sucursal" runat="server" Text='<%# Eval("sucursal") %>'/>
                                    </ItemTemplate>
                                </asp:TemplateField> 

                                <asp:TemplateField HeaderText="Consultar" HeaderStyle-CssClass="text-center">
                                    <ItemTemplate>
                                        <asp:HyperLink runat="server" ImageUrl="~\ico\view.png" NavigateUrl='<%# Eval("ruta") %>' Target="_blank">Descargar</asp:HyperLink>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                                    
                                <asp:ButtonField HeaderText="Eliminar" HeaderStyle-CssClass="text-center" CommandName="Eliminar" ButtonType="Image" ImageUrl="~\ico\delete.png">
                                    <ControlStyle></ControlStyle>
                                </asp:ButtonField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div><br />

            <div class="row" align="center">
                <div class="col-md-4 col-md-offset-4">
                        <asp:ImageButton alt="-" id="btnComunicado" runat="server" ImageUrl="~\ico\agregar.png"
                            OnClick="btnComunicado_Onclick"/>
                        <h4>Crear Comunicado</h4>
                </div>

            </div>

        </ContentTemplate>
        <Triggers></Triggers>
    </asp:updatepanel>

    <!-- IndexAddModal -->
    <div id="IndexAddModal" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">Cerrar</button>
                    <h3>Agregar Gestion Laboral</h3>
                </div>
                <asp:updatepanel runat="server">
                        <ContentTemplate>
                            <div class="modal-body form-group">
                                
                                <div class="row">
                                    <div class="col-md-12">
                                        <h3 class="text-center">Tipo de Comunicado</h3>
                                    </div>
                                </div><br />
                                
                                <div class="row">
                                    <div class="col-md-6 col-md-offset-3"><asp:Button id="btnEntrega" runat="server" Text="Por Sucursal" class="btn btn-block btn-success" OnClick="btnAgregarGral_Onclick"></asp:Button></div>
                                </div><br />
                                <asp:PlaceHolder runat="server" id="phGeneral" Visible="false">
                                    <div class="modal-body form-group">
                            
                                        <asp:PlaceHolder runat="server" id="phSucursal3">
                                            <div class="row">
                                                <div>
                                                    <label class="col-md-4 control-label">Sucursal: </label> 
                                                    <div class="col-md-6">
                                                        <asp:DropDownList id="ddlSucursalGral" runat="server" ClientIDMode="Static" 
                                                            CssClass="form-control"></asp:DropDownList>
                                                        <asp:RequiredFieldValidator ErrorMessage="<p>Campo Obligatorio!</p>" 
                                                            setfocusonerror="true" Display="Dynamic" ForeColor="#B50128" Font-Size="10"
                                                            Font-Bold="true" ControlToValidate="ddlSucursalGral" runat="server" 
                                                            ValidationGroup="ValidationAdd1"/>
                                                    </div>
                                                </div>
                                            </div>
                                        </asp:PlaceHolder><br/>
                                        
                                        <div class="row">
                                            <div class="col-md-4 col-md-offset-4">
                                                <asp:Button id="btnGeneral" runat="server" Text="Crear" class="btn btn-block btn-info" OnClick="crearlistaGral" ValidationGroup="ValidationAdd1"/>
                                            </div>
                                        </div>
                                    </div>
                                </asp:PlaceHolder>

                                <div class="row">
                                    <div class="col-md-6 col-md-offset-3"><asp:Button id="Button2" runat="server" Text="Por Trabajador" class="btn btn-block btn-warning" OnClick="btnAgregarEsp_Onclick"></asp:Button></div>
                                </div><br />
                                <asp:PlaceHolder runat="server" id="phEspecifico" Visible="false">
                                    <div class="modal-body form-group">
                            
                                       <asp:PlaceHolder runat="server" id="phSucursalAdd">
                                           <div class="row">
                                                <div>
                                                    <label class="col-md-4 control-label">Sucursal: </label> 
                                                    <div class="col-md-6">
                                                        <asp:DropDownList id="ddlSucursalAdd"  data-toggle="tooltip" data-placement="bottom" title="Seleccione una Sucursal" runat="server" ClientIDMode="Static" 
                                                            CssClass="form-control" AutoPostBack="true" 
                                                            OnSelectedIndexChanged="ddlSucursalAdd_SelectedIndexChanged"></asp:DropDownList>

                                                        <asp:RequiredFieldValidator ErrorMessage="<p>Campo Obligatorio!</p>" 
                                                            setfocusonerror="true" Display="Dynamic" ForeColor="#B50128" Font-Size="10"
                                                            Font-Bold="true" ControlToValidate="ddlSucursalAdd" runat="server" 
                                                            ValidationGroup="ValidationAdd"/>
                                                    </div>
                                                </div>
                                            </div>
                                       </asp:PlaceHolder>
                                   
                                       <div class="row">
                                           <div>
                                            <label class="col-md-4 control-label">Trabajador: </label> 
                                            <div class="col-md-6">
                                                <asp:DropDownList id="ddlTrabajadorEsp" runat="server" ClientIDMode="Static" CssClass="form-control"></asp:DropDownList>
                                                <asp:RequiredFieldValidator ErrorMessage="<p>Campo Obligatorio!</p>" 
                                                    setfocusonerror="true" Display="Dynamic" ForeColor="#B50128" Font-Size="10"
                                                    Font-Bold="true" ControlToValidate="ddlTrabajadorEsp" runat="server" 
                                                    ValidationGroup="ValidationAdd"/>
                                            </div>
                                        </div>

                                       </div><br/>

                                        <div class="row">
                                            <div class="col-md-4"></div>
                                            <div class="col-md-4">
                                                <asp:Button id="btnEspecifico" runat="server" Text="Crear" class="btn btn-block btn-info" OnClick="Guardar" ValidationGroup="ValidationAdd"/>
                                            </div>
                                        </div>
                                   </div>
                                </asp:PlaceHolder>
                                
                                <div class="row">
                                    <div class="col-md-6 col-md-offset-3"><asp:Button id="Button1" runat="server" Text="Subir Comunicado" class="btn btn-block btn-danger" OnClick="btnSubir_Onclick"></asp:Button></div>
                                </div><br />

                                <asp:PlaceHolder runat="server" id="phSubir" Visible="false">
                                    <div class="modal-body form-group">
                            
                                        <div class="row">
                                            <div>
                                                <label class="col-md-4 control-label">Nombre: </label>
                                                <div class="col-md-6">
                                                    <asp:TextBox id="txtNombreSubir" runat="server" ClientIDMode="Static" CssClass="form-control"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ErrorMessage="<p>Campo Obligatorio!</p>" 
                                                        setfocusonerror="true" Display="Dynamic" ForeColor="#B50128" Font-Size="10"
                                                        Font-Bold="true" ControlToValidate="txtNombreSubir" runat="server" 
                                                        ValidationGroup="ValidationAdd"/>
                                                     </div>
                                            </div>
                                        </div><br />

                                        <asp:PlaceHolder runat="server" id="phSucursalSubir">
                                            <div class="row">
                                                <div>
                                                    <label class="col-md-4 control-label">Sucursal: </label> 
                                                    <div class="col-md-6">
                                                        <asp:DropDownList id="ddlSucursalSubir" runat="server" ClientIDMode="Static" 
                                                            CssClass="form-control" AutoPostBack="true" 
                                                            OnSelectedIndexChanged="ddlSucursalSubir_SelectedIndexChanged"></asp:DropDownList>

                                                        <asp:RequiredFieldValidator ErrorMessage="<p>Campo Obligatorio!</p>" 
                                                            setfocusonerror="true" Display="Dynamic" ForeColor="#B50128" Font-Size="10"
                                                            Font-Bold="true" ControlToValidate="ddlSucursalSubir" runat="server" 
                                                            ValidationGroup="ValidationAdd"/>
                                                    </div>
                                                </div>
                                            </div>
                                        </asp:PlaceHolder><br/>
                            
                                        <div class="row">
                                            <div>
                                                <label class="col-md-4 control-label">Trabajador: </label> 
                                                <div class="col-md-6">
                                                    <asp:DropDownList id="ddlTrabajadorSubir" runat="server" ClientIDMode="Static" 
                                                        CssClass="form-control"></asp:DropDownList>

                                                    <asp:RequiredFieldValidator ErrorMessage="<p>Campo Obligatorio!</p>" 
                                                        setfocusonerror="true" Display="Dynamic" ForeColor="#B50128" Font-Size="10"
                                                        Font-Bold="true" ControlToValidate="ddlTrabajadorSubir" runat="server" 
                                                        ValidationGroup="ValidationAdd"/>
                                                </div>
                                            </div>
                                        </div><br/>
                            
                                        <div class="row">
                                            <div>
                                                <label class="col-md-4 control-label">Archivo: </label>
                                                <div class="col-md-6">
                                                    <asp:FileUpload id="flpArchivo" runat="server" ClientIDMode="Static" CssClass="form-control"></asp:FileUpload>
                                                    <asp:RequiredFieldValidator ErrorMessage="<p>Campo Obligatorio!</p>" 
                                                        setfocusonerror="true" Display="Dynamic" ForeColor="#B50128" Font-Size="10"
                                                        Font-Bold="true" ControlToValidate="flpArchivo" runat="server" 
                                                        ValidationGroup="ValidationAdd"/>
                                                </div>
                                            </div>
                                        </div><br/>
                                        
                                        <div class="row">
                                            <div class="col-md-4 col-md-offset-4">
                                                <asp:Button id="btnSubirComunicado" runat="server" Text="Crear" 
                                                    class="btn btn-block btn-info" OnClick="btnSubirComunicado_OnClick" 
                                                    ValidationGroup="ValidationAdd"/>
                                            </div>
                                        </div>

                                    </div>
                                </asp:PlaceHolder>

                            </div>
                        </ContentTemplate>
                        <Triggers>
                            <asp:PostBackTrigger Controlid="btnEspecifico"/>
                            <asp:PostBackTrigger Controlid="btnGeneral"/>
                            <asp:PostBackTrigger Controlid="btnSubirComunicado"/>
                        </Triggers>
                    </asp:updatepanel>
            </div>
        </div>
    </div>

    <!-- Delete Modal -->
    <div id="deleteModal" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h3>Eliminar Registro</h3>
                </div>

                <asp:updatepanel id="upDel" runat="server">
                    <ContentTemplate>
                        
                        <div class="modal-body form-group">
                            <asp:HiddenField id="hdfIDDel" runat="server"/>
                            <div class="row">
                                <h4 class="text-center">¿Seguro desea eliminar este registro?</h4>
                            </div>
                        </div>
                        
                        <div class="modal-footer">
                            <div class="row">
                                <div class="col-md-4 col-md-offset-2"><asp:Button id="btnDelete" runat="server" Text="Eliminar" class="btn btn-block btn-info" OnClick="EliminarRegistro"/></div>
                                <div class="col-md-4"><button class="btn btn-block btn-default" data-dismiss="modal" aria-hidden="true">Cerrar</button></div>
                            </div>
                        </div>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger Controlid="btnDelete" EventName="Click"/>
                    </Triggers>
                </asp:updatepanel>
            </div>
        </div>
    </div>

    <!-- Msj Modal -->
    <ucm:ucMsjModal runat="server" id="ucMsjModal"/>

</asp:Content>