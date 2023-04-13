// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retos_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RetosRecord> _$retosRecordSerializer = new _$RetosRecordSerializer();

class _$RetosRecordSerializer implements StructuredSerializer<RetosRecord> {
  @override
  final Iterable<Type> types = const [RetosRecord, _$RetosRecord];
  @override
  final String wireName = 'RetosRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, RetosRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.descripcion;
    if (value != null) {
      result
        ..add('descripcion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.titulo;
    if (value != null) {
      result
        ..add('titulo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.semana;
    if (value != null) {
      result
        ..add('semana')
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
  RetosRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RetosRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'descripcion':
          result.descripcion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'titulo':
          result.titulo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'semana':
          result.semana = serializers.deserialize(value,
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

class _$RetosRecord extends RetosRecord {
  @override
  final String? descripcion;
  @override
  final String? titulo;
  @override
  final int? semana;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$RetosRecord([void Function(RetosRecordBuilder)? updates]) =>
      (new RetosRecordBuilder()..update(updates))._build();

  _$RetosRecord._({this.descripcion, this.titulo, this.semana, this.ffRef})
      : super._();

  @override
  RetosRecord rebuild(void Function(RetosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RetosRecordBuilder toBuilder() => new RetosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RetosRecord &&
        descripcion == other.descripcion &&
        titulo == other.titulo &&
        semana == other.semana &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, descripcion.hashCode);
    _$hash = $jc(_$hash, titulo.hashCode);
    _$hash = $jc(_$hash, semana.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RetosRecord')
          ..add('descripcion', descripcion)
          ..add('titulo', titulo)
          ..add('semana', semana)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class RetosRecordBuilder implements Builder<RetosRecord, RetosRecordBuilder> {
  _$RetosRecord? _$v;

  String? _descripcion;
  String? get descripcion => _$this._descripcion;
  set descripcion(String? descripcion) => _$this._descripcion = descripcion;

  String? _titulo;
  String? get titulo => _$this._titulo;
  set titulo(String? titulo) => _$this._titulo = titulo;

  int? _semana;
  int? get semana => _$this._semana;
  set semana(int? semana) => _$this._semana = semana;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  RetosRecordBuilder() {
    RetosRecord._initializeBuilder(this);
  }

  RetosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _descripcion = $v.descripcion;
      _titulo = $v.titulo;
      _semana = $v.semana;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RetosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RetosRecord;
  }

  @override
  void update(void Function(RetosRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RetosRecord build() => _build();

  _$RetosRecord _build() {
    final _$result = _$v ??
        new _$RetosRecord._(
            descripcion: descripcion,
            titulo: titulo,
            semana: semana,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
