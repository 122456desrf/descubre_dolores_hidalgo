import 'package:descubre_dolores_hidalgo/domain/entities/lugar_turistico.dart';
import 'package:descubre_dolores_hidalgo/domain/repositories/lugares_repository.dart';

class ObtenerLugarPorId {
  final LugaresRepository repository;
  ObtenerLugarPorId(this.repository);

  Future<LugarTuristico?> call(String id){
    return repository.obtenerPorId(id);
  }
}