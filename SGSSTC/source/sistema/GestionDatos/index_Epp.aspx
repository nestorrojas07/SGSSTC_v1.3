﻿<%@ Page Language="C#" MasterPageFile="~/source/MasterPages/Menu.Master" AutoEventWireup="true" CodeBehind="index_Epp.aspx.cs" Inherits="SGSSTC.source.sistema.GestionDatos.index_Epp" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, 
	PublicKeyToken=31bf3856ad364e35"
	Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

	<asp:UpdatePanel ID="updatePanelPrinicpal" runat="server">
		<ContentTemplate>

			<ol class="breadcrumb">
				<li><a href="#">Gestión de Datos</a></li>
				<li><a href="#">Epp</a></li>
			</ol>

			<div class="page-header">
				<h1 class="text-center">Equipo de Protección Personal</h1>
			</div>

			
			<asp:PlaceHolder ID="phAlerta" runat="server" Visible="false">
				<div id="divAlerta" runat="server">
					<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
					<asp:Label ID="lbAlerta" runat="server" Text="Label"></asp:Label>
				</div>
			</asp:PlaceHolder>

			<div class="row">
				<div class="col-md-4 col-md-offset-3">
					<asp:TextBox ID="txtBuscar" data-toggle="tooltip" data-placement="bottom"
						title="Ingrese Texto a Buscar" runat="server" class="form-control"
						PlaceHolder="Ingrese el EPP a buscar"></asp:TextBox>
				</div>

				<div class="col-md-2">
					<asp:Button ID="btnBuscar" data-toggle="tooltip" data-placement="bottom"
						title="Presione para buscar" runat="server" Text="Buscar" CssClass="btn btn-info"
						OnClick="BuscarRegistro" />
				</div>
			</div>

			<br />

			<div class="row">
				<asp:PlaceHolder runat="server" ID="phEmpresa">
					<div class="col-md-4">
						<h4 class="text-center">Empresa</h4>
						<asp:DropDownList runat="server" AutoPostBack="true" ID="ddlEmpresa" data-toggle="tooltip" data-placement="bottom" title="Seleccione una Empresa" CssClass="form-control"
							OnSelectedIndexChanged="ddlEmpresa_SelectedIndexChanged">
						</asp:DropDownList>
					</div>
				</asp:PlaceHolder>

				<div class="col-md-4 col-md-offset-4">
					<h4 class="text-center">Tipo EPP</h4>
					<asp:DropDownList runat="server" AutoPostBack="true" ID="ddlTipoEpp" CssClass="form-control"
						OnSelectedIndexChanged="ddlTipoEpp_SelectedIndexChanged">
					</asp:DropDownList>
				</div>
			</div>

			<br />

			<div class="row">
				<div class="box-body col-md-8 col-md-offset-2">
					<div class="dataTables_wrapper form-inline dt-bootstrap">
						
						<asp:GridView ID="GridView1" class="table table-bordered table-hover dataTable" runat="server"
							AutoGenerateColumns="false" AllowPaging="true" PageSize="10"
							OnRowCommand="GridView1_RowCommand" 
							OnPageIndexChanging="GridView1_PageIndexChanging"
							EmptyDataText="No existen Registros">
							<RowStyle HorizontalAlign="Center" />
							<Columns>

								<asp:TemplateField HeaderText="ID" Visible="false">
									<ItemTemplate>
										<asp:Label ID="id" runat="server" Text='<%# Eval("id_epp") %>' />
									</ItemTemplate>
								</asp:TemplateField>

								<asp:TemplateField HeaderText="Nombre" HeaderStyle-CssClass="text-center">
									<ItemTemplate>
										<asp:Label ID="nombre" runat="server" Text='<%# Eval("nombre") %>' />
									</ItemTemplate>
								</asp:TemplateField>

								<asp:TemplateField HeaderText="Tipo" HeaderStyle-CssClass="text-center">
									<ItemTemplate>
										<asp:Label ID="tipo" runat="server" Text='<%# Eval("tipo") %>' />
									</ItemTemplate>
								</asp:TemplateField>


							</Columns>
						</asp:GridView>
					</div>
				</div>
			</div>

			<br />

		</ContentTemplate>
		<Triggers></Triggers>
	</asp:UpdatePanel>

	<!-- Add Modal -->
	<div id="addModal" class="modal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					<h3>Agregar EPP</h3>
				</div>

				<asp:UpdatePanel ID="UpdatePanel1" runat="server">
					<ContentTemplate>

						<div class="modal-body form-group">
							<div class="row">
								<div class="col-md-4">
									<h4 class="text-center">Nombre</h4>
								</div>

								<div class="col-md-8">
									<asp:TextBox ID="txtNombreAdd" runat="server" ClientIDMode="Static" MaxLength="100"
										CssClass="form-control"></asp:TextBox>
									<asp:RequiredFieldValidator ErrorMessage="<p>Campo Obligatorio!</p>" SetFocusOnError="true"
										Display="Dynamic" ForeColor="#B50128" Font-Size="10" Font-Bold="true"
										ControlToValidate="txtNombreAdd" runat="server" ValidationGroup="ValidationAdd" />
								</div>
							</div>
							<br />

							<asp:PlaceHolder runat="server" ID="phEmpresaAdd" Visible="False">
								<div class="row">
									<div class="col-md-4">
										<h4 class="text-center">Empresa</h4>
									</div>

									<div class="col-md-8">
										<asp:DropDownList ID="ddlEmpresaAdd"
											data-toggle="tooltip" data-placement="bottom" title="Seleccione una Empresa"
											runat="server" ClientIDMode="Static" CssClass="form-control">
										</asp:DropDownList>

										<asp:RequiredFieldValidator ErrorMessage="<p>Campo Obligatorio!</p>"
											SetFocusOnError="true" Display="Dynamic" ForeColor="#B50128" Font-Size="10"
											Font-Bold="true" ControlToValidate="ddlEmpresaAdd" runat="server"
											ValidationGroup="ValidationAdd" />
									</div>
								</div>
								<br />
							</asp:PlaceHolder>

							<div class="row">
								<div class="col-md-4">
									<h4 class="text-center">Tipo Epp</h4>
								</div>

								<div class="col-md-8">
									<asp:DropDownList ID="ddlTipoEppAdd" runat="server" ClientIDMode="Static"
										CssClass="form-control">
									</asp:DropDownList>

									<asp:RequiredFieldValidator ErrorMessage="<p>Campo Obligatorio!</p>" SetFocusOnError="true"
										Display="Dynamic" ForeColor="#B50128" Font-Size="10" Font-Bold="true"
										ControlToValidate="ddlTipoEppAdd" runat="server" ValidationGroup="ValidationAdd" />
								</div>
							</div>
							<br />
						</div>

						<div class="modal-footer">
							<div class="row">
								<div class="col-md-4 col-md-offset-2">
									<asp:Button ID="btnRegistrar" runat="server" Text="Agregar" class="btn btn-block btn-info"
										OnClick="AgregarRegistro" ValidationGroup="ValidationAdd" />
								</div>

								<div class="col-md-4">
									<button class="btn btn-block btn-default" data-dismiss="modal" aria-hidden="true">Cerrar</button>
								</div>
							</div>
						</div>

					</ContentTemplate>
					<Triggers>
						<asp:PostBackTrigger ControlID="btnRegistrar" />
					</Triggers>
				</asp:UpdatePanel>
			</div>
		</div>
	</div>

	<!-- Edit Modal -->
	<div id="editModal" class="modal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					<h3>Editar EPP</h3>
				</div>

				<asp:UpdatePanel ID="UpdatePanel2" runat="server">
					<ContentTemplate>
						<div class="modal-body form-group">

							<asp:HiddenField ID="hdfIdEppEdit" runat="server" />

							<div class="row">
								<div class="col-md-4">
									<h4 class="text-center">Nombre</h4>
								</div>

								<div class="col-md-8">
									<asp:TextBox ID="txtNombreEdit" runat="server" ClientIDMode="Static" MaxLength="100"
										CssClass="form-control"></asp:TextBox>

									<asp:RequiredFieldValidator ErrorMessage="<p>Campo Obligatorio!</p>" SetFocusOnError="true"
										Display="Dynamic" ForeColor="#B50128" Font-Size="10" Font-Bold="true"
										ControlToValidate="txtNombreEdit" runat="server" ValidationGroup="ValidationEdit" />
								</div>
							</div>
							<br />

							<asp:PlaceHolder runat="server" ID="phEmpresaEdit" Visible="False">
								<div class="row">
									<div class="col-md-4">
										<h4 class="text-center">Empresa</h4>
									</div>

									<div class="col-md-8">
										<asp:DropDownList ID="ddlEmpresaEdit" data-toggle="tooltip" data-placement="bottom" title="Seleccione una empresa" runat="server" ClientIDMode="Static"
											CssClass="form-control">
										</asp:DropDownList>

										<asp:RequiredFieldValidator ErrorMessage="<p>Campo Obligatorio!</p>"
											SetFocusOnError="true" Display="Dynamic" ForeColor="#B50128" Font-Size="10"
											Font-Bold="true" ControlToValidate="ddlEmpresaEdit" runat="server"
											ValidationGroup="ValidationEdit" />
									</div>
								</div>
								<br />
							</asp:PlaceHolder>

							<div class="row">
								<div class="col-md-4">
									<h4 class="text-center">Tipo Epp</h4>
								</div>

								<div class="col-md-8">
									<asp:DropDownList ID="ddlTipoEppEdit" runat="server" ClientIDMode="Static" CssClass="form-control"></asp:DropDownList>
									<asp:RequiredFieldValidator ErrorMessage="<p>Campo Obligatorio!</p>" SetFocusOnError="true"
										Display="Dynamic" ForeColor="#B50128" Font-Size="10" Font-Bold="true"
										ControlToValidate="ddlTipoEppEdit" runat="server" ValidationGroup="ValidationEdit" />
								</div>
							</div>
							<br />

						</div>

						<div class="modal-footer">
							<div class="row">

								<div class="col-md-4 col-md-offset-2">
									<asp:Button ID="btnActualizar" runat="server" Text="Guardar" class="btn btn-block btn-info"
										OnClick="EditarRegistro" ValidationGroup="ValidationEdit" />
								</div>

								<div class="col-md-4">
									<button class="btn btn-block btn-default" data-dismiss="modal" aria-hidden="true">Cerrar</button>
								</div>
							</div>
						</div>
					</ContentTemplate>
					<Triggers></Triggers>
				</asp:UpdatePanel>
			</div>
		</div>
	</div>

	<!-- Delete Modal -->
	<div id="deleteModal" class="modal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					<h3>Eliminar Registro</h3>
				</div>
				<asp:UpdatePanel ID="upDel" runat="server">
					<ContentTemplate>
						<div class="modal-body form-group">
							<asp:HiddenField ID="hdfIDEppDel" runat="server" />

							<div class="row">
								<h4 class="text-center">¿Seguro desea eliminar este registro?</h4>
							</div>
						</div>

						<div class="modal-footer">
							<div class="row">
								<div class="col-md-4 col-md-offset-2">
									<asp:Button ID="btnDelete" runat="server" Text="Eliminar" class="btn btn-block btn-info" OnClick="EliminarRegistro" /></div>
								<div class="col-md-4">
									<button class="btn btn-block btn-default" data-dismiss="modal" aria-hidden="true">Cerrar</button></div>
							</div>
						</div>

					</ContentTemplate>
					<Triggers>
						<asp:AsyncPostBackTrigger ControlID="btnDelete" EventName="Click" />
					</Triggers>
				</asp:UpdatePanel>
			</div>
		</div>
	</div>

</asp:Content>