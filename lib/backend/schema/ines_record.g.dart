// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ines_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InesRecord> _$inesRecordSerializer = new _$InesRecordSerializer();

class _$InesRecordSerializer implements StructuredSerializer<InesRecord> {
  @override
  final Iterable<Type> types = const [InesRecord, _$InesRecord];
  @override
  final String wireName = 'InesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, InesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.imgFrontal;
    if (value != null) {
      result
        ..add('img_frontal')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imgPosterior;
    if (value != null) {
      result
        ..add('img_posterior')
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
  InesRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'img_frontal':
          result.imgFrontal = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'img_posterior':
          result.imgPosterior = serializers.deserialize(value,
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

class _$InesRecord extends InesRecord {
  @override
  final String? imgFrontal;
  @override
  final String? imgPosterior;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$InesRecord([void Function(InesRecordBuilder)? updates]) =>
      (new InesRecordBuilder()..update(updates))._build();

  _$InesRecord._({this.imgFrontal, this.imgPosterior, this.ffRef}) : super._();

  @override
  InesRecord rebuild(void Function(InesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InesRecordBuilder toBuilder() => new InesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InesRecord &&
        imgFrontal == other.imgFrontal &&
        imgPosterior == other.imgPosterior &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, imgFrontal.hashCode);
    _$hash = $jc(_$hash, imgPosterior.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InesRecord')
          ..add('imgFrontal', imgFrontal)
          ..add('imgPosterior', imgPosterior)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class InesRecordBuilder implements Builder<InesRecord, InesRecordBuilder> {
  _$InesRecord? _$v;

  String? _imgFrontal;
  String? get imgFrontal => _$this._imgFrontal;
  set imgFrontal(String? imgFrontal) => _$this._imgFrontal = imgFrontal;

  String? _imgPosterior;
  String? get imgPosterior => _$this._imgPosterior;
  set imgPosterior(String? imgPosterior) => _$this._imgPosterior = imgPosterior;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  InesRecordBuilder() {
    InesRecord._initializeBuilder(this);
  }

  InesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imgFrontal = $v.imgFrontal;
      _imgPosterior = $v.imgPosterior;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InesRecord;
  }

  @override
  void update(void Function(InesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InesRecord build() => _build();

  _$InesRecord _build() {
    final _$result = _$v ??
        new _$InesRecord._(
            imgFrontal: imgFrontal, imgPosterior: imgPosterior, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
