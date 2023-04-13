import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'retos_record.g.dart';

abstract class RetosRecord implements Built<RetosRecord, RetosRecordBuilder> {
  static Serializer<RetosRecord> get serializer => _$retosRecordSerializer;

  String? get descripcion;

  String? get titulo;

  int? get semana;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(RetosRecordBuilder builder) => builder
    ..descripcion = ''
    ..titulo = ''
    ..semana = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('retos');

  static Stream<RetosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<RetosRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  RetosRecord._();
  factory RetosRecord([void Function(RetosRecordBuilder) updates]) =
      _$RetosRecord;

  static RetosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createRetosRecordData({
  String? descripcion,
  String? titulo,
  int? semana,
}) {
  final firestoreData = serializers.toFirestore(
    RetosRecord.serializer,
    RetosRecord(
      (r) => r
        ..descripcion = descripcion
        ..titulo = titulo
        ..semana = semana,
    ),
  );

  return firestoreData;
}
