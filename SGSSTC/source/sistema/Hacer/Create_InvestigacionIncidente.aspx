﻿<%@ Page Language="C#" MasterPageFile="~/source/MasterPages/Menu.Master" AutoEventWireup="true" CodeBehind="Create_InvestigacionIncidente.aspx.cs" Inherits="SGSSTC.source.sistema.Verificar.Create_InvestigacionIncidente" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"  Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

	<asp:UpdatePanel ID="MyUpdatePanel" runat="server">
		<ContentTemplate>

			<ol class="breadcrumb">
				<li><a href="#">Fase: Hacer</a></li>
				<li><a href="../Hacer/index_InvestigacionIncidente.aspx">Investigación de Incidente</a></li>
				<li><a href="#">Crear Investigación</a></li>
			</ol>

			<div class="page-header">
				<h1 class="text-center">Nueva Investigación de Incidente Laboral</h1>
			</div>

			
			<asp:PlaceHolder ID="phAlerta" runat="server" Visible="false">
				<div id="divAlerta" runat="server">
					<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
					<asp:Label ID="lbAlerta" runat="server" Text="Label"></asp:Label>
				</div>
			</asp:PlaceHolder>

			<div class="row">
				<div class="col-md-6">
					<h3>Sucursal</h3>
					<asp:TextBox ID="txtSucursal" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
				</div>
			</div>
			<br />

			<!-- Datos del evento-->
			<div class="row">
				<h3>DATOS DEL EVENTO</h3>
				<div class="col-md-3">
					<h4>Fecha:</h4>
					<asp:TextBox ID="txtFechaEvento" type="date" runat="server" CssClass="form-control"></asp:TextBox>

					<asp:RequiredFieldValidator ErrorMessage="<p>Campo Obligatorio!</p>" SetFocusOnError="true" Display="Dynamic"
						ForeColor="#B50128" Font-Size="10" Font-Bold="true" ControlToValidate="txtFechaEvento" runat="server"
						ValidationGroup="ValidationAdd" />
				</div>

				<div class="col-md-3">
					<h4>Hora:</h4>
					<asp:TextBox ID="txtHoraEvento" type="time" runat="server" CssClass="form-control"></asp:TextBox>

					<asp:RequiredFieldValidator ErrorMessage="<p>Campo Obligatorio!</p>" SetFocusOnError="true" Display="Dynamic"
						ForeColor="#B50128" Font-Size="10" Font-Bold="true" ControlToValidate="txtHoraEvento" runat="server"
						ValidationGroup="ValidationAdd" />
				</div>

				<div class="col-md-3">
					<h4>Dia de la Semana:</h4>
					<asp:DropDownList runat="server" ID="ddlDiaSemana" CssClass="form-control">
						<asp:ListItem Text="Lunes" Value="Lunes"></asp:ListItem>
						<asp:ListItem Text="Martes" Value="Martes"></asp:ListItem>
						<asp:ListItem Text="Miércoles" Value="Miércoles"></asp:ListItem>
						<asp:ListItem Text="Jueves" Value="Jueves"></asp:ListItem>
						<asp:ListItem Text="Viernes" Value="Viernes"></asp:ListItem>
						<asp:ListItem Text="Sábado" Value="Sábado"></asp:ListItem>
						<asp:ListItem Text="Domingo" Value="Domingo"></asp:ListItem>
					</asp:DropDownList>

					<asp:RequiredFieldValidator ErrorMessage="<p>Campo Obligatorio!</p>" SetFocusOnError="true" Display="Dynamic"
						ForeColor="#B50128" Font-Size="10" Font-Bold="true" ControlToValidate="ddlDiaSemana" runat="server"
						ValidationGroup="ValidationAdd" />
				</div>
			</div>
			<div class="row">
				<div class="col-md-3">
					<h4>Lugar donde ocurrió:</h4>
					<asp:TextBox ID="txtLugarEvento" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
				</div>

				<div class="col-md-3">
					<h4>Tipo de suceso:</h4>
					<asp:TextBox ID="txtTipo" runat="server" CssClass="form-control" ReadOnly="true">Accidente</asp:TextBox>

				</div>
			</div>

			<!-- DATOS DEL ACCIDENTADO -->
			<div class="row">
				<h3>DATOS DEL INCIDENTADO</h3>
				<div class="col-md-4">
					<h4>Nombre Completo:</h4>
					<asp:TextBox ID="txtTrabajador" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
				</div>
				<div class="col-md-3">
					<h4>Cedula de Ciudadania:</h4>
					<asp:TextBox ID="txtCedula" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
				</div>
				<div class="col-md-2">
					<h4>Mano dominante:</h4>
					<asp:TextBox ID="ddlMano" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
				</div>
				<div class="col-md-3">
					<h4>Tipo de Vinculacion:</h4>
					<asp:TextBox ID="txtTipoVinculacion" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3">
					<h4>Antigüedad en el puesto:</h4>
					<asp:TextBox ID="txtAntiguedad" type="number" step="0.01" runat="server" CssClass="form-control"></asp:TextBox>
				</div>
				<div class="col-md-3">
					<h4>Cargo:</h4>
					<asp:TextBox ID="txtCargo" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
				</div>
				<div class="col-md-3">
					<h4>Supervisor inmediato:</h4>
					<asp:TextBox ID="txtSupervisor" runat="server" CssClass="form-control"></asp:TextBox>
				</div>
				<div class="col-md-3">
					<h4>Fecha de ingreso:</h4>
					<asp:TextBox ID="txtFechaIngreso" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3">
					<h4>Tiempo en el cargo:</h4>
					<asp:TextBox ID="txtTiempoCargo" runat="server" CssClass="form-control"></asp:TextBox>
				</div>
				<div class="col-md-3">
					<h4>Salario devengado:</h4>
					<asp:TextBox ID="txtSalario" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
				</div>
				<div class="col-md-6">
					<h4>Actividad que realizaba:</h4>
					<asp:TextBox ID="txtActRealizaba" runat="server" CssClass="form-control"></asp:TextBox>
				</div>

			</div>


			<!-- DESCRIPCIÓN DEL ACCIDENTE -->
			<div class="row">
				<h3>DESCRIPCIÓN DEL INCIDENTE</h3>
				<div class="col-md-12">
					<asp:TextBox ID="txtDescAccidente" TextMode="multiline" Rows="3" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
				</div>
			</div>

			<!-- ADIESTRAMIENTO RECIBIDO POR EL TRABAJADOR -->
			<div class="row">
				<h3>ADIESTRAMIENTO RECIBIDO POR EL TRABAJADOR</h3>
				<div class="col-md-12">
					<asp:TextBox ID="txtAdiestramiento" TextMode="multiline" Rows="3" runat="server" CssClass="form-control"></asp:TextBox>
				</div>
			</div>

			<!-- COSTOS -->
			<div class="row">
				<h3>COSTOS</h3>
				<div class="col-md-6">
					<h4>Transporte:</h4>
					<asp:TextBox ID="txtCostoTransporte" runat="server" CssClass="form-control"></asp:TextBox>
				</div>
				<div class="col-md-6">
					<h4>Reemplazo:</h4>
					<asp:TextBox ID="txtCostoReemplazo" runat="server" CssClass="form-control"></asp:TextBox>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<h4>Atención médica:</h4>
					<asp:TextBox ID="txtCostoAtencionMedica" runat="server" CssClass="form-control"></asp:TextBox>
				</div>
				<div class="col-md-6">
					<h4>Reposo médico :</h4>
					<asp:TextBox ID="txtCostoReposoMedico" runat="server" CssClass="form-control"></asp:TextBox>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<h4>Tratamiento:</h4>
					<asp:TextBox ID="txtCostoTratamiento" runat="server" CssClass="form-control"></asp:TextBox>
				</div>
				<div class="col-md-6">
					<h4>Daños materiales:</h4>
					<asp:TextBox ID="txtCostoDanhosMateriales" runat="server" CssClass="form-control"></asp:TextBox>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<h4>Indemnización:</h4>
					<asp:TextBox ID="txtCostoIndemnización" runat="server" CssClass="form-control"></asp:TextBox>
				</div>
				<div class="col-md-6">
					<h4>Producción diferida:</h4>
					<asp:TextBox ID="txtCostoProdDiferida" runat="server" CssClass="form-control"></asp:TextBox>
				</div>
			</div>

			<!-- ANÁLISIS DEL INCIDENTE -->
			<div class="row">
				<h3>ANÁLISIS DEL INCIDENTE</h3>
				<div class="col-md-12">
					<h4>Actividad: </h4>
					<asp:TextBox ID="txtActividad" TextMode="multiline" Rows="3" runat="server" CssClass="form-control"></asp:TextBox>
				</div>
			</div>

			<!-- CINCO PORQUE -->
			<div class="row">
				<h3>IDENTIFICACIÓN DE POSIBLES CAUSAS DEL INCIDENTE: </h3>
				<div class="col-md-6">
					<h4>PREGUNTAS</h4>
					<asp:TextBox ID="txtPorque1" runat="server" CssClass="form-control">¿Por qué ....?</asp:TextBox>
				</div>
				<div class="col-md-6">
					<h4>RESPUESTAS</h4>
					<asp:TextBox ID="txtRespuesta1" runat="server" CssClass="form-control"></asp:TextBox>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<asp:TextBox ID="txtPorque2" runat="server" CssClass="form-control">¿Por qué ....?</asp:TextBox>
				</div>
				<div class="col-md-6">
					<asp:TextBox ID="txtRespuesta2" runat="server" CssClass="form-control"></asp:TextBox>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<asp:TextBox ID="txtPorque3" runat="server" CssClass="form-control">¿Por qué ....?</asp:TextBox>
				</div>
				<div class="col-md-6">
					<asp:TextBox ID="txtRespuesta3" runat="server" CssClass="form-control"></asp:TextBox>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<asp:TextBox ID="txtPorque4" runat="server" CssClass="form-control">¿Por qué ....?</asp:TextBox>
				</div>
				<div class="col-md-6">
					<asp:TextBox ID="txtRespuesta4" runat="server" CssClass="form-control"></asp:TextBox>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<asp:TextBox ID="txtPorque5" runat="server" CssClass="form-control">¿Por qué ....?</asp:TextBox>
				</div>
				<div class="col-md-6">
					<asp:TextBox ID="txtRespuesta5" runat="server" CssClass="form-control"></asp:TextBox>
				</div>
			</div>

			<!-- 5W2H -->
			<div class="row">
				<h3>RECONOCER CAUSAS GENERADORAS DEL INCIDENTE: </h3>
				<div class="col-md-6">
					<h4>PREGUNTAS</h4>
					<asp:TextBox ID="txtQue" runat="server" CssClass="form-control">¿Qué Sucedio ...?</asp:TextBox>
				</div>
				<div class="col-md-6">
					<h4>RESPUESTAS</h4>
					<asp:TextBox ID="txtRespuestaQue" runat="server" CssClass="form-control"></asp:TextBox>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<asp:TextBox ID="txtPorque" runat="server" CssClass="form-control">¿Por qué sucedio ....?</asp:TextBox>
				</div>
				<div class="col-md-6">
					<asp:TextBox ID="txtRespuestaPorque" runat="server" CssClass="form-control"></asp:TextBox>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<asp:TextBox ID="txtQuien" runat="server" CssClass="form-control">¿Quien fue el afectado ....?</asp:TextBox>
				</div>
				<div class="col-md-6">
					<asp:TextBox ID="txtrespuestaQuien" runat="server" CssClass="form-control"></asp:TextBox>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<asp:TextBox ID="txtDonde" runat="server" CssClass="form-control">¿Dónde sucedio ....?</asp:TextBox>
				</div>
				<div class="col-md-6">
					<asp:TextBox ID="txtrespuestaDonde" runat="server" CssClass="form-control"></asp:TextBox>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<asp:TextBox ID="txtCuando" runat="server" CssClass="form-control">¿Cuando sucedio ....?</asp:TextBox>
				</div>
				<div class="col-md-6">
					<asp:TextBox ID="txtrespuestaCuando" runat="server" CssClass="form-control"></asp:TextBox>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<asp:TextBox ID="txtComo" runat="server" CssClass="form-control">¿Cómo sucedió....?</asp:TextBox>
				</div>
				<div class="col-md-6">
					<asp:TextBox ID="txtrespuestaComo" runat="server" CssClass="form-control"></asp:TextBox>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<asp:TextBox ID="txtCuanto" runat="server" CssClass="form-control">¿Cuanto es el costo de ....?</asp:TextBox>
				</div>
				<div class="col-md-6">
					<asp:TextBox ID="txtrespuestaCuanto" runat="server" CssClass="form-control"></asp:TextBox>
				</div>
			</div>

			<div class="row">
				<div class="col-md-3">
					<h4>Tipo de Incidente:</h4>
					<asp:DropDownList runat="server" ID="ddlTipoAccidente" CssClass="form-control">
						<asp:ListItem Text="Salida Oficial" Value=" Salida Oficial"></asp:ListItem>
						<asp:ListItem Text="Propio del Trabajo" Value="Propio del Trabajo"></asp:ListItem>
						<asp:ListItem Text="Comision" Value="Comision"></asp:ListItem>
						<asp:ListItem Text="Violencia" Value="Violencia"></asp:ListItem>
					</asp:DropDownList>

					<asp:RequiredFieldValidator ErrorMessage="<p>Campo Obligatorio!</p>" SetFocusOnError="true" Display="Dynamic"
						ForeColor="#B50128" Font-Size="10" Font-Bold="true" ControlToValidate="ddlTipoAccidente" runat="server"
						ValidationGroup="ValidationAdd" />
				</div>
			</div>

			<!-- MEDIDAS A ADOPTAR -->
			<div class="row">
				<h3>MEDIDAS A ADOPTAR</h3>
				<div class="col-md-7">
					<h4>Acción</h4>
					<asp:TextBox ID="txtAccion1" TextMode="multiline" Rows="3" runat="server" CssClass="form-control"></asp:TextBox>
				</div>
				<div class="col-md-3">
					<h4>Responsable</h4>
					<asp:TextBox ID="txtResponsable1" runat="server" CssClass="form-control"></asp:TextBox>
				</div>
				<div class="col-md-2">
					<h4>Fecha</h4>
					<asp:TextBox ID="txtfecha1" type="date" runat="server" CssClass="form-control"></asp:TextBox>
				</div>
			</div>
			<div class="row">
				<div class="col-md-7">
					<h4>Acción</h4>
					<asp:TextBox ID="txtAccion2" TextMode="multiline" Rows="3" runat="server" CssClass="form-control"></asp:TextBox>
				</div>
				<div class="col-md-3">
					<h4>Responsable</h4>
					<asp:TextBox ID="txtResponsable2" runat="server" CssClass="form-control"></asp:TextBox>
				</div>
				<div class="col-md-2">
					<h4>Fecha</h4>
					<asp:TextBox ID="txtFecha2" type="date" runat="server" CssClass="form-control"></asp:TextBox>
				</div>
			</div>
			<div class="row">
				<div class="col-md-7">
					<h4>Acción</h4>
					<asp:TextBox ID="txtAccion3" TextMode="multiline" Rows="3" runat="server" CssClass="form-control"></asp:TextBox>
				</div>
				<div class="col-md-3">
					<h4>Responsable</h4>
					<asp:TextBox ID="txtResponsable3" runat="server" CssClass="form-control"></asp:TextBox>
				</div>
				<div class="col-md-2">
					<h4>Fecha</h4>
					<asp:TextBox ID="txtFecha3" type="date" runat="server" CssClass="form-control"></asp:TextBox>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<h4>Nota</h4>
					<asp:TextBox ID="txtNota" TextMode="multiline" Rows="3" runat="server" CssClass="form-control"></asp:TextBox>
				</div>
			</div>


			<!-- Anexos-->
			<div class="row">
				<h3>Soportes fotográficos</h3>
				<div class="col-md-6">
					<asp:FileUpload runat="server" ID="fuAnexo" AllowMultiple="true" />
				</div>
			</div>

			<!-- Boton-->
			<div class="row">
				<div class="col-md-2 col-md-offset-4">
					<asp:Button runat="server" ID="btPrintSave" Text="Guardar" class="btn btn-block btn-info"
						OnClick="btPrintSave_Click" ValidationGroup="ValidationAdd"></asp:Button>
				</div>

				<div class="col-md-2">
					<asp:Button runat="server" ID="Volver" Text="Volver" class="btn btn-block btn-default" OnClick="Volver_Click"></asp:Button>
				</div>
			</div>

		</ContentTemplate>
		<Triggers>
			<asp:PostBackTrigger ControlID="btPrintSave" />
		</Triggers>

	</asp:UpdatePanel>
</asp:Content>
