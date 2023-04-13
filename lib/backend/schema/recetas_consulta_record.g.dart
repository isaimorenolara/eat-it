// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recetas_consulta_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RecetasConsultaRecord> _$recetasConsultaRecordSerializer =
    new _$RecetasConsultaRecordSerializer();

class _$RecetasConsultaRecordSerializer
    implements StructuredSerializer<RecetasConsultaRecord> {
  @override
  final Iterable<Type> types = const [
    RecetasConsultaRecord,
    _$RecetasConsultaRecord
  ];
  @override
  final String wireName = 'RecetasConsultaRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, RecetasConsultaRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.clave;
    if (value != null) {
      result
        ..add('clave')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.receta;
    if (value != null) {
      result
        ..add('receta')
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
  RecetasConsultaRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RecetasConsultaRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'clave':
          result.clave = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'receta':
          result.receta = serializers.deserialize(value,
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

class _$RecetasConsultaRecord extends RecetasConsultaRecord {
  @override
  final String? clave;
  @override
  final String? receta;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$RecetasConsultaRecord(
          [void Function(RecetasConsultaRecordBuilder)? updates]) =>
      (new RecetasConsultaRecordBuilder()..update(updates))._build();

  _$RecetasConsultaRecord._({this.clave, this.receta, this.ffRef}) : super._();

  @override
  RecetasConsultaRecord rebuild(
          void Function(RecetasConsultaRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecetasConsultaRecordBuilder toBuilder() =>
      new RecetasConsultaRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecetasConsultaRecord &&
        clave == other.clave &&
        receta == other.receta &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clave.hashCode);
    _$hash = $jc(_$hash, receta.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RecetasConsultaRecord')
          ..add('clave', clave)
          ..add('receta', receta)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class RecetasConsultaRecordBuilder
    implements Builder<RecetasConsultaRecord, RecetasConsultaRecordBuilder> {
  _$RecetasConsultaRecord? _$v;

  String? _clave;
  String? get clave => _$this._clave;
  set clave(String? clave) => _$this._clave = clave;

  String? _receta;
  String? get receta => _$this._receta;
  set receta(String? receta) => _$this._receta = receta;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  RecetasConsultaRecordBuilder() {
    RecetasConsultaRecord._initializeBuilder(this);
  }

  RecetasConsultaRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clave = $v.clave;
      _receta = $v.receta;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecetasConsultaRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RecetasConsultaRecord;
  }

  @override
  void update(void Function(RecetasConsultaRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RecetasConsultaRecord build() => _build();

  _$RecetasConsultaRecord _build() {
    final _$result = _$v ??
        new _$RecetasConsultaRecord._(
            clave: clave, receta: receta, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
