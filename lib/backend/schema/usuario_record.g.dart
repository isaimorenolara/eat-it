// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuario_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsuarioRecord> _$usuarioRecordSerializer =
    new _$UsuarioRecordSerializer();

class _$UsuarioRecordSerializer implements StructuredSerializer<UsuarioRecord> {
  @override
  final Iterable<Type> types = const [UsuarioRecord, _$UsuarioRecord];
  @override
  final String wireName = 'UsuarioRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, UsuarioRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.editedTime;
    if (value != null) {
      result
        ..add('edited_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.bio;
    if (value != null) {
      result
        ..add('bio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userName;
    if (value != null) {
      result
        ..add('user_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nombre;
    if (value != null) {
      result
        ..add('Nombre')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.primerApellido;
    if (value != null) {
      result
        ..add('PrimerApellido')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.segundoApellido;
    if (value != null) {
      result
        ..add('SegundoApellido')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.planes;
    if (value != null) {
      result
        ..add('Planes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.edad;
    if (value != null) {
      result
        ..add('Edad')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.genero;
    if (value != null) {
      result
        ..add('Genero')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.peso;
    if (value != null) {
      result
        ..add('Peso')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.altura;
    if (value != null) {
      result
        ..add('Altura')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.enfermedad;
    if (value != null) {
      result
        ..add('Enfermedad')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.alergias;
    if (value != null) {
      result
        ..add('Alergias')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.meta;
    if (value != null) {
      result
        ..add('Meta')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cedula;
    if (value != null) {
      result
        ..add('Cedula')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.alimentosquenomegustan;
    if (value != null) {
      result
        ..add('Alimentosquenomegustan')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pacienteUsuario;
    if (value != null) {
      result
        ..add('PacienteUsuario')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.alimento;
    if (value != null) {
      result
        ..add('Alimento')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.rating;
    if (value != null) {
      result
        ..add('Rating')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(double)])));
    }
    value = object.votos;
    if (value != null) {
      result
        ..add('Votos')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.planesRefs;
    if (value != null) {
      result
        ..add('PlanesRefs')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  UsuarioRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsuarioRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'edited_time':
          result.editedTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'bio':
          result.bio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user_name':
          result.userName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Nombre':
          result.nombre = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'PrimerApellido':
          result.primerApellido = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'SegundoApellido':
          result.segundoApellido = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Planes':
          result.planes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Edad':
          result.edad = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'Genero':
          result.genero = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Peso':
          result.peso = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'Altura':
          result.altura = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'Enfermedad':
          result.enfermedad.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'Alergias':
          result.alergias.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'Meta':
          result.meta = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Cedula':
          result.cedula = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Alimentosquenomegustan':
          result.alimentosquenomegustan = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'PacienteUsuario':
          result.pacienteUsuario = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Alimento':
          result.alimento.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'Rating':
          result.rating.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(double)]))!
              as BuiltList<Object?>);
          break;
        case 'Votos':
          result.votos = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'PlanesRefs':
          result.planesRefs.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$UsuarioRecord extends UsuarioRecord {
  @override
  final String? email;
  @override
  final String? displayName;
  @override
  final String? photoUrl;
  @override
  final String? uid;
  @override
  final DateTime? createdTime;
  @override
  final String? phoneNumber;
  @override
  final DateTime? editedTime;
  @override
  final String? bio;
  @override
  final String? userName;
  @override
  final String? nombre;
  @override
  final String? primerApellido;
  @override
  final String? segundoApellido;
  @override
  final String? planes;
  @override
  final double? edad;
  @override
  final String? genero;
  @override
  final double? peso;
  @override
  final double? altura;
  @override
  final BuiltList<String>? enfermedad;
  @override
  final BuiltList<String>? alergias;
  @override
  final String? meta;
  @override
  final String? cedula;
  @override
  final String? alimentosquenomegustan;
  @override
  final bool? pacienteUsuario;
  @override
  final BuiltList<String>? alimento;
  @override
  final BuiltList<double>? rating;
  @override
  final int? votos;
  @override
  final BuiltList<DocumentReference<Object?>>? planesRefs;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UsuarioRecord([void Function(UsuarioRecordBuilder)? updates]) =>
      (new UsuarioRecordBuilder()..update(updates))._build();

  _$UsuarioRecord._(
      {this.email,
      this.displayName,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.editedTime,
      this.bio,
      this.userName,
      this.nombre,
      this.primerApellido,
      this.segundoApellido,
      this.planes,
      this.edad,
      this.genero,
      this.peso,
      this.altura,
      this.enfermedad,
      this.alergias,
      this.meta,
      this.cedula,
      this.alimentosquenomegustan,
      this.pacienteUsuario,
      this.alimento,
      this.rating,
      this.votos,
      this.planesRefs,
      this.ffRef})
      : super._();

  @override
  UsuarioRecord rebuild(void Function(UsuarioRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsuarioRecordBuilder toBuilder() => new UsuarioRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsuarioRecord &&
        email == other.email &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        editedTime == other.editedTime &&
        bio == other.bio &&
        userName == other.userName &&
        nombre == other.nombre &&
        primerApellido == other.primerApellido &&
        segundoApellido == other.segundoApellido &&
        planes == other.planes &&
        edad == other.edad &&
        genero == other.genero &&
        peso == other.peso &&
        altura == other.altura &&
        enfermedad == other.enfermedad &&
        alergias == other.alergias &&
        meta == other.meta &&
        cedula == other.cedula &&
        alimentosquenomegustan == other.alimentosquenomegustan &&
        pacienteUsuario == other.pacienteUsuario &&
        alimento == other.alimento &&
        rating == other.rating &&
        votos == other.votos &&
        planesRefs == other.planesRefs &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, photoUrl.hashCode);
    _$hash = $jc(_$hash, uid.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, editedTime.hashCode);
    _$hash = $jc(_$hash, bio.hashCode);
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, nombre.hashCode);
    _$hash = $jc(_$hash, primerApellido.hashCode);
    _$hash = $jc(_$hash, segundoApellido.hashCode);
    _$hash = $jc(_$hash, planes.hashCode);
    _$hash = $jc(_$hash, edad.hashCode);
    _$hash = $jc(_$hash, genero.hashCode);
    _$hash = $jc(_$hash, peso.hashCode);
    _$hash = $jc(_$hash, altura.hashCode);
    _$hash = $jc(_$hash, enfermedad.hashCode);
    _$hash = $jc(_$hash, alergias.hashCode);
    _$hash = $jc(_$hash, meta.hashCode);
    _$hash = $jc(_$hash, cedula.hashCode);
    _$hash = $jc(_$hash, alimentosquenomegustan.hashCode);
    _$hash = $jc(_$hash, pacienteUsuario.hashCode);
    _$hash = $jc(_$hash, alimento.hashCode);
    _$hash = $jc(_$hash, rating.hashCode);
    _$hash = $jc(_$hash, votos.hashCode);
    _$hash = $jc(_$hash, planesRefs.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsuarioRecord')
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('editedTime', editedTime)
          ..add('bio', bio)
          ..add('userName', userName)
          ..add('nombre', nombre)
          ..add('primerApellido', primerApellido)
          ..add('segundoApellido', segundoApellido)
          ..add('planes', planes)
          ..add('edad', edad)
          ..add('genero', genero)
          ..add('peso', peso)
          ..add('altura', altura)
          ..add('enfermedad', enfermedad)
          ..add('alergias', alergias)
          ..add('meta', meta)
          ..add('cedula', cedula)
          ..add('alimentosquenomegustan', alimentosquenomegustan)
          ..add('pacienteUsuario', pacienteUsuario)
          ..add('alimento', alimento)
          ..add('rating', rating)
          ..add('votos', votos)
          ..add('planesRefs', planesRefs)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UsuarioRecordBuilder
    implements Builder<UsuarioRecord, UsuarioRecordBuilder> {
  _$UsuarioRecord? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  DateTime? _editedTime;
  DateTime? get editedTime => _$this._editedTime;
  set editedTime(DateTime? editedTime) => _$this._editedTime = editedTime;

  String? _bio;
  String? get bio => _$this._bio;
  set bio(String? bio) => _$this._bio = bio;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _nombre;
  String? get nombre => _$this._nombre;
  set nombre(String? nombre) => _$this._nombre = nombre;

  String? _primerApellido;
  String? get primerApellido => _$this._primerApellido;
  set primerApellido(String? primerApellido) =>
      _$this._primerApellido = primerApellido;

  String? _segundoApellido;
  String? get segundoApellido => _$this._segundoApellido;
  set segundoApellido(String? segundoApellido) =>
      _$this._segundoApellido = segundoApellido;

  String? _planes;
  String? get planes => _$this._planes;
  set planes(String? planes) => _$this._planes = planes;

  double? _edad;
  double? get edad => _$this._edad;
  set edad(double? edad) => _$this._edad = edad;

  String? _genero;
  String? get genero => _$this._genero;
  set genero(String? genero) => _$this._genero = genero;

  double? _peso;
  double? get peso => _$this._peso;
  set peso(double? peso) => _$this._peso = peso;

  double? _altura;
  double? get altura => _$this._altura;
  set altura(double? altura) => _$this._altura = altura;

  ListBuilder<String>? _enfermedad;
  ListBuilder<String> get enfermedad =>
      _$this._enfermedad ??= new ListBuilder<String>();
  set enfermedad(ListBuilder<String>? enfermedad) =>
      _$this._enfermedad = enfermedad;

  ListBuilder<String>? _alergias;
  ListBuilder<String> get alergias =>
      _$this._alergias ??= new ListBuilder<String>();
  set alergias(ListBuilder<String>? alergias) => _$this._alergias = alergias;

  String? _meta;
  String? get meta => _$this._meta;
  set meta(String? meta) => _$this._meta = meta;

  String? _cedula;
  String? get cedula => _$this._cedula;
  set cedula(String? cedula) => _$this._cedula = cedula;

  String? _alimentosquenomegustan;
  String? get alimentosquenomegustan => _$this._alimentosquenomegustan;
  set alimentosquenomegustan(String? alimentosquenomegustan) =>
      _$this._alimentosquenomegustan = alimentosquenomegustan;

  bool? _pacienteUsuario;
  bool? get pacienteUsuario => _$this._pacienteUsuario;
  set pacienteUsuario(bool? pacienteUsuario) =>
      _$this._pacienteUsuario = pacienteUsuario;

  ListBuilder<String>? _alimento;
  ListBuilder<String> get alimento =>
      _$this._alimento ??= new ListBuilder<String>();
  set alimento(ListBuilder<String>? alimento) => _$this._alimento = alimento;

  ListBuilder<double>? _rating;
  ListBuilder<double> get rating =>
      _$this._rating ??= new ListBuilder<double>();
  set rating(ListBuilder<double>? rating) => _$this._rating = rating;

  int? _votos;
  int? get votos => _$this._votos;
  set votos(int? votos) => _$this._votos = votos;

  ListBuilder<DocumentReference<Object?>>? _planesRefs;
  ListBuilder<DocumentReference<Object?>> get planesRefs =>
      _$this._planesRefs ??= new ListBuilder<DocumentReference<Object?>>();
  set planesRefs(ListBuilder<DocumentReference<Object?>>? planesRefs) =>
      _$this._planesRefs = planesRefs;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UsuarioRecordBuilder() {
    UsuarioRecord._initializeBuilder(this);
  }

  UsuarioRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _editedTime = $v.editedTime;
      _bio = $v.bio;
      _userName = $v.userName;
      _nombre = $v.nombre;
      _primerApellido = $v.primerApellido;
      _segundoApellido = $v.segundoApellido;
      _planes = $v.planes;
      _edad = $v.edad;
      _genero = $v.genero;
      _peso = $v.peso;
      _altura = $v.altura;
      _enfermedad = $v.enfermedad?.toBuilder();
      _alergias = $v.alergias?.toBuilder();
      _meta = $v.meta;
      _cedula = $v.cedula;
      _alimentosquenomegustan = $v.alimentosquenomegustan;
      _pacienteUsuario = $v.pacienteUsuario;
      _alimento = $v.alimento?.toBuilder();
      _rating = $v.rating?.toBuilder();
      _votos = $v.votos;
      _planesRefs = $v.planesRefs?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsuarioRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsuarioRecord;
  }

  @override
  void update(void Function(UsuarioRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsuarioRecord build() => _build();

  _$UsuarioRecord _build() {
    _$UsuarioRecord _$result;
    try {
      _$result = _$v ??
          new _$UsuarioRecord._(
              email: email,
              displayName: displayName,
              photoUrl: photoUrl,
              uid: uid,
              createdTime: createdTime,
              phoneNumber: phoneNumber,
              editedTime: editedTime,
              bio: bio,
              userName: userName,
              nombre: nombre,
              primerApellido: primerApellido,
              segundoApellido: segundoApellido,
              planes: planes,
              edad: edad,
              genero: genero,
              peso: peso,
              altura: altura,
              enfermedad: _enfermedad?.build(),
              alergias: _alergias?.build(),
              meta: meta,
              cedula: cedula,
              alimentosquenomegustan: alimentosquenomegustan,
              pacienteUsuario: pacienteUsuario,
              alimento: _alimento?.build(),
              rating: _rating?.build(),
              votos: votos,
              planesRefs: _planesRefs?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'enfermedad';
        _enfermedad?.build();
        _$failedField = 'alergias';
        _alergias?.build();

        _$failedField = 'alimento';
        _alimento?.build();
        _$failedField = 'rating';
        _rating?.build();

        _$failedField = 'planesRefs';
        _planesRefs?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UsuarioRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
