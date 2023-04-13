// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paciente_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PacienteRecord> _$pacienteRecordSerializer =
    new _$PacienteRecordSerializer();

class _$PacienteRecordSerializer
    implements StructuredSerializer<PacienteRecord> {
  @override
  final Iterable<Type> types = const [PacienteRecord, _$PacienteRecord];
  @override
  final String wireName = 'PacienteRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PacienteRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.edad;
    if (value != null) {
      result
        ..add('edad')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.enfermedades;
    if (value != null) {
      result
        ..add('enfermedades')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.estatura;
    if (value != null) {
      result
        ..add('estatura')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.idUsuario;
    if (value != null) {
      result
        ..add('id_usuario')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.peso;
    if (value != null) {
      result
        ..add('peso')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
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
  PacienteRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PacienteRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'edad':
          result.edad = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'enfermedades':
          result.enfermedades.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'estatura':
          result.estatura = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'id_usuario':
          result.idUsuario = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'peso':
          result.peso = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
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

class _$PacienteRecord extends PacienteRecord {
  @override
  final int? edad;
  @override
  final BuiltList<String>? enfermedades;
  @override
  final double? estatura;
  @override
  final String? idUsuario;
  @override
  final double? peso;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PacienteRecord([void Function(PacienteRecordBuilder)? updates]) =>
      (new PacienteRecordBuilder()..update(updates))._build();

  _$PacienteRecord._(
      {this.edad,
      this.enfermedades,
      this.estatura,
      this.idUsuario,
      this.peso,
      this.ffRef})
      : super._();

  @override
  PacienteRecord rebuild(void Function(PacienteRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PacienteRecordBuilder toBuilder() =>
      new PacienteRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PacienteRecord &&
        edad == other.edad &&
        enfermedades == other.enfermedades &&
        estatura == other.estatura &&
        idUsuario == other.idUsuario &&
        peso == other.peso &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, edad.hashCode);
    _$hash = $jc(_$hash, enfermedades.hashCode);
    _$hash = $jc(_$hash, estatura.hashCode);
    _$hash = $jc(_$hash, idUsuario.hashCode);
    _$hash = $jc(_$hash, peso.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PacienteRecord')
          ..add('edad', edad)
          ..add('enfermedades', enfermedades)
          ..add('estatura', estatura)
          ..add('idUsuario', idUsuario)
          ..add('peso', peso)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PacienteRecordBuilder
    implements Builder<PacienteRecord, PacienteRecordBuilder> {
  _$PacienteRecord? _$v;

  int? _edad;
  int? get edad => _$this._edad;
  set edad(int? edad) => _$this._edad = edad;

  ListBuilder<String>? _enfermedades;
  ListBuilder<String> get enfermedades =>
      _$this._enfermedades ??= new ListBuilder<String>();
  set enfermedades(ListBuilder<String>? enfermedades) =>
      _$this._enfermedades = enfermedades;

  double? _estatura;
  double? get estatura => _$this._estatura;
  set estatura(double? estatura) => _$this._estatura = estatura;

  String? _idUsuario;
  String? get idUsuario => _$this._idUsuario;
  set idUsuario(String? idUsuario) => _$this._idUsuario = idUsuario;

  double? _peso;
  double? get peso => _$this._peso;
  set peso(double? peso) => _$this._peso = peso;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PacienteRecordBuilder() {
    PacienteRecord._initializeBuilder(this);
  }

  PacienteRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _edad = $v.edad;
      _enfermedades = $v.enfermedades?.toBuilder();
      _estatura = $v.estatura;
      _idUsuario = $v.idUsuario;
      _peso = $v.peso;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PacienteRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PacienteRecord;
  }

  @override
  void update(void Function(PacienteRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PacienteRecord build() => _build();

  _$PacienteRecord _build() {
    _$PacienteRecord _$result;
    try {
      _$result = _$v ??
          new _$PacienteRecord._(
              edad: edad,
              enfermedades: _enfermedades?.build(),
              estatura: estatura,
              idUsuario: idUsuario,
              peso: peso,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'enfermedades';
        _enfermedades?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PacienteRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
