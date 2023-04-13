import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'enfermedades_record.g.dart';

abstract class EnfermedadesRecord
    implements Built<EnfermedadesRecord, EnfermedadesRecordBuilder> {
  static Serializer<EnfermedadesRecord> get serializer =>
      _$enfermedadesRecordSerializer;

  String? get nombre;

  @BuiltValueField(wireName: 'EnfermedadL')
  BuiltList<String>? get enfermedadL;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(EnfermedadesRecordBuilder builder) => builder
    ..nombre = ''
    ..enfermedadL = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('enfermedades');

  static Stream<EnfermedadesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<EnfermedadesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  EnfermedadesRecord._();
  factory EnfermedadesRecord(
          [void Function(EnfermedadesRecordBuilder) updates]) =
      _$EnfermedadesRecord;

  static EnfermedadesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createEnfermedadesRecordData({
  String? nombre,
}) {
  final firestoreData = serializers.toFirestore(
    EnfermedadesRecord.serializer,
    EnfermedadesRecord(
      (e) => e
        ..nombre = nombre
        ..enfermedadL = null,
    ),
  );

  return firestoreData;
}
