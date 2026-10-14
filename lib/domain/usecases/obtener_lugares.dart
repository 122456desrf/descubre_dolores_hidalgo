import 'package:descubre_dolores_hidalgo/domain/entities/lugar_turistico.dart';
import 'package:descubre_dolores_hidalgo/domain/repositories/lugares_repository.dart';

class ObtenerLugares {
  final LugaresRepository repository;
  ObtenerLugares(this.repository);

  Future<List<LugarTuristico>> call(){
    return repository.obtenerTodos();
  }
}