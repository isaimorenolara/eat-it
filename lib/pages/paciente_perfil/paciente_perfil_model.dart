import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PacientePerfilModel extends FlutterFlowModel {
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
  // State field(s) for edadField widget.
  TextEditingController? edadFieldController;
  String? Function(BuildContext, String?)? edadFieldControllerValidator;
  // State field(s) for pesoField widget.
  TextEditingController? pesoFieldController;
  String? Function(BuildContext, String?)? pesoFieldControllerValidator;
  // State field(s) for alturaField widget.
  TextEditingController? alturaFieldController;
  String? Function(BuildContext, String?)? alturaFieldControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownController;
  // State field(s) for enfermedadesField widget.
  final enfermedadesFieldKey1 = GlobalKey();
  TextEditingController? enfermedadesFieldController1;
  String? enfermedadesFieldSelectedOption1;
  String? Function(BuildContext, String?)?
      enfermedadesFieldController1Validator;
  // State field(s) for enfermedadesField widget.
  final enfermedadesFieldKey2 = GlobalKey();
  TextEditingController? enfermedadesFieldController2;
  String? enfermedadesFieldSelectedOption2;
  String? Function(BuildContext, String?)?
      enfermedadesFieldController2Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    nombreFieldController?.dispose();
    primerFieldController?.dispose();
    segundoFieldController?.dispose();
    edadFieldController?.dispose();
    pesoFieldController?.dispose();
    alturaFieldController?.dispose();
  }

  /// Additional helper methods are added here.

}
