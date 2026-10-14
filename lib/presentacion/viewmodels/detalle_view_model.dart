import 'package:descubre_dolores_hidalgo/domain/entities/lugar_turistico.dart';
import 'package:flutter/widgets.dart';
import 'package:audioplayers/audioplayers.dart';

class DetalleViewModel extends ChangeNotifier{
  final LugarTuristico lugar;
  final AudioPlayer _reproductor = AudioPlayer();
  bool reproduciendo = false;

  DetalleViewModel(this.lugar);

  Future<void> alternarAudio() async{
    if(reproduciendo){
      await _reproductor.pause();
    }else{
      await _reproductor.play(AssetSource(lugar.audioAsset));
    }
    reproduciendo = !reproduciendo;
    notifyListeners();
  }

  @override
  void dispose(){
    _reproductor.dispose();
    super.dispose();
  }

  
}