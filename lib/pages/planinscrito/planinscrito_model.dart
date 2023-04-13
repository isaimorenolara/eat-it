import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class PlaninscritoModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  List<String> platillosdelplan = [];
  void addToPlatillosdelplan(String item) => platillosdelplan.add(item);
  void removeFromPlatillosdelplan(String item) => platillosdelplan.remove(item);
  void removeAtIndexFromPlatillosdelplan(int index) =>
      platillosdelplan.removeAt(index);

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {}

  /// Additional helper methods are added here.

}
