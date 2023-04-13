// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ine_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<IneRecord> _$ineRecordSerializer = new _$IneRecordSerializer();

class _$IneRecordSerializer implements StructuredSerializer<IneRecord> {
  @override
  final Iterable<Type> types = const [IneRecord, _$IneRecord];
  @override
  final String wireName = 'IneRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, IneRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.imagenF;
    if (value != null) {
      result
        ..add('ImagenF')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imagenT;
    if (value != null) {
      result
        ..add('ImagenT')
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
  IneRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new IneRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'ImagenF':
          result.imagenF = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ImagenT':
          result.imagenT = serializers.deserialize(value,
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

class _$IneRecord extends IneRecord {
  @override
  final String? imagenF;
  @override
  final String? imagenT;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$IneRecord([void Function(IneRecordBuilder)? updates]) =>
      (new IneRecordBuilder()..update(updates))._build();

  _$IneRecord._({this.imagenF, this.imagenT, this.ffRef}) : super._();

  @override
  IneRecord rebuild(void Function(IneRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IneRecordBuilder toBuilder() => new IneRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IneRecord &&
        imagenF == other.imagenF &&
        imagenT == other.imagenT &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, imagenF.hashCode);
    _$hash = $jc(_$hash, imagenT.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IneRecord')
          ..add('imagenF', imagenF)
          ..add('imagenT', imagenT)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class IneRecordBuilder implements Builder<IneRecord, IneRecordBuilder> {
  _$IneRecord? _$v;

  String? _imagenF;
  String? get imagenF => _$this._imagenF;
  set imagenF(String? imagenF) => _$this._imagenF = imagenF;

  String? _imagenT;
  String? get imagenT => _$this._imagenT;
  set imagenT(String? imagenT) => _$this._imagenT = imagenT;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  IneRecordBuilder() {
    IneRecord._initializeBuilder(this);
  }

  IneRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imagenF = $v.imagenF;
      _imagenT = $v.imagenT;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IneRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IneRecord;
  }

  @override
  void update(void Function(IneRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IneRecord build() => _build();

  _$IneRecord _build() {
    final _$result = _$v ??
        new _$IneRecord._(imagenF: imagenF, imagenT: imagenT, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
