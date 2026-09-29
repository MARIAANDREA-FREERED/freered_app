import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'splash_screen_model.dart';
export 'splash_screen_model.dart';

/// CREA UNA PAGINA SIN COMPONENTES , FONDO BLANCO Y QUE DIGA FreeRed  Y CON
/// EL PIDE DE PAGINA QUE DIGA  created by MARIAANDREA y con un logo que tenga
/// una mano de alto y detras de la mano el simbolo de wifi , nada mas
class SplashScreenWidget extends StatefulWidget {
  const SplashScreenWidget({super.key});

  static String routeName = 'SplashScreen';
  static String routePath = '/splashScreen';

  @override
  State<SplashScreenWidget> createState() => _SplashScreenWidgetState();
}

class _SplashScreenWidgetState extends State<SplashScreenWidget> {
  late SplashScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SplashScreenModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: Stack(
          alignment: AlignmentDirectional(-1, -1),
          children: [
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                FFAppState().miIpLocal = 'http://10.119.242.76:54321';
                safeSetState(() {});

                context.pushNamed(LoginWidget.routeName);
              },
              child: Container(
                alignment: AlignmentDirectional(0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 120,
                          height: 120,
                          child: Stack(
                            alignment: AlignmentDirectional(0, 0),
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0, -0.74),
                                child: Icon(
                                  Icons.wifi_rounded,
                                  color: Color(0x334B39EF),
                                  size: 100,
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-0.28, 0.85),
                                child: Icon(
                                  Icons.back_hand_rounded,
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 80,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'FreeRed',
                          style: FlutterFlowTheme.of(context)
                              .headlineLarge
                              .override(
                                font: GoogleFonts.interTight(
                                  fontWeight: FontWeight.w900,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .fontStyle,
                                ),
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 42,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w900,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .headlineLarge
                                    .fontStyle,
                                lineHeight: 1.4,
                              ),
                        ),
                      ].divide(SizedBox(height: 32)),
                    ),
                    Text(
                      'Bienvenido a la unica app\nde mensajeria que funciona\nSIN INTERNET:\nRegistrese,\nIngrese,\nPruebalo \ny Dile a todos que descarguen \nla APP para que todos tengamos \nlibre acceso a la comunicacion \nen cada rincon del MUNDO.',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.inter(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 1),
              child: Container(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                  child: Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Divider(
                          height: 16,
                          thickness: 1,
                          indent: 32,
                          endIndent: 32,
                          color: FlutterFlowTheme.of(context).alternate,
                        ),
                        Container(
                          height: 16,
                        ),
                        Text(
                          'created by MARIAANDREA',
                          style: FlutterFlowTheme.of(context)
                              .labelLarge
                              .override(
                                font: GoogleFonts.inter(
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .fontStyle,
                                ),
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .fontStyle,
                                decoration: TextDecoration.underline,
                                lineHeight: 1.4,
                              ),
                        ),
                      ].divide(SizedBox(height: 4)),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'splash_screen_widget.dart' show SplashScreenWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SplashScreenModel extends FlutterFlowModel<SplashScreenWidget> {
  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
