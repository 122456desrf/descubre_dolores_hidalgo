import 'package:descubre_dolores_hidalgo/domain/entities/lugar_turistico.dart';
import 'package:descubre_dolores_hidalgo/domain/usecases/obtener_lugares.dart';
import 'package:flutter/material.dart';

class LugaresViewModel extends ChangeNotifier {
  final ObtenerLugares obtenerLugares;
  LugaresViewModel(this.obtenerLugares);

  List<LugarTuristico> _lugares = [];
  List<LugarTuristico> get lugares => _lugares;

  bool _cargando = false;
  bool get cargando => _cargando;

  Future<void> cargar() async{
    _cargando = true;
    notifyListeners();
    _lugares = await obtenerLugares();
    _cargando = false;
    notifyListeners();
  }
}