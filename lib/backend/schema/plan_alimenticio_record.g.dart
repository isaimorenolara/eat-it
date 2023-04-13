// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan_alimenticio_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PlanAlimenticioRecord> _$planAlimenticioRecordSerializer =
    new _$PlanAlimenticioRecordSerializer();

class _$PlanAlimenticioRecordSerializer
    implements StructuredSerializer<PlanAlimenticioRecord> {
  @override
  final Iterable<Type> types = const [
    PlanAlimenticioRecord,
    _$PlanAlimenticioRecord
  ];
  @override
  final String wireName = 'PlanAlimenticioRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PlanAlimenticioRecord object,
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
    value = object.platillos;
    if (value != null) {
      result
        ..add('platillos')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.autor;
    if (value != null) {
      result
        ..add('autor')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pesoMinimo;
    if (value != null) {
      result
        ..add('PesoMinimo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.pesoMaximo;
    if (value != null) {
      result
        ..add('PesoMaximo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.estaturaMaxima;
    if (value != null) {
      result
        ..add('EstaturaMaxima')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.estaturaMinima;
    if (value != null) {
      result
        ..add('EstaturaMinima')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
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
    value = object.genero;
    if (value != null) {
      result
        ..add('Genero')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imagenPortada;
    if (value != null) {
      result
        ..add('ImagenPortada')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.duracion;
    if (value != null) {
      result
        ..add('Duracion')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.retosemanales;
    if (value != null) {
      result
        ..add('Retosemanales')
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
  PlanAlimenticioRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PlanAlimenticioRecordBuilder();

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
        case 'platillos':
          result.platillos.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'autor':
          result.autor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'PesoMinimo':
          result.pesoMinimo = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'PesoMaximo':
          result.pesoMaximo = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'EstaturaMaxima':
          result.estaturaMaxima = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'EstaturaMinima':
          result.estaturaMinima = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
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
        case 'Genero':
          result.genero = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ImagenPortada':
          result.imagenPortada = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Duracion':
          result.duracion = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Retosemanales':
          result.retosemanales = serializers.deserialize(value,
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

class _$PlanAlimenticioRecord extends PlanAlimenticioRecord {
  @override
  final String? nombre;
  @override
  final BuiltList<String>? platillos;
  @override
  final String? autor;
  @override
  final double? pesoMinimo;
  @override
  final double? pesoMaximo;
  @override
  final double? estaturaMaxima;
  @override
  final double? estaturaMinima;
  @override
  final BuiltList<String>? enfermedad;
  @override
  final BuiltList<String>? alergias;
  @override
  final String? genero;
  @override
  final String? imagenPortada;
  @override
  final int? duracion;
  @override
  final String? retosemanales;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PlanAlimenticioRecord(
          [void Function(PlanAlimenticioRecordBuilder)? updates]) =>
      (new PlanAlimenticioRecordBuilder()..update(updates))._build();

  _$PlanAlimenticioRecord._(
      {this.nombre,
      this.platillos,
      this.autor,
      this.pesoMinimo,
      this.pesoMaximo,
      this.estaturaMaxima,
      this.estaturaMinima,
      this.enfermedad,
      this.alergias,
      this.genero,
      this.imagenPortada,
      this.duracion,
      this.retosemanales,
      this.ffRef})
      : super._();

  @override
  PlanAlimenticioRecord rebuild(
          void Function(PlanAlimenticioRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlanAlimenticioRecordBuilder toBuilder() =>
      new PlanAlimenticioRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlanAlimenticioRecord &&
        nombre == other.nombre &&
        platillos == other.platillos &&
        autor == other.autor &&
        pesoMinimo == other.pesoMinimo &&
        pesoMaximo == other.pesoMaximo &&
        estaturaMaxima == other.estaturaMaxima &&
        estaturaMinima == other.estaturaMinima &&
        enfermedad == other.enfermedad &&
        alergias == other.alergias &&
        genero == other.genero &&
        imagenPortada == other.imagenPortada &&
        duracion == other.duracion &&
        retosemanales == other.retosemanales &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nombre.hashCode);
    _$hash = $jc(_$hash, platillos.hashCode);
    _$hash = $jc(_$hash, autor.hashCode);
    _$hash = $jc(_$hash, pesoMinimo.hashCode);
    _$hash = $jc(_$hash, pesoMaximo.hashCode);
    _$hash = $jc(_$hash, estaturaMaxima.hashCode);
    _$hash = $jc(_$hash, estaturaMinima.hashCode);
    _$hash = $jc(_$hash, enfermedad.hashCode);
    _$hash = $jc(_$hash, alergias.hashCode);
    _$hash = $jc(_$hash, genero.hashCode);
    _$hash = $jc(_$hash, imagenPortada.hashCode);
    _$hash = $jc(_$hash, duracion.hashCode);
    _$hash = $jc(_$hash, retosemanales.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlanAlimenticioRecord')
          ..add('nombre', nombre)
          ..add('platillos', platillos)
          ..add('autor', autor)
          ..add('pesoMinimo', pesoMinimo)
          ..add('pesoMaximo', pesoMaximo)
          ..add('estaturaMaxima', estaturaMaxima)
          ..add('estaturaMinima', estaturaMinima)
          ..add('enfermedad', enfermedad)
          ..add('alergias', alergias)
          ..add('genero', genero)
          ..add('imagenPortada', imagenPortada)
          ..add('duracion', duracion)
          ..add('retosemanales', retosemanales)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PlanAlimenticioRecordBuilder
    implements Builder<PlanAlimenticioRecord, PlanAlimenticioRecordBuilder> {
  _$PlanAlimenticioRecord? _$v;

  String? _nombre;
  String? get nombre => _$this._nombre;
  set nombre(String? nombre) => _$this._nombre = nombre;

  ListBuilder<String>? _platillos;
  ListBuilder<String> get platillos =>
      _$this._platillos ??= new ListBuilder<String>();
  set platillos(ListBuilder<String>? platillos) =>
      _$this._platillos = platillos;

  String? _autor;
  String? get autor => _$this._autor;
  set autor(String? autor) => _$this._autor = autor;

  double? _pesoMinimo;
  double? get pesoMinimo => _$this._pesoMinimo;
  set pesoMinimo(double? pesoMinimo) => _$this._pesoMinimo = pesoMinimo;

  double? _pesoMaximo;
  double? get pesoMaximo => _$this._pesoMaximo;
  set pesoMaximo(double? pesoMaximo) => _$this._pesoMaximo = pesoMaximo;

  double? _estaturaMaxima;
  double? get estaturaMaxima => _$this._estaturaMaxima;
  set estaturaMaxima(double? estaturaMaxima) =>
      _$this._estaturaMaxima = estaturaMaxima;

  double? _estaturaMinima;
  double? get estaturaMinima => _$this._estaturaMinima;
  set estaturaMinima(double? estaturaMinima) =>
      _$this._estaturaMinima = estaturaMinima;

  ListBuilder<String>? _enfermedad;
  ListBuilder<String> get enfermedad =>
      _$this._enfermedad ??= new ListBuilder<String>();
  set enfermedad(ListBuilder<String>? enfermedad) =>
      _$this._enfermedad = enfermedad;

  ListBuilder<String>? _alergias;
  ListBuilder<String> get alergias =>
      _$this._alergias ??= new ListBuilder<String>();
  set alergias(ListBuilder<String>? alergias) => _$this._alergias = alergias;

  String? _genero;
  String? get genero => _$this._genero;
  set genero(String? genero) => _$this._genero = genero;

  String? _imagenPortada;
  String? get imagenPortada => _$this._imagenPortada;
  set imagenPortada(String? imagenPortada) =>
      _$this._imagenPortada = imagenPortada;

  int? _duracion;
  int? get duracion => _$this._duracion;
  set duracion(int? duracion) => _$this._duracion = duracion;

  String? _retosemanales;
  String? get retosemanales => _$this._retosemanales;
  set retosemanales(String? retosemanales) =>
      _$this._retosemanales = retosemanales;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PlanAlimenticioRecordBuilder() {
    PlanAlimenticioRecord._initializeBuilder(this);
  }

  PlanAlimenticioRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombre = $v.nombre;
      _platillos = $v.platillos?.toBuilder();
      _autor = $v.autor;
      _pesoMinimo = $v.pesoMinimo;
      _pesoMaximo = $v.pesoMaximo;
      _estaturaMaxima = $v.estaturaMaxima;
      _estaturaMinima = $v.estaturaMinima;
      _enfermedad = $v.enfermedad?.toBuilder();
      _alergias = $v.alergias?.toBuilder();
      _genero = $v.genero;
      _imagenPortada = $v.imagenPortada;
      _duracion = $v.duracion;
      _retosemanales = $v.retosemanales;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlanAlimenticioRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PlanAlimenticioRecord;
  }

  @override
  void update(void Function(PlanAlimenticioRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlanAlimenticioRecord build() => _build();

  _$PlanAlimenticioRecord _build() {
    _$PlanAlimenticioRecord _$result;
    try {
      _$result = _$v ??
          new _$PlanAlimenticioRecord._(
              nombre: nombre,
              platillos: _platillos?.build(),
              autor: autor,
              pesoMinimo: pesoMinimo,
              pesoMaximo: pesoMaximo,
              estaturaMaxima: estaturaMaxima,
              estaturaMinima: estaturaMinima,
              enfermedad: _enfermedad?.build(),
              alergias: _alergias?.build(),
              genero: genero,
              imagenPortada: imagenPortada,
              duracion: duracion,
              retosemanales: retosemanales,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'platillos';
        _platillos?.build();

        _$failedField = 'enfermedad';
        _enfermedad?.build();
        _$failedField = 'alergias';
        _alergias?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PlanAlimenticioRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
