// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alimentos_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AlimentosRecord> _$alimentosRecordSerializer =
    new _$AlimentosRecordSerializer();

class _$AlimentosRecordSerializer
    implements StructuredSerializer<AlimentosRecord> {
  @override
  final Iterable<Type> types = const [AlimentosRecord, _$AlimentosRecord];
  @override
  final String wireName = 'AlimentosRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, AlimentosRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.calorias;
    if (value != null) {
      result
        ..add('calorias')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.proteinas;
    if (value != null) {
      result
        ..add('proteinas')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.nombre;
    if (value != null) {
      result
        ..add('nombre')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imagenURL;
    if (value != null) {
      result
        ..add('ImagenURL')
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
  AlimentosRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AlimentosRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'calorias':
          result.calorias = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'proteinas':
          result.proteinas = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'nombre':
          result.nombre = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ImagenURL':
          result.imagenURL = serializers.deserialize(value,
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

class _$AlimentosRecord extends AlimentosRecord {
  @override
  final int? calorias;
  @override
  final int? proteinas;
  @override
  final String? nombre;
  @override
  final String? imagenURL;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AlimentosRecord([void Function(AlimentosRecordBuilder)? updates]) =>
      (new AlimentosRecordBuilder()..update(updates))._build();

  _$AlimentosRecord._(
      {this.calorias, this.proteinas, this.nombre, this.imagenURL, this.ffRef})
      : super._();

  @override
  AlimentosRecord rebuild(void Function(AlimentosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AlimentosRecordBuilder toBuilder() =>
      new AlimentosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlimentosRecord &&
        calorias == other.calorias &&
        proteinas == other.proteinas &&
        nombre == other.nombre &&
        imagenURL == other.imagenURL &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, calorias.hashCode);
    _$hash = $jc(_$hash, proteinas.hashCode);
    _$hash = $jc(_$hash, nombre.hashCode);
    _$hash = $jc(_$hash, imagenURL.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AlimentosRecord')
          ..add('calorias', calorias)
          ..add('proteinas', proteinas)
          ..add('nombre', nombre)
          ..add('imagenURL', imagenURL)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AlimentosRecordBuilder
    implements Builder<AlimentosRecord, AlimentosRecordBuilder> {
  _$AlimentosRecord? _$v;

  int? _calorias;
  int? get calorias => _$this._calorias;
  set calorias(int? calorias) => _$this._calorias = calorias;

  int? _proteinas;
  int? get proteinas => _$this._proteinas;
  set proteinas(int? proteinas) => _$this._proteinas = proteinas;

  String? _nombre;
  String? get nombre => _$this._nombre;
  set nombre(String? nombre) => _$this._nombre = nombre;

  String? _imagenURL;
  String? get imagenURL => _$this._imagenURL;
  set imagenURL(String? imagenURL) => _$this._imagenURL = imagenURL;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AlimentosRecordBuilder() {
    AlimentosRecord._initializeBuilder(this);
  }

  AlimentosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _calorias = $v.calorias;
      _proteinas = $v.proteinas;
      _nombre = $v.nombre;
      _imagenURL = $v.imagenURL;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AlimentosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AlimentosRecord;
  }

  @override
  void update(void Function(AlimentosRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AlimentosRecord build() => _build();

  _$AlimentosRecord _build() {
    final _$result = _$v ??
        new _$AlimentosRecord._(
            calorias: calorias,
            proteinas: proteinas,
            nombre: nombre,
            imagenURL: imagenURL,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
