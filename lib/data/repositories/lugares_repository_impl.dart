import 'package:descubre_dolores_hidalgo/data/datasources/lugares_local_datasource.dart';
import 'package:descubre_dolores_hidalgo/domain/entities/lugar_turistico.dart';
import 'package:descubre_dolores_hidalgo/domain/repositories/lugares_repository.dart';

class LugaresRepositoryImpl implements LugaresRepository {
  final LugaresLocalDatasource dataSource;
  LugaresRepositoryImpl(this.dataSource);

  @override
  Future<List<LugarTuristico>> obtenerTodos() async {
    return dataSource.ObtenerLugares();
  }

  @override
  Future<LugarTuristico?> obtenerPorId(String id) async{
    final lugares = dataSource.ObtenerLugares();
    for (final lugar in lugares){
      if (lugar.id == id) return lugar;
    }
    return null;
  }
  
}