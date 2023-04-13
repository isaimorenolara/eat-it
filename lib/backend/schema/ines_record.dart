import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'ines_record.g.dart';

abstract class InesRecord implements Built<InesRecord, InesRecordBuilder> {
  static Serializer<InesRecord> get serializer => _$inesRecordSerializer;

  @BuiltValueField(wireName: 'img_frontal')
  String? get imgFrontal;

  @BuiltValueField(wireName: 'img_posterior')
  String? get imgPosterior;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(InesRecordBuilder builder) => builder
    ..imgFrontal = ''
    ..imgPosterior = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ines');

  static Stream<InesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<InesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  InesRecord._();
  factory InesRecord([void Function(InesRecordBuilder) updates]) = _$InesRecord;

  static InesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createInesRecordData({
  String? imgFrontal,
  String? imgPosterior,
}) {
  final firestoreData = serializers.toFirestore(
    InesRecord.serializer,
    InesRecord(
      (i) => i
        ..imgFrontal = imgFrontal
        ..imgPosterior = imgPosterior,
    ),
  );

  return firestoreData;
}
