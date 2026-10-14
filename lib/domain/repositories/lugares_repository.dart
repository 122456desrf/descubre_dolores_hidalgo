import 'package:descubre_dolores_hidalgo/domain/entities/lugar_turistico.dart';

abstract class LugaresRepository {
  Future<List<LugarTuristico>> obtenerTodos();
  Future<LugarTuristico?> obtenerPorId(String id);
}