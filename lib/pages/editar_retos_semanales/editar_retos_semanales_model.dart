import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditarRetosSemanalesModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  int? selection;

  ///  State fields for stateful widgets in this page.

  // State field(s) for tituloField widget.
  TextEditingController? tituloFieldController;
  String? Function(BuildContext, String?)? tituloFieldControllerValidator;
  // State field(s) for descripcionField widget.
  TextEditingController? descripcionFieldController;
  String? Function(BuildContext, String?)? descripcionFieldControllerValidator;
  // State field(s) for semanaField widget.
  TextEditingController? semanaFieldController;
  String? Function(BuildContext, String?)? semanaFieldControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    tituloFieldController?.dispose();
    descripcionFieldController?.dispose();
    semanaFieldController?.dispose();
  }

  /// Additional helper methods are added here.

}
