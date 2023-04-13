import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'plan_alimenticio_record.g.dart';

abstract class PlanAlimenticioRecord
    implements Built<PlanAlimenticioRecord, PlanAlimenticioRecordBuilder> {
  static Serializer<PlanAlimenticioRecord> get serializer =>
      _$planAlimenticioRecordSerializer;

  String? get nombre;

  BuiltList<String>? get platillos;

  String? get autor;

  @BuiltValueField(wireName: 'PesoMinimo')
  double? get pesoMinimo;

  @BuiltValueField(wireName: 'PesoMaximo')
  double? get pesoMaximo;

  @BuiltValueField(wireName: 'EstaturaMaxima')
  double? get estaturaMaxima;

  @BuiltValueField(wireName: 'EstaturaMinima')
  double? get estaturaMinima;

  @BuiltValueField(wireName: 'Enfermedad')
  BuiltList<String>? get enfermedad;

  @BuiltValueField(wireName: 'Alergias')
  BuiltList<String>? get alergias;

  @BuiltValueField(wireName: 'Genero')
  String? get genero;

  @BuiltValueField(wireName: 'ImagenPortada')
  String? get imagenPortada;

  @BuiltValueField(wireName: 'Duracion')
  int? get duracion;

  @BuiltValueField(wireName: 'Retosemanales')
  String? get retosemanales;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PlanAlimenticioRecordBuilder builder) =>
      builder
        ..nombre = ''
        ..platillos = ListBuilder()
        ..autor = ''
        ..pesoMinimo = 0.0
        ..pesoMaximo = 0.0
        ..estaturaMaxima = 0.0
        ..estaturaMinima = 0.0
        ..enfermedad = ListBuilder()
        ..alergias = ListBuilder()
        ..genero = ''
        ..imagenPortada = ''
        ..duracion = 0
        ..retosemanales = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('planAlimenticio');

  static Stream<PlanAlimenticioRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PlanAlimenticioRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PlanAlimenticioRecord._();
  factory PlanAlimenticioRecord(
          [void Function(PlanAlimenticioRecordBuilder) updates]) =
      _$PlanAlimenticioRecord;

  static PlanAlimenticioRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPlanAlimenticioRecordData({
  String? nombre,
  String? autor,
  double? pesoMinimo,
  double? pesoMaximo,
  double? estaturaMaxima,
  double? estaturaMinima,
  String? genero,
  String? imagenPortada,
  int? duracion,
  String? retosemanales,
}) {
  final firestoreData = serializers.toFirestore(
    PlanAlimenticioRecord.serializer,
    PlanAlimenticioRecord(
      (p) => p
        ..nombre = nombre
        ..platillos = null
        ..autor = autor
        ..pesoMinimo = pesoMinimo
        ..pesoMaximo = pesoMaximo
        ..estaturaMaxima = estaturaMaxima
        ..estaturaMinima = estaturaMinima
        ..enfermedad = null
        ..alergias = null
        ..genero = genero
        ..imagenPortada = imagenPortada
        ..duracion = duracion
        ..retosemanales = retosemanales,
    ),
  );

  return firestoreData;
}
