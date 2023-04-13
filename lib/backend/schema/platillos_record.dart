import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'platillos_record.g.dart';

abstract class PlatillosRecord
    implements Built<PlatillosRecord, PlatillosRecordBuilder> {
  static Serializer<PlatillosRecord> get serializer =>
      _$platillosRecordSerializer;

  BuiltList<String>? get ingredientes;

  String? get tiempo;

  String? get nombre;

  @BuiltValueField(wireName: 'ImagenURL')
  String? get imagenURL;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PlatillosRecordBuilder builder) => builder
    ..ingredientes = ListBuilder()
    ..tiempo = ''
    ..nombre = ''
    ..imagenURL = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('platillos');

  static Stream<PlatillosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PlatillosRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PlatillosRecord._();
  factory PlatillosRecord([void Function(PlatillosRecordBuilder) updates]) =
      _$PlatillosRecord;

  static PlatillosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPlatillosRecordData({
  String? tiempo,
  String? nombre,
  String? imagenURL,
}) {
  final firestoreData = serializers.toFirestore(
    PlatillosRecord.serializer,
    PlatillosRecord(
      (p) => p
        ..ingredientes = null
        ..tiempo = tiempo
        ..nombre = nombre
        ..imagenURL = imagenURL,
    ),
  );

  return firestoreData;
}
