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
import 'load_prod_model.dart';
export 'load_prod_model.dart';

class LoadProdWidget extends StatefulWidget {
  const LoadProdWidget({Key? key}) : super(key: key);

  @override
  _LoadProdWidgetState createState() => _LoadProdWidgetState();
}

class _LoadProdWidgetState extends State<LoadProdWidget> {
  late LoadProdModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoadProdModel());

    _model.nomProdController ??= TextEditingController();
    _model.precioProdController ??= TextEditingController();
    _model.descProdController ??= TextEditingController();
    _model.univProdController ??= TextEditingController();
    _model.persProdController ??= TextEditingController();
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
        appBar: AppBar(
          backgroundColor: Colors.black,
          automaticallyImplyLeading: false,
          title: Text(
            'Collector\'s Realm',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 390.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(
                          color: Colors.black,
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                300.0, 0.0, 0.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('LoadProd');
                              },
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 24.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 0.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('LogIn');
                              },
                              child: Icon(
                                Icons.person,
                                color: FlutterFlowTheme.of(context).lineColor,
                                size: 24.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 100.0,
                        height: 10.0,
                        decoration: BoxDecoration(
                          color: Color(0x00FFFFFF),
                        ),
                      ),
                      Container(
                        width: 404.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                        alignment:
                            AlignmentDirectional(0.0, 0.050000000000000044),
                        child: Text(
                          'Nuevo Producto',
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontSize: 18.0,
                                  ),
                        ),
                      ),
                      Container(
                        width: 100.0,
                        height: 10.0,
                        decoration: BoxDecoration(
                          color: Color(0x00FFFFFF),
                        ),
                      ),
                      Container(
                        width: 336.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Color(0x00BC2222),
                          borderRadius: BorderRadius.circular(22.0),
                        ),
                        child: Container(
                          width: 336.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFA2A0A0),
                            borderRadius: BorderRadius.circular(22.0),
                          ),
                          alignment:
                              AlignmentDirectional(0.0, 0.050000000000000044),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 8.0, 0.0),
                            child: TextFormField(
                              controller: _model.nomProdController,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Nombre',
                                labelStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                hintText: 'Ingresa el nombre del producto',
                                hintStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                focusedErrorBorder: InputBorder.none,
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                              validator: _model.nomProdControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 100.0,
                        height: 15.0,
                        decoration: BoxDecoration(
                          color: Color(0x00FFFFFF),
                        ),
                      ),
                      Container(
                        width: 336.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFA2A0A0),
                          borderRadius: BorderRadius.circular(22.0),
                        ),
                        alignment:
                            AlignmentDirectional(0.0, 0.050000000000000044),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 8.0, 0.0),
                          child: TextFormField(
                            controller: _model.precioProdController,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Precio',
                              labelStyle:
                                  FlutterFlowTheme.of(context).labelMedium,
                              hintText: 'Ingresa el precio del producto',
                              hintStyle:
                                  FlutterFlowTheme.of(context).labelMedium,
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              focusedErrorBorder: InputBorder.none,
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                            validator: _model.precioProdControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ),
                      Container(
                        width: 100.0,
                        height: 15.0,
                        decoration: BoxDecoration(
                          color: Color(0x00FFFFFF),
                        ),
                      ),
                      Container(
                        width: 336.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFA2A0A0),
                          borderRadius: BorderRadius.circular(22.0),
                        ),
                        alignment:
                            AlignmentDirectional(0.0, 0.050000000000000044),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 8.0, 0.0),
                          child: TextFormField(
                            controller: _model.descProdController,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Descripcion',
                              labelStyle:
                                  FlutterFlowTheme.of(context).labelMedium,
                              hintText: 'Ingresa la descripcion del producto',
                              hintStyle:
                                  FlutterFlowTheme.of(context).labelMedium,
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              focusedErrorBorder: InputBorder.none,
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                            validator: _model.descProdControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ),
                      Container(
                        width: 100.0,
                        height: 15.0,
                        decoration: BoxDecoration(
                          color: Color(0x00FFFFFF),
                        ),
                      ),
                      Container(
                        width: 336.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFA2A0A0),
                          borderRadius: BorderRadius.circular(22.0),
                        ),
                        alignment:
                            AlignmentDirectional(0.0, 0.050000000000000044),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 8.0, 0.0),
                          child: TextFormField(
                            controller: _model.univProdController,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Universo',
                              labelStyle:
                                  FlutterFlowTheme.of(context).labelMedium,
                              hintText:
                                  'Ingrese el universo del producto (1 : DC, 2 : Marvel)',
                              hintStyle:
                                  FlutterFlowTheme.of(context).labelMedium,
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              focusedErrorBorder: InputBorder.none,
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                            validator: _model.univProdControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ),
                      Container(
                        width: 100.0,
                        height: 15.0,
                        decoration: BoxDecoration(
                          color: Color(0x00FFFFFF),
                        ),
                      ),
                      Container(
                        width: 336.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFA2A0A0),
                          borderRadius: BorderRadius.circular(22.0),
                        ),
                        alignment:
                            AlignmentDirectional(0.0, 0.050000000000000044),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 8.0, 0.0),
                          child: TextFormField(
                            controller: _model.persProdController,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Personaje',
                              labelStyle:
                                  FlutterFlowTheme.of(context).labelMedium,
                              hintText:
                                  'Ingrese de que personaje es el producto',
                              hintStyle:
                                  FlutterFlowTheme.of(context).labelMedium,
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              focusedErrorBorder: InputBorder.none,
                            ),
                            style: FlutterFlowTheme.of(context).bodyMedium,
                            validator: _model.persProdControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ),
                      Container(
                        width: 100.0,
                        height: 15.0,
                        decoration: BoxDecoration(
                          color: Color(0x00FFFFFF),
                        ),
                      ),
                      Container(
                        width: 283.0,
                        height: 202.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            final selectedMedia =
                                await selectMediaWithSourceBottomSheet(
                              context: context,
                              imageQuality: 100,
                              allowPhoto: true,
                            );
                            if (selectedMedia != null &&
                                selectedMedia.every((m) => validateFileFormat(
                                    m.storagePath, context))) {
                              setState(() => _model.isDataUploading = true);
                              var selectedUploadedFiles = <FFUploadedFile>[];
                              var downloadUrls = <String>[];
                              try {
                                selectedUploadedFiles = selectedMedia
                                    .map((m) => FFUploadedFile(
                                          name: m.storagePath.split('/').last,
                                          bytes: m.bytes,
                                          height: m.dimensions?.height,
                                          width: m.dimensions?.width,
                                          blurHash: m.blurHash,
                                        ))
                                    .toList();

                                downloadUrls = (await Future.wait(
                                  selectedMedia.map(
                                    (m) async => await uploadData(
                                        m.storagePath, m.bytes),
                                  ),
                                ))
                                    .where((u) => u != null)
                                    .map((u) => u!)
                                    .toList();
                              } finally {
                                _model.isDataUploading = false;
                              }
                              if (selectedUploadedFiles.length ==
                                      selectedMedia.length &&
                                  downloadUrls.length == selectedMedia.length) {
                                setState(() {
                                  _model.uploadedLocalFile =
                                      selectedUploadedFiles.first;
                                  _model.uploadedFileUrl = downloadUrls.first;
                                });
                              } else {
                                setState(() {});
                                return;
                              }
                            }

                            FFAppState().update(() {
                              FFAppState().imgProd = _model.uploadedFileUrl;
                            });
                            await Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.fade,
                                child: FlutterFlowExpandedImageView(
                                  image: Image.network(
                                    FFAppState().imgProd,
                                    fit: BoxFit.contain,
                                  ),
                                  allowRotation: false,
                                  tag: FFAppState().imgProd,
                                  useHeroAnimation: true,
                                ),
                              ),
                            );
                          },
                          child: Hero(
                            tag: FFAppState().imgProd,
                            transitionOnUserGestures: true,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                FFAppState().imgProd,
                                width: 300.0,
                                height: 200.0,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 100.0,
                        height: 15.0,
                        decoration: BoxDecoration(
                          color: Color(0x00FFFFFF),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              FFButtonWidget(
                onPressed: () async {
                  final productoCreateData = createProductoRecordData(
                    nomProd: _model.nomProdController.text,
                    precioProd:
                        double.tryParse(_model.precioProdController.text),
                    universo: int.tryParse(_model.univProdController.text),
                    personaje: _model.persProdController.text,
                    descripProd: _model.descProdController.text,
                    imgProd: FFAppState().imgProd,
                  );
                  await ProductoRecord.collection.doc().set(productoCreateData);
                  await showDialog(
                    context: context,
                    builder: (alertDialogContext) {
                      return AlertDialog(
                        title: Text('Creado Correctamente'),
                        content:
                            Text('Se agrego su producto de manera exitosa'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(alertDialogContext),
                            child: Text('Ok'),
                          ),
                        ],
                      );
                    },
                  );

                  context.pushNamed('HomePage');
                },
                text: 'Guardar Producto',
                options: FFButtonOptions(
                  width: 175.0,
                  height: 30.0,
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: Colors.black,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                      ),
                  elevation: 3.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
