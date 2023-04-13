// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'platillos_plan_alimenticio_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PlatillosPlanAlimenticioRecord>
    _$platillosPlanAlimenticioRecordSerializer =
    new _$PlatillosPlanAlimenticioRecordSerializer();

class _$PlatillosPlanAlimenticioRecordSerializer
    implements StructuredSerializer<PlatillosPlanAlimenticioRecord> {
  @override
  final Iterable<Type> types = const [
    PlatillosPlanAlimenticioRecord,
    _$PlatillosPlanAlimenticioRecord
  ];
  @override
  final String wireName = 'PlatillosPlanAlimenticioRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PlatillosPlanAlimenticioRecord object,
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
    value = object.tiempo;
    if (value != null) {
      result
        ..add('tiempo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ingredientes;
    if (value != null) {
      result
        ..add('Ingredientes')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.mes;
    if (value != null) {
      result
        ..add('Mes')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  PlatillosPlanAlimenticioRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PlatillosPlanAlimenticioRecordBuilder();

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
        case 'tiempo':
          result.tiempo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Ingredientes':
          result.ingredientes.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'Mes':
          result.mes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$PlatillosPlanAlimenticioRecord extends PlatillosPlanAlimenticioRecord {
  @override
  final String? nombre;
  @override
  final String? tiempo;
  @override
  final BuiltList<String>? ingredientes;
  @override
  final int? mes;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PlatillosPlanAlimenticioRecord(
          [void Function(PlatillosPlanAlimenticioRecordBuilder)? updates]) =>
      (new PlatillosPlanAlimenticioRecordBuilder()..update(updates))._build();

  _$PlatillosPlanAlimenticioRecord._(
      {this.nombre, this.tiempo, this.ingredientes, this.mes, this.ffRef})
      : super._();

  @override
  PlatillosPlanAlimenticioRecord rebuild(
          void Function(PlatillosPlanAlimenticioRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlatillosPlanAlimenticioRecordBuilder toBuilder() =>
      new PlatillosPlanAlimenticioRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlatillosPlanAlimenticioRecord &&
        nombre == other.nombre &&
        tiempo == other.tiempo &&
        ingredientes == other.ingredientes &&
        mes == other.mes &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nombre.hashCode);
    _$hash = $jc(_$hash, tiempo.hashCode);
    _$hash = $jc(_$hash, ingredientes.hashCode);
    _$hash = $jc(_$hash, mes.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlatillosPlanAlimenticioRecord')
          ..add('nombre', nombre)
          ..add('tiempo', tiempo)
          ..add('ingredientes', ingredientes)
          ..add('mes', mes)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PlatillosPlanAlimenticioRecordBuilder
    implements
        Builder<PlatillosPlanAlimenticioRecord,
            PlatillosPlanAlimenticioRecordBuilder> {
  _$PlatillosPlanAlimenticioRecord? _$v;

  String? _nombre;
  String? get nombre => _$this._nombre;
  set nombre(String? nombre) => _$this._nombre = nombre;

  String? _tiempo;
  String? get tiempo => _$this._tiempo;
  set tiempo(String? tiempo) => _$this._tiempo = tiempo;

  ListBuilder<String>? _ingredientes;
  ListBuilder<String> get ingredientes =>
      _$this._ingredientes ??= new ListBuilder<String>();
  set ingredientes(ListBuilder<String>? ingredientes) =>
      _$this._ingredientes = ingredientes;

  int? _mes;
  int? get mes => _$this._mes;
  set mes(int? mes) => _$this._mes = mes;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PlatillosPlanAlimenticioRecordBuilder() {
    PlatillosPlanAlimenticioRecord._initializeBuilder(this);
  }

  PlatillosPlanAlimenticioRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombre = $v.nombre;
      _tiempo = $v.tiempo;
      _ingredientes = $v.ingredientes?.toBuilder();
      _mes = $v.mes;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlatillosPlanAlimenticioRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PlatillosPlanAlimenticioRecord;
  }

  @override
  void update(void Function(PlatillosPlanAlimenticioRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlatillosPlanAlimenticioRecord build() => _build();

  _$PlatillosPlanAlimenticioRecord _build() {
    _$PlatillosPlanAlimenticioRecord _$result;
    try {
      _$result = _$v ??
          new _$PlatillosPlanAlimenticioRecord._(
              nombre: nombre,
              tiempo: tiempo,
              ingredientes: _ingredientes?.build(),
              mes: mes,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ingredientes';
        _ingredientes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PlatillosPlanAlimenticioRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
