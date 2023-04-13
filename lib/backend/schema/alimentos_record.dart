import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'alimentos_record.g.dart';

abstract class AlimentosRecord
    implements Built<AlimentosRecord, AlimentosRecordBuilder> {
  static Serializer<AlimentosRecord> get serializer =>
      _$alimentosRecordSerializer;

  int? get calorias;

  int? get proteinas;

  String? get nombre;

  @BuiltValueField(wireName: 'ImagenURL')
  String? get imagenURL;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AlimentosRecordBuilder builder) => builder
    ..calorias = 0
    ..proteinas = 0
    ..nombre = ''
    ..imagenURL = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('alimentos');

  static Stream<AlimentosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AlimentosRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AlimentosRecord._();
  factory AlimentosRecord([void Function(AlimentosRecordBuilder) updates]) =
      _$AlimentosRecord;

  static AlimentosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAlimentosRecordData({
  int? calorias,
  int? proteinas,
  String? nombre,
  String? imagenURL,
}) {
  final firestoreData = serializers.toFirestore(
    AlimentosRecord.serializer,
    AlimentosRecord(
      (a) => a
        ..calorias = calorias
        ..proteinas = proteinas
        ..nombre = nombre
        ..imagenURL = imagenURL,
    ),
  );

  return firestoreData;
}
