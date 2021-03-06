﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SGSSTC.Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="es">

<head runat="server">
    <meta charset="utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>SGSSTC</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700" rel="stylesheet" />

    <link rel="stylesheet" href="splash/css/animate.css" />
    <link rel="stylesheet" href="splash/css/icomoon.css">
    <link rel="stylesheet" href="splash/css/themify-icons.css" />
    <link rel="stylesheet" href="splash/css/bootstrap.css" />
    <link rel="stylesheet" href="splash/css/magnific-popup.css" />
    <link rel="stylesheet" href="splash/css/owl.carousel.min.css" />
    <link rel="stylesheet" href="splash/css/owl.theme.default.min.css" />
    <link rel="stylesheet" href="splash/css/style.css" />

    <script src="splash/js/modernizr-2.6.2.min.js"></script>
</head>
<body>

    <form id="form2" runat="server" class="form-signin">
        <asp:Label ID="lblValidado" runat="server" Text="" Visible="False"></asp:Label>

        <div class="gtco-loader"></div>

        <nav class="gtco-nav" role="navigation">
            <div class="gtco-container">
                <div class="row">
                    <div class="col-sm-4 col-xs-12">
                        <div id="gtco-logo"><a href="index.html">Grupo<em>Li</em></a></div>
                    </div>
                    <div class="col-xs-8 text-right menu-1">
                        <ul>
                            <li><a href="#noticias">Noticias</a></li>
                            <li><a href="#faq">FAQ</a></li>
                            <li class="has-dropdown">
                                <a href="#">Documentos</a>
                                <ul class="dropdown">
                                    <li><a href="#">Decretos</a></li>
                                    <li><a href="#">Guias Técnicas</a></li>
                                    <li><a href="#">Resoluciones</a></li>
                                    <li><a href="#">Leyes</a></li>
                                    <li><a href="#">Otros</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>

        <header id="gtco-header" class="gtco-cover" role="banner" style="background-image: url(splash/images/img_4.jpg)">
            <div class="overlay"></div>
            <div class="gtco-container">
                <div class="row">
                    <div class="col-md-12 col-sm-12  text-left">
                        <div class="row row-mt-15em">
                            <div class="col-md-7 col-sm-7 mt-text animate-box" data-animate-effect="fadeInUp" style="margin-top: 0;">
                                <style type="text/css">
                                    /* Table 3 Style */
                                    table.table3 {
                                        font-family: Arial;
                                        font-size: 16px;
                                        font-style: normal;
                                        font-weight: normal;
                                        letter-spacing: -1px;
                                        line-height: 1.7em;
                                        text-align: center;
                                        border-collapse: collapse;
                                    }

                                    .table3 thead th {
                                        text-align: center;
                                        padding: 6px 10px;
                                        color: #444;
                                        font-weight: bold;
                                        text-shadow: 1px 1px 1px #fff;
                                        border-bottom: 5px solid #444;
                                    }

                                        .table3 thead th:empty {
                                            background: transparent;
                                            border: none;
                                        }

                                    .table3 thead :nth-child(1) {
                                        background-color: #096A9F;
                                    }

                                    .table3 thead :nth-child(2),
                                    .table3 thead :nth-child(3) {
                                        background-color: #45A8DF;
                                    }


                                    .table3 thead :nth-child(4),
                                    .table3 thead :nth-child(5),
                                    .table3 thead :nth-child(6),
                                    .table3 thead :nth-child(7),
                                    .table3 thead :nth-child(8) {
                                        background-color: #444;
                                        color: #444;
                                        border-bottom: 1px solid #444;
                                        background: -webkit-gradient( linear, left bottom, left top, color-stop(0.39, rgb(189,189,189)), color-stop(0.7, rgb(224,224,224)) );
                                        background: -moz-linear-gradient( center bottom, rgb(189,189,189) 39%, rgb(224,224,224) 70% );
                                        text-shadow: 1px 1px 1px #fff;
                                    }

                                    .table3 thead :nth-child(1) {
                                        -moz-border-radius: 5px 0px 0px 0px;
                                        border-top-left-radius: 5px;
                                    }

                                    .table3 thead :nth-child(8) {
                                        -moz-border-radius: 0px 5px 0px 0px;
                                        border-top-right-radius: 5px;
                                    }

                                    .table3 tbody td {
                                        padding: 10px;
                                    }

                                        .table3 tbody td:nth-child(even) {
                                            background-color: #444;
                                            color: #444;
                                            border-bottom: 1px solid #444;
                                            background: -webkit-gradient( linear, left bottom, left top, color-stop(0.39, rgb(189,189,189)), color-stop(0.7, rgb(224,224,224)) );
                                            background: -moz-linear-gradient( center bottom, rgb(189,189,189) 39%, rgb(224,224,224) 70% );
                                            text-shadow: 1px 1px 1px #fff;
                                        }

                                        .table3 tbody td:nth-child(odd) {
                                            background-color: #444;
                                            color: #444;
                                            border-bottom: 1px solid #444;
                                            background: -webkit-gradient( linear, left bottom, left top, color-stop(0.39, rgb(189,189,189)), color-stop(0.7, rgb(224,224,224)) );
                                            background: -moz-linear-gradient( center bottom, rgb(189,189,189) 39%, rgb(224,224,224) 70% );
                                            text-shadow: 1px 1px 1px #fff;
                                        }

                                        .table3 tbody td:nth-last-child(1) {
                                            border-right: 1px solid #222;
                                        }

                                    .table3 tbody th {
                                        color: #696969;
                                        text-align: right;
                                        padding: 0px 10px;
                                        border-right: 1px solid #aaa;
                                    }

                                    .table3 tbody td:nth-child(1) {
                                        background-color: #096A9F;
                                        color: #444;
                                        border-bottom: 1px solid #444;
                                        background: -webkit-gradient( linear, left bottom, left top, color-stop(0.39, #096A9F), color-stop(0.7, #3d9cd0) );
                                        text-align: center;
                                        padding: 6px 10px;
                                        font-weight: bold;
                                        text-shadow: 1px 1px 1px #fff;
                                    }

                                    .table3 tbody td:nth-child(2),
                                    .table3 tbody td:nth-child(3) {
                                        background-color: #45A8DF;
                                        color: #444;
                                        border-bottom: 1px solid #444;
                                        background: -webkit-gradient( linear, left bottom, left top, color-stop(0.39, #45A8DF), color-stop(0.7, #bde5fb) );
                                        text-shadow: 1px 1px 1px #fff;
                                    }
                                </style>

                                <div class="row">
                                    <br />
                                    <table class="table3">
                                        <thead>
                                            <tr>
                                                <th>Plazos de<br>
                                                    Cumplimiento</th>
                                                <th>Etapas</th>
                                                <th>Num Empresas</th>
                                                <th>Región<br>
                                                    Central</th>
                                                <th>Región<br>
                                                    SurOccidental</th>
                                                <th>Región<br>
                                                    Oriental</th>
                                                <th>Región<br>
                                                    Caribe</th>
                                                <th>Región<br>
                                                    NorOccidental</th>
                                            </tr>
                                        </thead>

                                        <tbody>
                                            <tr>
                                                <td>Jun-Ago 2017</td>
                                                <td>Evaluación Inicial</td>
                                                <td>0</td>
                                                <td>0%</td>
                                                <td>0%</td>
                                                <td>0%</td>
                                                <td>0%</td>
                                                <td>0%</td>
                                            </tr>
                                            <tr>
                                                <td>Sep-Dic 2017</td>
                                                <td>Planear</td>
                                                <td>0</td>
                                                <td>0%</td>
                                                <td>0%</td>
                                                <td>0%</td>
                                                <td>0%</td>
                                                <td>0%</td>
                                            </tr>
                                            <tr>
                                                <td>Ene-Dic 2018</td>
                                                <td>Hacer</td>
                                                <td>0</td>
                                                <td>0%</td>
                                                <td>0%</td>
                                                <td>0%</td>
                                                <td>0%</td>
                                                <td>0%</td>
                                            </tr>
                                            <tr>
                                                <td>Ene-Mar 2019</td>
                                                <td>Verificar</td>
                                                <td>0</td>
                                                <td>0%</td>
                                                <td>0%</td>
                                                <td>0%</td>
                                                <td>0%</td>
                                                <td>0%</td>
                                            </tr>
                                            <tr>
                                                <td>Ene 2019</td>
                                                <td>Actuar</td>
                                                <td>0</td>
                                                <td>0%</td>
                                                <td>0%</td>
                                                <td>0%</td>
                                                <td>0%</td>
                                                <td>0%</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>

                            <div class="col-md-4 col-sm-4 col-md-push-1 animate-box" data-animate-effect="fadeInRight"
                                style="position: absolute; top: 20%; left: 70%;">

                                <div class="form-wrap">
                                    <div class="tab">
                                        <ul class="tab-menu">
                                            <li class="active gtco-first"><a href="#" data-tab="login">Iniciar Sesión</a></li>
                                            <li class="gtco-second"><a href="#" data-tab="signup">Recuperar</a></li>
                                        </ul>
                                        <div class="tab-content">
                                            <div class="tab-content-inner active" data-content="login">
                                                <span id="reauth-email" class="reauth-email"></span>

                                                <asp:ScriptManager runat="server" ID="ScriptManager1" />
                                                <asp:HiddenField runat="server" ID="hfUsuarioActual" />
                                                <asp:HiddenField runat="server" ID="hfClaveActual" />

                                                <div class="row form-group">
                                                    <div class="col-md-12 col-sm-12">
                                                        <label for="username">Usuario</label>

                                                        <asp:TextBox ID="Usuario" runat="server" TextMode="SingleLine"
                                                            ClientIDMode="Static" CssClass="form-control" placeholder="Usuario"
                                                            data-toggle="tooltip" data-placement="right" title="Ingrese Usuario"></asp:TextBox>
                                                    </div>
                                                </div>

                                                <div class="row form-group">
                                                    <div class="col-md-12">
                                                        <label for="password">Contraseña</label>
                                                        <asp:TextBox ID="Clave" runat="server" TextMode="Password" ClientIDMode="Static"
                                                            CssClass="form-control" placeholder="Clave"
                                                            data-placement="right" title="Ingrese Clave"></asp:TextBox>
                                                    </div>
                                                </div>

                                                <div class="row form-group">
                                                    <div class="col-md-12">
                                                        <asp:Button ID="bAceptar" runat="server" Text="Iniciar Sesión"
                                                            class="btn btn-primary" OnClick="bAceptar_Click" />
                                                    </div>
                                                </div>

                                                <asp:Literal ID="Msj" runat="server"></asp:Literal>
                                            </div>

                                            <div class="tab-content-inner" data-content="signup">
                                                <div class="row form-group">
                                                    <div class="col-md-12">
                                                        <label for="username">Usuario or Email</label>
                                                        <asp:TextBox type="email" ID="txtEmail" runat="server" TextMode="SingleLine" ClientIDMode="Static" CssClass="form-control" placeholder="micorreo@correo.com"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ErrorMessage="<p>Campo Obligatorio!</p>"
                                                            SetFocusOnError="true" Display="Dynamic" ForeColor="#B50128" Font-Size="10"
                                                            Font-Bold="true" ControlToValidate="txtEmail" runat="server"
                                                            ValidationGroup="ValidationAdd" />
                                                    </div>
                                                </div>

                                                <div class="row form-group">
                                                    <div class="col-md-12">
                                                        <asp:Button ID="bEnviar" runat="server" Text="Enviar Clave" class="btn btn-primary" OnClick="bEnviar_Click" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>

        <section id="cumplimiento1">
            <div class="gtco-section border-bottom" style="padding-top: 0; padding-bottom: 0;">
            </div>
        </section>

        <style>
            #gtco-products .item h4 {
                color: white;
                text-align: justify;
            }
        </style>

        <section id="noticias">
            <div id="gtco-products">
                <div class="gtco-container">
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2 text-center gtco-heading">
                            <h2>Noticias</h2>
                        </div>
                    </div>
                    <div class="row">
                        <div class="owl-carousel owl-carousel-carousel">

                            <div class="item">
                                <a target="_blank" href="http://www.mintrabajo.gov.co/febrero-2017/7749-continua-dialogo-entre-mintrabajo-y-sindicatos.html">
                                    <img src="splash/images/noticias/noticia1.jpg">
                                    <h5>Viernes, 26 de Mayo de 2017</h5>
                                    <h4>Continúa diálogo entre MinTrabajo y sindicatos</h4>
                                </a>
                            </div>
                            <div class="item">
                                <a href="http://www.mintrabajo.gov.co/febrero-2017/7748-mesa-de-negociacion-colectiva-del-sector-publico-continuara-discusiones-el-proximo-martes.html">
                                    <img src="splash/images/noticias/noticia2.jpg">
                                    <h5>Viernes, 26 de Mayo de 2017</h5>
                                    <h4>Mesa de Negociación Colectiva del Sector Público continuará discusiones el próximo martes</h4>
                                </a>
                            </div>
                            <div class="item">
                                <a href="#">
                                    <img src="splash/images/noticias/noticia3.jpg">
                                    <h5>Jueves, 25 de Mayo de 2017</h5>
                                    <h4>UNITAR, agencia de la ONU, brindará al país cooperación en temas de reinserción laboral en el posconflicto</h4>
                                </a>
                            </div>
                            <div class="item">
                                <a href="http://www.mintrabajo.gov.co/febrero-2017/7746-gobierno-apoya-iniciativa-de-recargo-nocturno-a-partir-de-las-9-pm-mintrabajo.html">
                                    <img src="splash/images/noticias/noticia4.jpg">
                                    <h5>Jueves, 25 de Mayo de 2017</h5>
                                    <h4>“Gobierno apoya iniciativa de recargo nocturno a partir de las 9 p.m.”: MinTrabajo</h4>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <style>
            .feature-left .feature-copy {
                width: 90%;
            }

            .feature-left .icon {
                width: 10%;
            }
        </style>
        <section id="faq">

            <div class="gtco-section border-bottom">
                <div class="gtco-container">
                    <div class="row">
                        <div class="col-md-12 text-center gtco-heading">
                            <h2>Preguntas Frecuentes</h2>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="feature-left animate-box" data-animate-effect="fadeInLeft">
                                <span class="icon">
                                    <i class="icon-check"></i>
                                </span>
                                <div class="feature-copy">
                                    <h3>Retina Ready</h3>
                                    <p>Facilis ipsum reprehenderit nemo molestias. Aut cum mollitia reprehenderit.</p>
                                </div>
                            </div>

                            <div class="feature-left animate-box" data-animate-effect="fadeInLeft">
                                <span class="icon">
                                    <i class="icon-check"></i>
                                </span>
                                <div class="feature-copy">
                                    <h3>Fully Responsive</h3>
                                    <p>Facilis ipsum reprehenderit nemo molestias. Aut cum mollitia reprehenderit.</p>
                                </div>
                            </div>

                            <div class="feature-left animate-box" data-animate-effect="fadeInLeft">
                                <span class="icon">
                                    <i class="icon-check"></i>
                                </span>
                                <div class="feature-copy">
                                    <h3>Ready To Use</h3>
                                    <p>Facilis ipsum reprehenderit nemo molestias. Aut cum mollitia reprehenderit.</p>
                                </div>
                            </div>

                            <div class="feature-left animate-box" data-animate-effect="fadeInLeft">
                                <span class="icon">
                                    <i class="icon-check"></i>
                                </span>
                                <div class="feature-copy">
                                    <h3>Download Files</h3>
                                    <p>Facilis ipsum reprehenderit nemo molestias. Aut cum mollitia reprehenderit.</p>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

        </section>

        <style>
            #gtco-counter .icon i:before {
                color: white;
            }
        </style>
        <div id="gtco-counter" class="gtco-section" style="background-color: #7AA8D0; padding-bottom: 0;">
            <div class="gtco-container">

                <div class="row">
                    <div class="col-md-8 col-md-offset-2 text-center gtco-heading animate-box">
                        <h2 style="color: #fff">Nuestros Números</h2>
                    </div>
                </div>

                <div class="row">

                    <div class="col-md-3 col-sm-6 animate-box" data-animate-effect="fadeInLeft">
                        <div class="feature-center">
                            <span class="icon">
                                <i class="ti-book" style="color: #fff"></i>
                            </span>
                            <span class="counter js-counter" data-from="0" data-to="96" data-speed="5000" data-refresh-interval="50">1</span>
                            <span class="counter-label">Normas Analizadas</span>

                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 animate-box" data-animate-effect="fadeInLeft">
                        <div class="feature-center">
                            <span class="icon">
                                <i class="ti-view-list-alt"></i>
                            </span>
                            <span class="counter js-counter" data-from="0" data-to="97" data-speed="5000" data-refresh-interval="50">1</span>
                            <span class="counter-label">Riesgos Analizados</span>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 animate-box" data-animate-effect="fadeInLeft">
                        <div class="feature-center">
                            <span class="icon">
                                <i class="ti-direction-alt"></i>
                            </span>
                            <span class="counter js-counter" data-from="0" data-to="100" data-speed="5000" data-refresh-interval="50">1</span>
                            <span class="counter-label">Opciones de gestión</span>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 animate-box" data-animate-effect="fadeInLeft">
                        <div class="feature-center">
                            <span class="icon">
                                <i class="ti-time"></i>
                            </span>
                            <span class="counter js-counter" data-from="0" data-to="10000" data-speed="5000" data-refresh-interval="50">1</span>
                            <span class="counter-label">Horas Programadas</span>

                        </div>
                    </div>

                </div>
            </div>
        </div>

        <footer id="gtco-footer" role="contentinfo" style="padding-top: 0; padding-bottom: 0;">
            <div class="gtco-container">
                <div class="row copyright" style="padding-bottom: 0">
                    <div class="col-md-12">
                        <p class="pull-left">
                            <small class="block">&copy;GrupoLi 2017 Todos los derechos reservados.</small>
                            <small class="block">Desarrollado por <a href="http://www.grupoli.com" target="_blank">GrupoLi.com</a></small>
                        </p>
                    </div>
                </div>
            </div>
        </footer>

        <div class="gototop js-top">
            <a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
        </div>

        <!-- jQuery -->
        <script src="splash/js/jquery.min.js"></script>
        <script src="splash/js/jquery.easing.1.3.js"></script>
        <script src="splash/js/bootstrap.min.js"></script>
        <script src="splash/js/jquery.waypoints.min.js"></script>
        <script src="splash/js/owl.carousel.min.js"></script>
        <script src="splash/js/jquery.countTo.js"></script>
        <script src="splash/js/jquery.magnific-popup.min.js"></script>
        <script src="splash/js/magnific-popup-options.js"></script>
        <script src="splash/js/main.js"></script>
    </form>
</body>

</html>
