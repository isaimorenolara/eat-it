import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'recetas_consulta_record.g.dart';

abstract class RecetasConsultaRecord
    implements Built<RecetasConsultaRecord, RecetasConsultaRecordBuilder> {
  static Serializer<RecetasConsultaRecord> get serializer =>
      _$recetasConsultaRecordSerializer;

  String? get clave;

  String? get receta;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(RecetasConsultaRecordBuilder builder) =>
      builder
        ..clave = ''
        ..receta = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('recetasConsulta');

  static Stream<RecetasConsultaRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<RecetasConsultaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  RecetasConsultaRecord._();
  factory RecetasConsultaRecord(
          [void Function(RecetasConsultaRecordBuilder) updates]) =
      _$RecetasConsultaRecord;

  static RecetasConsultaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createRecetasConsultaRecordData({
  String? clave,
  String? receta,
}) {
  final firestoreData = serializers.toFirestore(
    RecetasConsultaRecord.serializer,
    RecetasConsultaRecord(
      (r) => r
        ..clave = clave
        ..receta = receta,
    ),
  );

  return firestoreData;
}
