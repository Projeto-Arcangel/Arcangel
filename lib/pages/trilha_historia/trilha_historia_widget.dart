import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'trilha_historia_model.dart';
export 'trilha_historia_model.dart';

/// Tela da trilha de história
class TrilhaHistoriaWidget extends StatefulWidget {
  const TrilhaHistoriaWidget({super.key});

  static String routeName = 'TrilhaHistoria';
  static String routePath = '/trilhaHistoria';

  @override
  State<TrilhaHistoriaWidget> createState() => _TrilhaHistoriaWidgetState();
}

class _TrilhaHistoriaWidgetState extends State<TrilhaHistoriaWidget> {
  late TrilhaHistoriaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TrilhaHistoriaModel());
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
        backgroundColor: Color(0xFF13141C),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 393.0,
                    height: 99.0,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-0.01, 0.04),
                          child: CircularPercentIndicator(
                            percent: 0.7,
                            radius: 34.0,
                            lineWidth: 4.0,
                            animation: true,
                            animateFromLastPercent: true,
                            progressColor:
                                FlutterFlowTheme.of(context).geography,
                            backgroundColor: Color(0xFF13141C),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.01, 0.03),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(ConfiguracoesWidget.routeName);
                            },
                            child: Container(
                              width: 54.0,
                              height: 54.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).geography,
                                image: DecorationImage(
                                  fit: BoxFit.none,
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  image: Image.asset(
                                    'assets/images/Union.png',
                                  ).image,
                                ),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(50.0),
                                  bottomRight: Radius.circular(50.0),
                                  topLeft: Radius.circular(50.0),
                                  topRight: Radius.circular(50.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.67, -0.02),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(EscolhaMateriaWidget.routeName);
                            },
                            child: Container(
                              width: 44.0,
                              height: 33.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: Image.asset(
                                    'assets/images/Regador.png',
                                  ).image,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.83, -0.05),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 9.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  width: 37.0,
                                  height: 26.0,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: Image.asset(
                                        'assets/images/Moedas.png',
                                      ).image,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    '10.000',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          letterSpacing: 0.0,
                                          useGoogleFonts:
                                              !FlutterFlowTheme.of(context)
                                                  .bodyMediumIsCustom,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Builder(
                  builder: (context) {
                    final fases = List.generate(
                            random_data.randomInteger(20, 20),
                            (index) => random_data.randomInteger(20, 20))
                        .toList()
                        .take(20)
                        .toList();

                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      reverse: true,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: fases.length,
                      itemBuilder: (context, fasesIndex) {
                        final fasesItem = fases[fasesIndex];
                        return Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 20.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    valueOrDefault<double>(
                                      () {
                                        if (functions
                                                .calcularPosicao(fasesIndex)
                                                .toString() ==
                                            '0') {
                                          return 40.0;
                                        } else if (functions
                                                .calcularPosicao(fasesIndex)
                                                .toString() ==
                                            '1') {
                                          return 140.0;
                                        } else if (functions
                                                .calcularPosicao(fasesIndex)
                                                .toString() ==
                                            '2') {
                                          return 240.0;
                                        } else {
                                          return 140.0;
                                        }
                                      }(),
                                      0.0,
                                    ),
                                    0.0,
                                    0.0,
                                    0.0),
                                child: Container(
                                  width: 98.0,
                                  height: 79.0,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: Image.asset(
                                        'assets/images/Tipo_Fase_7_(azul).png',
                                      ).image,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
