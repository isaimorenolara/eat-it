// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutriologo_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NutriologoRecord> _$nutriologoRecordSerializer =
    new _$NutriologoRecordSerializer();

class _$NutriologoRecordSerializer
    implements StructuredSerializer<NutriologoRecord> {
  @override
  final Iterable<Type> types = const [NutriologoRecord, _$NutriologoRecord];
  @override
  final String wireName = 'NutriologoRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, NutriologoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.cedula;
    if (value != null) {
      result
        ..add('cedula')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.idUsuario;
    if (value != null) {
      result
        ..add('id_usuario')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nombre;
    if (value != null) {
      result
        ..add('nombre')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imagen;
    if (value != null) {
      result
        ..add('imagen')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  NutriologoRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NutriologoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'cedula':
          result.cedula = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'id_usuario':
          result.idUsuario = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nombre':
          result.nombre = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'imagen':
          result.imagen = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$NutriologoRecord extends NutriologoRecord {
  @override
  final String? cedula;
  @override
  final String? idUsuario;
  @override
  final String? nombre;
  @override
  final String? imagen;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$NutriologoRecord(
          [void Function(NutriologoRecordBuilder)? updates]) =>
      (new NutriologoRecordBuilder()..update(updates))._build();

  _$NutriologoRecord._(
      {this.cedula, this.idUsuario, this.nombre, this.imagen, this.ffRef})
      : super._();

  @override
  NutriologoRecord rebuild(void Function(NutriologoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NutriologoRecordBuilder toBuilder() =>
      new NutriologoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NutriologoRecord &&
        cedula == other.cedula &&
        idUsuario == other.idUsuario &&
        nombre == other.nombre &&
        imagen == other.imagen &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cedula.hashCode);
    _$hash = $jc(_$hash, idUsuario.hashCode);
    _$hash = $jc(_$hash, nombre.hashCode);
    _$hash = $jc(_$hash, imagen.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NutriologoRecord')
          ..add('cedula', cedula)
          ..add('idUsuario', idUsuario)
          ..add('nombre', nombre)
          ..add('imagen', imagen)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class NutriologoRecordBuilder
    implements Builder<NutriologoRecord, NutriologoRecordBuilder> {
  _$NutriologoRecord? _$v;

  String? _cedula;
  String? get cedula => _$this._cedula;
  set cedula(String? cedula) => _$this._cedula = cedula;

  String? _idUsuario;
  String? get idUsuario => _$this._idUsuario;
  set idUsuario(String? idUsuario) => _$this._idUsuario = idUsuario;

  String? _nombre;
  String? get nombre => _$this._nombre;
  set nombre(String? nombre) => _$this._nombre = nombre;

  String? _imagen;
  String? get imagen => _$this._imagen;
  set imagen(String? imagen) => _$this._imagen = imagen;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  NutriologoRecordBuilder() {
    NutriologoRecord._initializeBuilder(this);
  }

  NutriologoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cedula = $v.cedula;
      _idUsuario = $v.idUsuario;
      _nombre = $v.nombre;
      _imagen = $v.imagen;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NutriologoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NutriologoRecord;
  }

  @override
  void update(void Function(NutriologoRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NutriologoRecord build() => _build();

  _$NutriologoRecord _build() {
    final _$result = _$v ??
        new _$NutriologoRecord._(
            cedula: cedula,
            idUsuario: idUsuario,
            nombre: nombre,
            imagen: imagen,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
