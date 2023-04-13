// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enfermedades_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EnfermedadesRecord> _$enfermedadesRecordSerializer =
    new _$EnfermedadesRecordSerializer();

class _$EnfermedadesRecordSerializer
    implements StructuredSerializer<EnfermedadesRecord> {
  @override
  final Iterable<Type> types = const [EnfermedadesRecord, _$EnfermedadesRecord];
  @override
  final String wireName = 'EnfermedadesRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, EnfermedadesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nombre;
    if (value != null) {
      result
        ..add('nombre')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.enfermedadL;
    if (value != null) {
      result
        ..add('EnfermedadL')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
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
  EnfermedadesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EnfermedadesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'nombre':
          result.nombre = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'EnfermedadL':
          result.enfermedadL.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
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

class _$EnfermedadesRecord extends EnfermedadesRecord {
  @override
  final String? nombre;
  @override
  final BuiltList<String>? enfermedadL;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$EnfermedadesRecord(
          [void Function(EnfermedadesRecordBuilder)? updates]) =>
      (new EnfermedadesRecordBuilder()..update(updates))._build();

  _$EnfermedadesRecord._({this.nombre, this.enfermedadL, this.ffRef})
      : super._();

  @override
  EnfermedadesRecord rebuild(
          void Function(EnfermedadesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnfermedadesRecordBuilder toBuilder() =>
      new EnfermedadesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnfermedadesRecord &&
        nombre == other.nombre &&
        enfermedadL == other.enfermedadL &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nombre.hashCode);
    _$hash = $jc(_$hash, enfermedadL.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EnfermedadesRecord')
          ..add('nombre', nombre)
          ..add('enfermedadL', enfermedadL)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class EnfermedadesRecordBuilder
    implements Builder<EnfermedadesRecord, EnfermedadesRecordBuilder> {
  _$EnfermedadesRecord? _$v;

  String? _nombre;
  String? get nombre => _$this._nombre;
  set nombre(String? nombre) => _$this._nombre = nombre;

  ListBuilder<String>? _enfermedadL;
  ListBuilder<String> get enfermedadL =>
      _$this._enfermedadL ??= new ListBuilder<String>();
  set enfermedadL(ListBuilder<String>? enfermedadL) =>
      _$this._enfermedadL = enfermedadL;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  EnfermedadesRecordBuilder() {
    EnfermedadesRecord._initializeBuilder(this);
  }

  EnfermedadesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombre = $v.nombre;
      _enfermedadL = $v.enfermedadL?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnfermedadesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EnfermedadesRecord;
  }

  @override
  void update(void Function(EnfermedadesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnfermedadesRecord build() => _build();

  _$EnfermedadesRecord _build() {
    _$EnfermedadesRecord _$result;
    try {
      _$result = _$v ??
          new _$EnfermedadesRecord._(
              nombre: nombre, enfermedadL: _enfermedadL?.build(), ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'enfermedadL';
        _enfermedadL?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'EnfermedadesRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
