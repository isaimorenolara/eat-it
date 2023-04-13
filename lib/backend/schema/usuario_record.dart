import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'usuario_record.g.dart';

abstract class UsuarioRecord
    implements Built<UsuarioRecord, UsuarioRecordBuilder> {
  static Serializer<UsuarioRecord> get serializer => _$usuarioRecordSerializer;

  String? get email;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  String? get uid;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: 'edited_time')
  DateTime? get editedTime;

  String? get bio;

  @BuiltValueField(wireName: 'user_name')
  String? get userName;

  @BuiltValueField(wireName: 'Nombre')
  String? get nombre;

  @BuiltValueField(wireName: 'PrimerApellido')
  String? get primerApellido;

  @BuiltValueField(wireName: 'SegundoApellido')
  String? get segundoApellido;

  @BuiltValueField(wireName: 'Planes')
  String? get planes;

  @BuiltValueField(wireName: 'Edad')
  double? get edad;

  @BuiltValueField(wireName: 'Genero')
  String? get genero;

  @BuiltValueField(wireName: 'Peso')
  double? get peso;

  @BuiltValueField(wireName: 'Altura')
  double? get altura;

  @BuiltValueField(wireName: 'Enfermedad')
  BuiltList<String>? get enfermedad;

  @BuiltValueField(wireName: 'Alergias')
  BuiltList<String>? get alergias;

  @BuiltValueField(wireName: 'Meta')
  String? get meta;

  @BuiltValueField(wireName: 'Cedula')
  String? get cedula;

  @BuiltValueField(wireName: 'Alimentosquenomegustan')
  String? get alimentosquenomegustan;

  @BuiltValueField(wireName: 'PacienteUsuario')
  bool? get pacienteUsuario;

  @BuiltValueField(wireName: 'Alimento')
  BuiltList<String>? get alimento;

  @BuiltValueField(wireName: 'Rating')
  BuiltList<double>? get rating;

  @BuiltValueField(wireName: 'Votos')
  int? get votos;

  @BuiltValueField(wireName: 'PlanesRefs')
  BuiltList<DocumentReference>? get planesRefs;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UsuarioRecordBuilder builder) => builder
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = ''
    ..bio = ''
    ..userName = ''
    ..nombre = ''
    ..primerApellido = ''
    ..segundoApellido = ''
    ..planes = ''
    ..edad = 0.0
    ..genero = ''
    ..peso = 0.0
    ..altura = 0.0
    ..enfermedad = ListBuilder()
    ..alergias = ListBuilder()
    ..meta = ''
    ..cedula = ''
    ..alimentosquenomegustan = ''
    ..pacienteUsuario = false
    ..alimento = ListBuilder()
    ..rating = ListBuilder()
    ..votos = 0
    ..planesRefs = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Usuario');

  static Stream<UsuarioRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UsuarioRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UsuarioRecord._();
  factory UsuarioRecord([void Function(UsuarioRecordBuilder) updates]) =
      _$UsuarioRecord;

  static UsuarioRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUsuarioRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  DateTime? editedTime,
  String? bio,
  String? userName,
  String? nombre,
  String? primerApellido,
  String? segundoApellido,
  String? planes,
  double? edad,
  String? genero,
  double? peso,
  double? altura,
  String? meta,
  String? cedula,
  String? alimentosquenomegustan,
  bool? pacienteUsuario,
  int? votos,
}) {
  final firestoreData = serializers.toFirestore(
    UsuarioRecord.serializer,
    UsuarioRecord(
      (u) => u
        ..email = email
        ..displayName = displayName
        ..photoUrl = photoUrl
        ..uid = uid
        ..createdTime = createdTime
        ..phoneNumber = phoneNumber
        ..editedTime = editedTime
        ..bio = bio
        ..userName = userName
        ..nombre = nombre
        ..primerApellido = primerApellido
        ..segundoApellido = segundoApellido
        ..planes = planes
        ..edad = edad
        ..genero = genero
        ..peso = peso
        ..altura = altura
        ..enfermedad = null
        ..alergias = null
        ..meta = meta
        ..cedula = cedula
        ..alimentosquenomegustan = alimentosquenomegustan
        ..pacienteUsuario = pacienteUsuario
        ..alimento = null
        ..rating = null
        ..votos = votos
        ..planesRefs = null,
    ),
  );

  return firestoreData;
}
