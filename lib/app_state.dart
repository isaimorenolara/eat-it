import 'package:flutter/material.dart';
import 'backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _isNutriologo = prefs.getBool('ff_isNutriologo') ?? _isNutriologo;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _isNutriologo = false;
  bool get isNutriologo => _isNutriologo;
  set isNutriologo(bool _value) {
    _isNutriologo = _value;
    prefs.setBool('ff_isNutriologo', _value);
  }

  List<String> _Paciente = ['Hello World', '12'];
  List<String> get Paciente => _Paciente;
  set Paciente(List<String> _value) {
    _Paciente = _value;
  }

  void addToPaciente(String _value) {
    _Paciente.add(_value);
  }

  void removeFromPaciente(String _value) {
    _Paciente.remove(_value);
  }

  void removeAtIndexFromPaciente(int _index) {
    _Paciente.removeAt(_index);
  }

  bool _PacienteUsuario = true;
  bool get PacienteUsuario => _PacienteUsuario;
  set PacienteUsuario(bool _value) {
    _PacienteUsuario = _value;
  }

  List<String> _Alimento = [];
  List<String> get Alimento => _Alimento;
  set Alimento(List<String> _value) {
    _Alimento = _value;
  }

  void addToAlimento(String _value) {
    _Alimento.add(_value);
  }

  void removeFromAlimento(String _value) {
    _Alimento.remove(_value);
  }

  void removeAtIndexFromAlimento(int _index) {
    _Alimento.removeAt(_index);
  }

  String _email = '';
  String get email => _email;
  set email(String _value) {
    _email = _value;
  }

  String _contrasena = '';
  String get contrasena => _contrasena;
  set contrasena(String _value) {
    _contrasena = _value;
  }

  double _Edad = 0.0;
  double get Edad => _Edad;
  set Edad(double _value) {
    _Edad = _value;
  }

  double _Peso = 0.0;
  double get Peso => _Peso;
  set Peso(double _value) {
    _Peso = _value;
  }

  double _Estatura = 0.0;
  double get Estatura => _Estatura;
  set Estatura(double _value) {
    _Estatura = _value;
  }

  List<String> _Alergias = [];
  List<String> get Alergias => _Alergias;
  set Alergias(List<String> _value) {
    _Alergias = _value;
  }

  void addToAlergias(String _value) {
    _Alergias.add(_value);
  }

  void removeFromAlergias(String _value) {
    _Alergias.remove(_value);
  }

  void removeAtIndexFromAlergias(int _index) {
    _Alergias.removeAt(_index);
  }

  List<String> _Enfermedad = [];
  List<String> get Enfermedad => _Enfermedad;
  set Enfermedad(List<String> _value) {
    _Enfermedad = _value;
  }

  void addToEnfermedad(String _value) {
    _Enfermedad.add(_value);
  }

  void removeFromEnfermedad(String _value) {
    _Enfermedad.remove(_value);
  }

  void removeAtIndexFromEnfermedad(int _index) {
    _Enfermedad.removeAt(_index);
  }

  String _Genero = '';
  String get Genero => _Genero;
  set Genero(String _value) {
    _Genero = _value;
  }

  String _Alimentonogusta = '';
  String get Alimentonogusta => _Alimentonogusta;
  set Alimentonogusta(String _value) {
    _Alimentonogusta = _value;
  }

  String _Meta = '';
  String get Meta => _Meta;
  set Meta(String _value) {
    _Meta = _value;
  }

  String _selectedPlan = 'Plan Mes 1';
  String get selectedPlan => _selectedPlan;
  set selectedPlan(String _value) {
    _selectedPlan = _value;
  }

  String _Nombre = '';
  String get Nombre => _Nombre;
  set Nombre(String _value) {
    _Nombre = _value;
  }

  String _PrimerApellido = '';
  String get PrimerApellido => _PrimerApellido;
  set PrimerApellido(String _value) {
    _PrimerApellido = _value;
  }

  String _SegundoApellido = '';
  String get SegundoApellido => _SegundoApellido;
  set SegundoApellido(String _value) {
    _SegundoApellido = _value;
  }

  String _Cedula = '';
  String get Cedula => _Cedula;
  set Cedula(String _value) {
    _Cedula = _value;
  }

  String _ImagenT = '';
  String get ImagenT => _ImagenT;
  set ImagenT(String _value) {
    _ImagenT = _value;
  }

  String _ImagenF = '';
  String get ImagenF => _ImagenF;
  set ImagenF(String _value) {
    _ImagenF = _value;
  }

  List<String> _Calorias = [];
  List<String> get Calorias => _Calorias;
  set Calorias(List<String> _value) {
    _Calorias = _value;
  }

  void addToCalorias(String _value) {
    _Calorias.add(_value);
  }

  void removeFromCalorias(String _value) {
    _Calorias.remove(_value);
  }

  void removeAtIndexFromCalorias(int _index) {
    _Calorias.removeAt(_index);
  }

  List<String> _Proteinas = [];
  List<String> get Proteinas => _Proteinas;
  set Proteinas(List<String> _value) {
    _Proteinas = _value;
  }

  void addToProteinas(String _value) {
    _Proteinas.add(_value);
  }

  void removeFromProteinas(String _value) {
    _Proteinas.remove(_value);
  }

  void removeAtIndexFromProteinas(int _index) {
    _Proteinas.removeAt(_index);
  }

  List<String> _platillos = [];
  List<String> get platillos => _platillos;
  set platillos(List<String> _value) {
    _platillos = _value;
  }

  void addToPlatillos(String _value) {
    _platillos.add(_value);
  }

  void removeFromPlatillos(String _value) {
    _platillos.remove(_value);
  }

  void removeAtIndexFromPlatillos(int _index) {
    _platillos.removeAt(_index);
  }

  String _outputgpt = '';
  String get outputgpt => _outputgpt;
  set outputgpt(String _value) {
    _outputgpt = _value;
  }

  String _ImagenAlmacenamiento = '';
  String get ImagenAlmacenamiento => _ImagenAlmacenamiento;
  set ImagenAlmacenamiento(String _value) {
    _ImagenAlmacenamiento = _value;
  }

  int _Mes = 0;
  int get Mes => _Mes;
  set Mes(int _value) {
    _Mes = _value;
  }

  String _nombreplan = '';
  String get nombreplan => _nombreplan;
  set nombreplan(String _value) {
    _nombreplan = _value;
  }

  String _retossemanales = '';
  String get retossemanales => _retossemanales;
  set retossemanales(String _value) {
    _retossemanales = _value;
  }

  bool _muestraReceta = false;
  bool get muestraReceta => _muestraReceta;
  set muestraReceta(bool _value) {
    _muestraReceta = _value;
  }

  bool _muestraRandom = false;
  bool get muestraRandom => _muestraRandom;
  set muestraRandom(bool _value) {
    _muestraRandom = _value;
  }

  int _random = 0;
  int get random => _random;
  set random(int _value) {
    _random = _value;
  }

  List<String> _platillosplan = [];
  List<String> get platillosplan => _platillosplan;
  set platillosplan(List<String> _value) {
    _platillosplan = _value;
  }

  void addToPlatillosplan(String _value) {
    _platillosplan.add(_value);
  }

  void removeFromPlatillosplan(String _value) {
    _platillosplan.remove(_value);
  }

  void removeAtIndexFromPlatillosplan(int _index) {
    _platillosplan.removeAt(_index);
  }

  List<String> _Ingredientes = [];
  List<String> get Ingredientes => _Ingredientes;
  set Ingredientes(List<String> _value) {
    _Ingredientes = _value;
  }

  void addToIngredientes(String _value) {
    _Ingredientes.add(_value);
  }

  void removeFromIngredientes(String _value) {
    _Ingredientes.remove(_value);
  }

  void removeAtIndexFromIngredientes(int _index) {
    _Ingredientes.removeAt(_index);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
