import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'paciente_record.g.dart';

abstract class PacienteRecord
    implements Built<PacienteRecord, PacienteRecordBuilder> {
  static Serializer<PacienteRecord> get serializer =>
      _$pacienteRecordSerializer;

  int? get edad;

  BuiltList<String>? get enfermedades;

  double? get estatura;

  @BuiltValueField(wireName: 'id_usuario')
  String? get idUsuario;

  double? get peso;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PacienteRecordBuilder builder) => builder
    ..edad = 0
    ..enfermedades = ListBuilder()
    ..estatura = 0.0
    ..idUsuario = ''
    ..peso = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('paciente');

  static Stream<PacienteRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PacienteRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PacienteRecord._();
  factory PacienteRecord([void Function(PacienteRecordBuilder) updates]) =
      _$PacienteRecord;

  static PacienteRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPacienteRecordData({
  int? edad,
  double? estatura,
  String? idUsuario,
  double? peso,
}) {
  final firestoreData = serializers.toFirestore(
    PacienteRecord.serializer,
    PacienteRecord(
      (p) => p
        ..edad = edad
        ..enfermedades = null
        ..estatura = estatura
        ..idUsuario = idUsuario
        ..peso = peso,
    ),
  );

  return firestoreData;
}
