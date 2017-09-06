﻿using Capa_Datos;
using System;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SGSSTC.source.sistema.Hacer
{
    public partial class index_ComunicacionPoliticaSST : Page
    {
        protected static Model_UsuarioSistema ObjUsuario;
        Tuple<bool, bool> BoolEmpSuc;

        #region acciones index
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Form.Attributes.Add("enctype", "multipart/form-data");

            ObjUsuario = Utilidades.ValidarSesion(HttpContext.Current.User.Identity as FormsIdentity, this);

            BoolEmpSuc = Getter.Get_Empresa_Sucursal(ObjUsuario);

            phSucursal.Visible = BoolEmpSuc.Item2;
            phSucursalAdd.Visible = BoolEmpSuc.Item2;
            phSucursalSubir.Visible = BoolEmpSuc.Item2;


            if (!IsPostBack)
            {
                //LlenarGridView();
                CargarListas();
            }
        }
        protected void CargarListas()
        {

            if (!BoolEmpSuc.Item1)
            {
                Listas.Sucursal(ddlSucursal, ObjUsuario.Id_empresa);
                Listas.Sucursal(ddlSucursalAdd, ObjUsuario.Id_empresa);
                Listas.Sucursal(ddlSucursalGral, ObjUsuario.Id_empresa);
                Listas.Sucursal(ddlSucursalSubir, ObjUsuario.Id_empresa);
            }

            if (!BoolEmpSuc.Item2)
            {
                Listas.Trabajadores_Sucursal(ddlTrabajadorEsp, ObjUsuario.Id_sucursal);
                Listas.Trabajadores_Sucursal(ddlTrabajador, ObjUsuario.Id_sucursal);
            }
        }
        protected void LlenarGridView()
        {
            int IdEmpresa = Getter.Set_IdEmpresa(ObjUsuario, Convert.ToInt32(ViewState["empresa"]));
            int IdSucursal = Getter.Set_IdSucursal(ObjUsuario, Convert.ToInt32(ViewState["sucursal"]));

            Tabla.Comunicado_PoliticaSST(
                GridView1,
                IdEmpresa,
                IdSucursal,
                Convert.ToInt32(string.Empty + ViewState["trabajador"]),
                string.Empty + ViewState["sWhere"]);
        }
        #endregion

        #region registrar modales
        protected void btnAgregarEsp_Onclick(object sender, EventArgs e)
        {
            phEspecifico.Visible = true;
            phGeneral.Visible = false;
            phSubir.Visible = false;
        }
        protected void btnAgregarGral_Onclick(object sender, EventArgs e)
        {
            phGeneral.Visible = true;
            phEspecifico.Visible = false;
            phSubir.Visible = false;
        }
        protected void btnSubir_Onclick(object sender, EventArgs e)
        {
            phSubir.Visible = true;
            phEspecifico.Visible = false;
            phGeneral.Visible = false;
        }
        protected void btnComunicado_Onclick(object sender, EventArgs e)
        {
            Modal.registrarModal("IndexAddModal", "AddModalScript", this);
        }
        #endregion

        #region acciones grid
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Eliminar"))
            {
                int RowIndex = Convert.ToInt32((e.CommandArgument).ToString());
                GridViewRow gvrow = GridView1.Rows[RowIndex];

                string valor = (GridView1.Rows[RowIndex].FindControl("id_comunicado") as Label).Text;
                hdfIDDel.Value = valor;

                Modal.registrarModal("deleteModal", "DeleteModalScript", this);
            }

        }
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            LlenarGridView();
        }
        #endregion


        protected void crearlistaGral(object sender, EventArgs e)
        {
            //int IdSucursal = Getter.Set_IdSucursalDDl(ObjUsuario, ddlSucursalGral);

            //int idPolitica = GetterMax.PoliticaSST(ObjUsuario.Id_empresa);

            //List<politica_sst> ListaPolitica = new List<politica_sst>();
            //ListaPolitica = Getter.PoliticaSST(idPolitica);

            //string Compromisos = string.Empty;
            //string Objetivos = string.Empty;
            //string Anho = string.Empty;

            //if (ListaPolitica.Count == 0)
            //{
            //    Compromisos = "No existen compromisos agregados";
            //    Objetivos = "No existen objetivos agregados";
            //    Anho = "Sin anño";
            //}
            //else
            //{
            //    foreach (var item in ListaPolitica)
            //    {
            //        if (item.compromiso != null) { Compromisos = item.compromiso; }
            //        else { Compromisos = "No existen compromisos agregados"; }

            //        if (item.objetivos != null) { Objetivos = item.objetivos; }
            //        else { Objetivos = "No existen objetivos agregados"; }

            //        Anho = Convert.ToString(item.anho);
            //    }
            //}


            //List<sucursal> ListaSucursal = new List<sucursal>();
            //List<trabajador> ListaTrabajador = new List<trabajador>();

            //ListaSucursal = Getter.Sucursal(ObjUsuario.Id_sucursal);
            //ListaTrabajador = Getter.Trabajador(0, 0, ObjUsuario.Id_sucursal);

            //Document pdfDoc = ManageFiles.InicializarPDF(ListaSucursal, this, "PoliticaSST_", false);
            //pdfDoc.Open();


            //foreach (var itemTrab in ListaTrabajador)
            //{
            //    PdfPTable tablaPDF = new PdfPTable(12);
            //    tablaPDF.WidthPercentage = 100;

            //    ManageFiles.AddTitulo(pdfDoc, "C", "COMUNICADO POLITICA DE SST");

            //    tablaPDF = ManageFiles.AddMembrete12(tablaPDF, ListaSucursal, ListaTrabajador.Count);


            //    tablaPDF = ManageFiles.AddCelda(tablaPDF, 1, "H4", "C", "1|1|1|1", 12, 1, "azul", "AÑO");
            //    tablaPDF = ManageFiles.AddCelda(tablaPDF, 1, "H3", "C", "1|1|1|1", 12, 1, "", Anho);

            //    tablaPDF = ManageFiles.AddCelda(tablaPDF, 1, "H4", "C", "1|1|1|1", 12, 1, "azul", "COMPROMISO DE LA EMPRESA");
            //    tablaPDF = ManageFiles.AddCeldaHTML(tablaPDF, "1|1|1|1", 12, 1, Compromisos);

            //    tablaPDF = ManageFiles.AddCelda(tablaPDF, 1, "H4", "C", "1|1|1|1", 12, 1, "azul", "EN TAL SENTIDO AL EMPRESA SE COMPROMETE A");
            //    tablaPDF = ManageFiles.AddCeldaHTML(tablaPDF, "1|1|1|1", 12, 1, Objetivos);

            //    tablaPDF = ManageFiles.AddCelda(tablaPDF, 1, "H4", "C", "1|1|1|1", 5, 1, "azul", "TRABAJADOR AL QUE FUE COMUNICADO");
            //    tablaPDF = ManageFiles.AddCelda(tablaPDF, 1, "H4", "C", "1|1|1|1", 5, 1, "azul", "FIRMA");
            //    tablaPDF = ManageFiles.AddCelda(tablaPDF, 1, "H4", "C", "1|1|0|1", 5, 1, "", string.Empty + itemTrab.primer_nombre + " " + itemTrab.primer_apellido);
            //    tablaPDF = ManageFiles.AddCelda(tablaPDF, 1, "H4", "C", "1|1|0|1", 5, 1, "", " ");
            //    tablaPDF = ManageFiles.AddCelda(tablaPDF, 1, "H4", "C", "0|1|1|1", 5, 1, "", " ");
            //    tablaPDF = ManageFiles.AddCelda(tablaPDF, 1, "H4", "C", "0|1|1|1", 5, 1, "", " ");


            //    tablaPDF = ManageFiles.Footer(tablaPDF, ListaTrabajador.Count);

            //    pdfDoc.Add(tablaPDF);
            //    pdfDoc.NewPage();
            //}

            //pdfDoc.Close();
            //Response.Write(pdfDoc);
            //Response.End();
        }

        protected void Guardar(object sender, EventArgs e)
        {
            //int IdSucursal = Getter.Set_IdSucursalDDl(ObjUsuario, ddlSucursal);

            //int idPolitica = GetterMax.PoliticaSST(ObjUsuario.Id_empresa);
            //List<politica_sst> ListaPolitica = new List<politica_sst>();
            //ListaPolitica = Getter.PoliticaSST(idPolitica);

            //string Compromisos = string.Empty;
            //string Objetivos = string.Empty;
            //string Anho = string.Empty;

            //if (ListaPolitica.Count == 0)
            //{
            //    Compromisos = "No existen compromisos agregados";
            //    Objetivos = "No existen objetivos agregados";
            //    Anho = "Sin anño";
            //}
            //else
            //{
            //    foreach (var item in ListaPolitica)
            //    {
            //        if (item.compromiso != null) { Compromisos = item.compromiso; }
            //        else { Compromisos = "No existen compromisos agregados"; }

            //        if (item.objetivos != null) { Objetivos = item.objetivos; }
            //        else { Objetivos = "No existen objetivos agregados"; }

            //        Anho = Convert.ToString(item.anho);
            //    }
            //}

            //Tuple<Document, PdfPTable> DocumentoPDF = ManageFiles.PdfParte1(
            //    IdSucursal,
            //    "PoliticaSST_",
            //    "COMUNICADO POLITICA DE SST",
            //    this);

            //#region cuerpo

            //DocumentoPDF = Tuple.Create(DocumentoPDF.Item1, ManageFiles.AddCelda(DocumentoPDF.Item2, 1, "H4", "C", "1|1|1|1", 12, 1, "azul", "AÑO"));
            //DocumentoPDF = Tuple.Create(DocumentoPDF.Item1, ManageFiles.AddCelda(DocumentoPDF.Item2, 1, "H3", "C", "1|1|1|1", 12, 1, "", Anho));

            //DocumentoPDF = Tuple.Create(DocumentoPDF.Item1, ManageFiles.AddCelda(DocumentoPDF.Item2, 1, "H4", "C", "1|1|1|1", 12, 1, "azul", "COMPROMISO DE LA EMPRESA"));
            //DocumentoPDF = Tuple.Create(DocumentoPDF.Item1, ManageFiles.AddCeldaHTML(DocumentoPDF.Item2, "1|1|1|1", 12, 1, Compromisos));

            //DocumentoPDF = Tuple.Create(DocumentoPDF.Item1, ManageFiles.AddCelda(DocumentoPDF.Item2, 1, "H4", "C", "1|1|1|1", 12, 1, "azul", "EN TAL SENTIDO AL EMPRESA SE COMPROMETE A"));
            //DocumentoPDF = Tuple.Create(DocumentoPDF.Item1, ManageFiles.AddCeldaHTML(DocumentoPDF.Item2, "1|1|1|1", 12, 1, Objetivos));

            //DocumentoPDF = Tuple.Create(DocumentoPDF.Item1, ManageFiles.AddCelda(DocumentoPDF.Item2, 1, "H4", "C", "1|1|1|1", 5, 1, "azul", "TRABAJADOR AL QUE FUE COMUNICADO"));
            //DocumentoPDF = Tuple.Create(DocumentoPDF.Item1, ManageFiles.AddCelda(DocumentoPDF.Item2, 1, "H4", "C", "1|1|1|1", 5, 1, "azul", "FIRMA"));
            //DocumentoPDF = Tuple.Create(DocumentoPDF.Item1, ManageFiles.AddCelda(DocumentoPDF.Item2, 1, "H4", "C", "1|1|0|1", 5, 1, "", string.Empty + ddlTrabajadorEsp.SelectedItem));
            //DocumentoPDF = Tuple.Create(DocumentoPDF.Item1, ManageFiles.AddCelda(DocumentoPDF.Item2, 1, "H4", "C", "1|1|0|1", 5, 1, "", " "));
            //DocumentoPDF = Tuple.Create(DocumentoPDF.Item1, ManageFiles.AddCelda(DocumentoPDF.Item2, 1, "H4", "C", "0|1|1|1", 5, 1, "", " "));
            //DocumentoPDF = Tuple.Create(DocumentoPDF.Item1, ManageFiles.AddCelda(DocumentoPDF.Item2, 1, "H4", "C", "0|1|1|1", 5, 1, "", " "));
            //#endregion


            //ManageFiles.PdfPart2(DocumentoPDF.Item1, DocumentoPDF.Item2, IdSucursal, this);
        }

        protected void btnSubirComunicado_OnClick(object sender, EventArgs e)
        {
            int IdEmpresa = ObjUsuario.Id_empresa;
            int IdSucursal = Getter.Set_IdSucursalDDl(ObjUsuario, ddlSucursalSubir);

            string _ruta = Utilidades.GuardarArchivo(
                flpArchivo,
                IdEmpresa + txtNombreSubir.Text,
                "~/source/archivos/comunicado_politicasst/");

            documento nuevo = new documento()
            {
                nombre = txtNombreSubir.Text,
                id_tabla = Convert.ToInt32(ddlTrabajadorSubir.SelectedValue),
                ruta = _ruta,
                tipo = "ComunicacionPolitica"
            };

            ObjUsuario.Error = CRUD.Add_Fila(
                nuevo,
                ObjUsuario.Id_usuario,
                HttpContext.Current.Request.Url.AbsoluteUri);

            Modal.Validacion(this, ObjUsuario.Error, "Add");
            LlenarGridView();
        }

        protected void EliminarRegistro(object sender, EventArgs e)
        {
            documento tabla = new documento();

            ObjUsuario.Error = CRUD.Delete_Fila(tabla,
                Convert.ToInt32(hdfIDDel.Value),
                ObjUsuario.Id_usuario,
                HttpContext.Current.Request.Url.AbsoluteUri);

            Modal.Validacion(this, ObjUsuario.Error, "Delete");
            LlenarGridView();
        }

        #region filtros
        protected void ddlSucursal_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlSucursal.SelectedValue != string.Empty)
            {
                ViewState["sucursal"] = ddlSucursal.SelectedValue;
                Listas.Trabajadores_Sucursal(ddlTrabajador, Convert.ToInt32(ddlSucursal.SelectedValue));
            }
            else
            {
                ViewState["sucursal"] = "0";
            }
            LlenarGridView();
        }
        protected void ddlTrabajador_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlTrabajador.SelectedValue != string.Empty)
            {
                ViewState["trabajador"] = ddlTrabajador.SelectedValue;
            }
            else
            {
                ViewState["trabajador"] = string.Empty;
            }
            LlenarGridView();
        }
        protected void ddlSucursalAdd_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlSucursalAdd.SelectedValue != string.Empty)
            {
                Listas.Trabajadores_Sucursal(ddlTrabajadorEsp, Convert.ToInt32(ddlSucursalAdd.SelectedValue));
            }
        }
        protected void ddlSucursalSubir_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlSucursalSubir.SelectedValue != string.Empty)
            {
                Listas.Trabajadores_Sucursal(ddlTrabajadorSubir, Convert.ToInt32(ddlSucursalSubir.SelectedValue));
            }
        }
        protected void BuscarRegistro(object sender, EventArgs e)
        {
            if (txtSearch.Text != string.Empty)
            {
                ViewState["sWhere"] = txtSearch.Text;
            }
            else
            {
                ViewState["sWhere"] = string.Empty;
            }
            LlenarGridView();
        }
        #endregion
    }
}