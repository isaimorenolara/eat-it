import '/auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegistrarModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for nombreField widget.
  TextEditingController? nombreFieldController;
  String? Function(BuildContext, String?)? nombreFieldControllerValidator;
  // State field(s) for correoField widget.
  TextEditingController? correoFieldController;
  String? Function(BuildContext, String?)? correoFieldControllerValidator;
  // State field(s) for contrasenaField widget.
  TextEditingController? contrasenaFieldController;
  late bool contrasenaFieldVisibility;
  String? Function(BuildContext, String?)? contrasenaFieldControllerValidator;
  // State field(s) for contrasenaField2 widget.
  TextEditingController? contrasenaField2Controller;
  late bool contrasenaField2Visibility;
  String? Function(BuildContext, String?)? contrasenaField2ControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    contrasenaFieldVisibility = false;
    contrasenaField2Visibility = false;
  }

  void dispose() {
    nombreFieldController?.dispose();
    correoFieldController?.dispose();
    contrasenaFieldController?.dispose();
    contrasenaField2Controller?.dispose();
  }

  /// Additional helper methods are added here.

}
