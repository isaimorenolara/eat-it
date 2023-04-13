import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'platillos_plan_alimenticio_record.g.dart';

abstract class PlatillosPlanAlimenticioRecord
    implements
        Built<PlatillosPlanAlimenticioRecord,
            PlatillosPlanAlimenticioRecordBuilder> {
  static Serializer<PlatillosPlanAlimenticioRecord> get serializer =>
      _$platillosPlanAlimenticioRecordSerializer;

  String? get nombre;

  String? get tiempo;

  @BuiltValueField(wireName: 'Ingredientes')
  BuiltList<String>? get ingredientes;

  @BuiltValueField(wireName: 'Mes')
  int? get mes;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(
          PlatillosPlanAlimenticioRecordBuilder builder) =>
      builder
        ..nombre = ''
        ..tiempo = ''
        ..ingredientes = ListBuilder()
        ..mes = 0;

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('platillosPlanAlimenticio')
          : FirebaseFirestore.instance
              .collectionGroup('platillosPlanAlimenticio');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('platillosPlanAlimenticio').doc();

  static Stream<PlatillosPlanAlimenticioRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PlatillosPlanAlimenticioRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PlatillosPlanAlimenticioRecord._();
  factory PlatillosPlanAlimenticioRecord(
          [void Function(PlatillosPlanAlimenticioRecordBuilder) updates]) =
      _$PlatillosPlanAlimenticioRecord;

  static PlatillosPlanAlimenticioRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPlatillosPlanAlimenticioRecordData({
  String? nombre,
  String? tiempo,
  int? mes,
}) {
  final firestoreData = serializers.toFirestore(
    PlatillosPlanAlimenticioRecord.serializer,
    PlatillosPlanAlimenticioRecord(
      (p) => p
        ..nombre = nombre
        ..tiempo = tiempo
        ..ingredientes = null
        ..mes = mes,
    ),
  );

  return firestoreData;
}
