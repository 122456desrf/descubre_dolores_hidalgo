import 'package:descubre_dolores_hidalgo/domain/entities/lugar_turistico.dart';
import 'package:descubre_dolores_hidalgo/presentacion/viewmodels/detalle_view_model.dart';
import 'package:flutter/material.dart';

class DetalleLugarScreen extends StatefulWidget {
  final LugarTuristico lugar;
  const DetalleLugarScreen({super.key, required this.lugar});

  @override
  State<DetalleLugarScreen> createState() => _DetalleLugarScreenState();
  }

  class _DetalleLugarScreenState extends State<DetalleLugarScreen> {
    late final DetalleViewModel _viewModel;
    VideoPlayerController? _videoController;

    @override
    void initState(){
      super.initState();
      _viewModel = DetalleViewModel(widget.lugar);
      final video = widget.lugar.videoAsset;
      if (video != null){
        _videoController = VideoPlayerController.asset(video)
        ..initialize().them((_)=> setState((){}));
      }
    }
    
    @override 
    void dispose(){
      _viewModel.dispose();
      _videoController?.dispose();
      super.dispose();
    }

    @override 

  }




}