// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'platillos_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PlatillosRecord> _$platillosRecordSerializer =
    new _$PlatillosRecordSerializer();

class _$PlatillosRecordSerializer
    implements StructuredSerializer<PlatillosRecord> {
  @override
  final Iterable<Type> types = const [PlatillosRecord, _$PlatillosRecord];
  @override
  final String wireName = 'PlatillosRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PlatillosRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.ingredientes;
    if (value != null) {
      result
        ..add('ingredientes')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.tiempo;
    if (value != null) {
      result
        ..add('tiempo')
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
  PlatillosRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PlatillosRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'ingredientes':
          result.ingredientes.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'tiempo':
          result.tiempo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$PlatillosRecord extends PlatillosRecord {
  @override
  final BuiltList<String>? ingredientes;
  @override
  final String? tiempo;
  @override
  final String? nombre;
  @override
  final String? imagenURL;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PlatillosRecord([void Function(PlatillosRecordBuilder)? updates]) =>
      (new PlatillosRecordBuilder()..update(updates))._build();

  _$PlatillosRecord._(
      {this.ingredientes, this.tiempo, this.nombre, this.imagenURL, this.ffRef})
      : super._();

  @override
  PlatillosRecord rebuild(void Function(PlatillosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlatillosRecordBuilder toBuilder() =>
      new PlatillosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlatillosRecord &&
        ingredientes == other.ingredientes &&
        tiempo == other.tiempo &&
        nombre == other.nombre &&
        imagenURL == other.imagenURL &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ingredientes.hashCode);
    _$hash = $jc(_$hash, tiempo.hashCode);
    _$hash = $jc(_$hash, nombre.hashCode);
    _$hash = $jc(_$hash, imagenURL.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlatillosRecord')
          ..add('ingredientes', ingredientes)
          ..add('tiempo', tiempo)
          ..add('nombre', nombre)
          ..add('imagenURL', imagenURL)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PlatillosRecordBuilder
    implements Builder<PlatillosRecord, PlatillosRecordBuilder> {
  _$PlatillosRecord? _$v;

  ListBuilder<String>? _ingredientes;
  ListBuilder<String> get ingredientes =>
      _$this._ingredientes ??= new ListBuilder<String>();
  set ingredientes(ListBuilder<String>? ingredientes) =>
      _$this._ingredientes = ingredientes;

  String? _tiempo;
  String? get tiempo => _$this._tiempo;
  set tiempo(String? tiempo) => _$this._tiempo = tiempo;

  String? _nombre;
  String? get nombre => _$this._nombre;
  set nombre(String? nombre) => _$this._nombre = nombre;

  String? _imagenURL;
  String? get imagenURL => _$this._imagenURL;
  set imagenURL(String? imagenURL) => _$this._imagenURL = imagenURL;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PlatillosRecordBuilder() {
    PlatillosRecord._initializeBuilder(this);
  }

  PlatillosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ingredientes = $v.ingredientes?.toBuilder();
      _tiempo = $v.tiempo;
      _nombre = $v.nombre;
      _imagenURL = $v.imagenURL;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlatillosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PlatillosRecord;
  }

  @override
  void update(void Function(PlatillosRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlatillosRecord build() => _build();

  _$PlatillosRecord _build() {
    _$PlatillosRecord _$result;
    try {
      _$result = _$v ??
          new _$PlatillosRecord._(
              ingredientes: _ingredientes?.build(),
              tiempo: tiempo,
              nombre: nombre,
              imagenURL: imagenURL,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ingredientes';
        _ingredientes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PlatillosRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
