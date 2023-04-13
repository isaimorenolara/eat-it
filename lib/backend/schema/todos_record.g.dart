// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todos_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TodosRecord> _$todosRecordSerializer = new _$TodosRecordSerializer();

class _$TodosRecordSerializer implements StructuredSerializer<TodosRecord> {
  @override
  final Iterable<Type> types = const [TodosRecord, _$TodosRecord];
  @override
  final String wireName = 'TodosRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, TodosRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.alimento;
    if (value != null) {
      result
        ..add('Alimento')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
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
    value = object.planLista;
    if (value != null) {
      result
        ..add('PlanLista')
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
  TodosRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TodosRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Alimento':
          result.alimento.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
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
        case 'PlanLista':
          result.planLista.replace(serializers.deserialize(value,
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

class _$TodosRecord extends TodosRecord {
  @override
  final BuiltList<String>? alimento;
  @override
  final BuiltList<String>? enfermedad;
  @override
  final BuiltList<String>? alergias;
  @override
  final BuiltList<String>? planLista;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$TodosRecord([void Function(TodosRecordBuilder)? updates]) =>
      (new TodosRecordBuilder()..update(updates))._build();

  _$TodosRecord._(
      {this.alimento,
      this.enfermedad,
      this.alergias,
      this.planLista,
      this.ffRef})
      : super._();

  @override
  TodosRecord rebuild(void Function(TodosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TodosRecordBuilder toBuilder() => new TodosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TodosRecord &&
        alimento == other.alimento &&
        enfermedad == other.enfermedad &&
        alergias == other.alergias &&
        planLista == other.planLista &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, alimento.hashCode);
    _$hash = $jc(_$hash, enfermedad.hashCode);
    _$hash = $jc(_$hash, alergias.hashCode);
    _$hash = $jc(_$hash, planLista.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TodosRecord')
          ..add('alimento', alimento)
          ..add('enfermedad', enfermedad)
          ..add('alergias', alergias)
          ..add('planLista', planLista)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class TodosRecordBuilder implements Builder<TodosRecord, TodosRecordBuilder> {
  _$TodosRecord? _$v;

  ListBuilder<String>? _alimento;
  ListBuilder<String> get alimento =>
      _$this._alimento ??= new ListBuilder<String>();
  set alimento(ListBuilder<String>? alimento) => _$this._alimento = alimento;

  ListBuilder<String>? _enfermedad;
  ListBuilder<String> get enfermedad =>
      _$this._enfermedad ??= new ListBuilder<String>();
  set enfermedad(ListBuilder<String>? enfermedad) =>
      _$this._enfermedad = enfermedad;

  ListBuilder<String>? _alergias;
  ListBuilder<String> get alergias =>
      _$this._alergias ??= new ListBuilder<String>();
  set alergias(ListBuilder<String>? alergias) => _$this._alergias = alergias;

  ListBuilder<String>? _planLista;
  ListBuilder<String> get planLista =>
      _$this._planLista ??= new ListBuilder<String>();
  set planLista(ListBuilder<String>? planLista) =>
      _$this._planLista = planLista;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  TodosRecordBuilder() {
    TodosRecord._initializeBuilder(this);
  }

  TodosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _alimento = $v.alimento?.toBuilder();
      _enfermedad = $v.enfermedad?.toBuilder();
      _alergias = $v.alergias?.toBuilder();
      _planLista = $v.planLista?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TodosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TodosRecord;
  }

  @override
  void update(void Function(TodosRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TodosRecord build() => _build();

  _$TodosRecord _build() {
    _$TodosRecord _$result;
    try {
      _$result = _$v ??
          new _$TodosRecord._(
              alimento: _alimento?.build(),
              enfermedad: _enfermedad?.build(),
              alergias: _alergias?.build(),
              planLista: _planLista?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'alimento';
        _alimento?.build();
        _$failedField = 'enfermedad';
        _enfermedad?.build();
        _$failedField = 'alergias';
        _alergias?.build();
        _$failedField = 'planLista';
        _planLista?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TodosRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
