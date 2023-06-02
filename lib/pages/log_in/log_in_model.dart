import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LogInModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for CorreoInicio widget.
  TextEditingController? correoInicioController;
  String? Function(BuildContext, String?)? correoInicioControllerValidator;
  // State field(s) for ContraInicio widget.
  TextEditingController? contraInicioController;
  late bool contraInicioVisibility;
  String? Function(BuildContext, String?)? contraInicioControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    contraInicioVisibility = false;
  }

  void dispose() {
    correoInicioController?.dispose();
    contraInicioController?.dispose();
  }

  /// Additional helper methods are added here.

}
