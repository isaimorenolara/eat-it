import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'nutriologo_record.g.dart';

abstract class NutriologoRecord
    implements Built<NutriologoRecord, NutriologoRecordBuilder> {
  static Serializer<NutriologoRecord> get serializer =>
      _$nutriologoRecordSerializer;

  String? get cedula;

  @BuiltValueField(wireName: 'id_usuario')
  String? get idUsuario;

  String? get nombre;

  String? get imagen;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(NutriologoRecordBuilder builder) => builder
    ..cedula = ''
    ..idUsuario = ''
    ..nombre = ''
    ..imagen = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('nutriologo');

  static Stream<NutriologoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<NutriologoRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  NutriologoRecord._();
  factory NutriologoRecord([void Function(NutriologoRecordBuilder) updates]) =
      _$NutriologoRecord;

  static NutriologoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createNutriologoRecordData({
  String? cedula,
  String? idUsuario,
  String? nombre,
  String? imagen,
}) {
  final firestoreData = serializers.toFirestore(
    NutriologoRecord.serializer,
    NutriologoRecord(
      (n) => n
        ..cedula = cedula
        ..idUsuario = idUsuario
        ..nombre = nombre
        ..imagen = imagen,
    ),
  );

  return firestoreData;
}
