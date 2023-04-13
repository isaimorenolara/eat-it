import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NutriPerfilModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for nombreField widget.
  TextEditingController? nombreFieldController;
  String? Function(BuildContext, String?)? nombreFieldControllerValidator;
  // State field(s) for primerField widget.
  TextEditingController? primerFieldController;
  String? Function(BuildContext, String?)? primerFieldControllerValidator;
  // State field(s) for segundoField widget.
  TextEditingController? segundoFieldController;
  String? Function(BuildContext, String?)? segundoFieldControllerValidator;
  // State field(s) for cedulaField widget.
  TextEditingController? cedulaFieldController;
  String? Function(BuildContext, String?)? cedulaFieldControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    nombreFieldController?.dispose();
    primerFieldController?.dispose();
    segundoFieldController?.dispose();
    cedulaFieldController?.dispose();
  }

  /// Additional helper methods are added here.

}
