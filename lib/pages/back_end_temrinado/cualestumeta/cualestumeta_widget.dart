import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cualestumeta_model.dart';
export 'cualestumeta_model.dart';

class CualestumetaWidget extends StatefulWidget {
  const CualestumetaWidget({Key? key}) : super(key: key);

  @override
  _CualestumetaWidgetState createState() => _CualestumetaWidgetState();
}

class _CualestumetaWidgetState extends State<CualestumetaWidget> {
  late CualestumetaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CualestumetaModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(-1.0, -1.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(48.0, 83.0, 0.0, 0.0),
                  child: Container(
                    width: 21.4,
                    height: 21.4,
                    decoration: BoxDecoration(
                      color: Color(0x00FFFFFF),
                      image: DecorationImage(
                        fit: BoxFit.contain,
                        image: Image.asset(
                          'assets/images/back_(1).png',
                        ).image,
                      ),
                      shape: BoxShape.circle,
                    ),
                    alignment: AlignmentDirectional(0.0, 0.0),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.4, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '¿Cuál es tu meta?',
                        textAlign: TextAlign.start,
                        style:
                            FlutterFlowTheme.of(context).displaySmall.override(
                                  fontFamily: 'Poppins',
                                  fontSize: 32.0,
                                  fontWeight: FontWeight.w600,
                                  lineHeight: 1.0,
                                ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 67.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  setState(() {
                                    FFAppState().Meta = 'Bajar de peso';
                                  });
                                },
                                text:
                                    'Bajar de peso                                                 ',
                                options: FFButtonOptions(
                                  width: 294.0,
                                  height: 43.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: Color(0x004B39EF),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF181818),
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                  borderSide: BorderSide(
                                    color: Color(0xFF181818),
                                    width: 0.5,
                                  ),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 37.0, 0.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    setState(() {
                                      FFAppState().Meta = 'Mantener peso';
                                    });
                                  },
                                  text:
                                      'Mantener peso                                                 ',
                                  options: FFButtonOptions(
                                    width: 294.0,
                                    height: 43.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: Color(0x004B39EF),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF181818),
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                    borderSide: BorderSide(
                                      color: Color(0xFF181818),
                                      width: 0.5,
                                    ),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 37.0, 0.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    setState(() {
                                      FFAppState().Meta =
                                          'Aumentar masa muscular';
                                    });
                                  },
                                  text:
                                      'Aumentar masa muscular                                                 ',
                                  options: FFButtonOptions(
                                    width: 294.0,
                                    height: 43.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: Color(0x004B39EF),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF181818),
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                    borderSide: BorderSide(
                                      color: Color(0xFF181818),
                                      width: 0.5,
                                    ),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 37.0, 0.0, 0.0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    setState(() {
                                      FFAppState().Meta = 'Perder grasa';
                                    });
                                  },
                                  text:
                                      'Perder grasa                                                 ',
                                  options: FFButtonOptions(
                                    width: 294.0,
                                    height: 43.0,
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconPadding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: Color(0x004B39EF),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF181818),
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                    borderSide: BorderSide(
                                      color: Color(0xFF181818),
                                      width: 0.5,
                                    ),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 67.0, 0.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  context.pushNamedAuth(
                                      'PacienteSinPlan', mounted);

                                  GoRouter.of(context).prepareAuthEvent();
                                  if (FFAppState().contrasena !=
                                      FFAppState().contrasena) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Passwords don\'t match!',
                                        ),
                                      ),
                                    );
                                    return;
                                  }

                                  final user = await createAccountWithEmail(
                                    context,
                                    FFAppState().email,
                                    FFAppState().contrasena,
                                  );
                                  if (user == null) {
                                    return;
                                  }

                                  final usuarioCreateData = {
                                    ...createUsuarioRecordData(
                                      email: FFAppState().email,
                                      displayName: FFAppState().Nombre,
                                      photoUrl: '',
                                      createdTime: getCurrentTimestamp,
                                      uid: random_data.randomString(
                                        11,
                                        12,
                                        true,
                                        true,
                                        true,
                                      ),
                                      phoneNumber: '',
                                      editedTime: getCurrentTimestamp,
                                      bio: '',
                                      userName: '',
                                      nombre: FFAppState().Nombre,
                                      primerApellido:
                                          FFAppState().PrimerApellido,
                                      segundoApellido: '',
                                      planes: '',
                                      edad: FFAppState().Edad,
                                      genero: FFAppState().Genero,
                                      peso: FFAppState().Peso,
                                      altura: FFAppState().Estatura,
                                      meta: FFAppState().Meta,
                                      cedula: FFAppState().Cedula,
                                      alimentosquenomegustan:
                                          FFAppState().Alimentonogusta,
                                      pacienteUsuario:
                                          FFAppState().PacienteUsuario,
                                    ),
                                    'Enfermedad': FFAppState().Enfermedad,
                                    'Alergias': FFAppState().Alergias,
                                    'Alimento': FFAppState().Alimento,
                                  };
                                  await UsuarioRecord.collection
                                      .doc(user.uid)
                                      .update(usuarioCreateData);
                                },
                                text: 'Listo',
                                options: FFButtonOptions(
                                  width: 273.0,
                                  height: 50.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: Color(0xFF1EF18C),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
