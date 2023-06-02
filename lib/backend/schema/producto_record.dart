import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductoRecord extends FirestoreRecord {
  ProductoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Nom_Prod" field.
  String? _nomProd;
  String get nomProd => _nomProd ?? '';
  bool hasNomProd() => _nomProd != null;

  // "PrecioProd" field.
  double? _precioProd;
  double get precioProd => _precioProd ?? 0.0;
  bool hasPrecioProd() => _precioProd != null;

  // "Universo" field.
  int? _universo;
  int get universo => _universo ?? 0;
  bool hasUniverso() => _universo != null;

  // "Personaje" field.
  String? _personaje;
  String get personaje => _personaje ?? '';
  bool hasPersonaje() => _personaje != null;

  // "DescripProd" field.
  String? _descripProd;
  String get descripProd => _descripProd ?? '';
  bool hasDescripProd() => _descripProd != null;

  // "ImgProd" field.
  String? _imgProd;
  String get imgProd => _imgProd ?? '';
  bool hasImgProd() => _imgProd != null;

  void _initializeFields() {
    _nomProd = snapshotData['Nom_Prod'] as String?;
    _precioProd = castToType<double>(snapshotData['PrecioProd']);
    _universo = snapshotData['Universo'] as int?;
    _personaje = snapshotData['Personaje'] as String?;
    _descripProd = snapshotData['DescripProd'] as String?;
    _imgProd = snapshotData['ImgProd'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Producto');

  static Stream<ProductoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductoRecord.fromSnapshot(s));

  static Future<ProductoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductoRecord.fromSnapshot(s));

  static ProductoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductoRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createProductoRecordData({
  String? nomProd,
  double? precioProd,
  int? universo,
  String? personaje,
  String? descripProd,
  String? imgProd,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Nom_Prod': nomProd,
      'PrecioProd': precioProd,
      'Universo': universo,
      'Personaje': personaje,
      'DescripProd': descripProd,
      'ImgProd': imgProd,
    }.withoutNulls,
  );

  return firestoreData;
}
