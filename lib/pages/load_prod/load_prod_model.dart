import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class LoadProdModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for NomProd widget.
  TextEditingController? nomProdController;
  String? Function(BuildContext, String?)? nomProdControllerValidator;
  // State field(s) for PrecioProd widget.
  TextEditingController? precioProdController;
  String? Function(BuildContext, String?)? precioProdControllerValidator;
  // State field(s) for DescProd widget.
  TextEditingController? descProdController;
  String? Function(BuildContext, String?)? descProdControllerValidator;
  // State field(s) for UnivProd widget.
  TextEditingController? univProdController;
  String? Function(BuildContext, String?)? univProdControllerValidator;
  // State field(s) for PersProd widget.
  TextEditingController? persProdController;
  String? Function(BuildContext, String?)? persProdControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    nomProdController?.dispose();
    precioProdController?.dispose();
    descProdController?.dispose();
    univProdController?.dispose();
    persProdController?.dispose();
  }

  /// Additional helper methods are added here.

}
