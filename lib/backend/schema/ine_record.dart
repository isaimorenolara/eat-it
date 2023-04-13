import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'ine_record.g.dart';

abstract class IneRecord implements Built<IneRecord, IneRecordBuilder> {
  static Serializer<IneRecord> get serializer => _$ineRecordSerializer;

  @BuiltValueField(wireName: 'ImagenF')
  String? get imagenF;

  @BuiltValueField(wireName: 'ImagenT')
  String? get imagenT;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(IneRecordBuilder builder) => builder
    ..imagenF = ''
    ..imagenT = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('INE');

  static Stream<IneRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<IneRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  IneRecord._();
  factory IneRecord([void Function(IneRecordBuilder) updates]) = _$IneRecord;

  static IneRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createIneRecordData({
  String? imagenF,
  String? imagenT,
}) {
  final firestoreData = serializers.toFirestore(
    IneRecord.serializer,
    IneRecord(
      (i) => i
        ..imagenF = imagenF
        ..imagenT = imagenT,
    ),
  );

  return firestoreData;
}
