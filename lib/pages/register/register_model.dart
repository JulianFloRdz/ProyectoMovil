import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegisterModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for CorreoRegistro widget.
  TextEditingController? correoRegistroController;
  String? Function(BuildContext, String?)? correoRegistroControllerValidator;
  // State field(s) for ContraRegistro widget.
  TextEditingController? contraRegistroController;
  late bool contraRegistroVisibility;
  String? Function(BuildContext, String?)? contraRegistroControllerValidator;
  // State field(s) for RepContra widget.
  TextEditingController? repContraController;
  late bool repContraVisibility;
  String? Function(BuildContext, String?)? repContraControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    contraRegistroVisibility = false;
    repContraVisibility = false;
  }

  void dispose() {
    correoRegistroController?.dispose();
    contraRegistroController?.dispose();
    repContraController?.dispose();
  }

  /// Additional helper methods are added here.

}
