import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lanchonete/core/app_widget.dart';

void main() {
  //Comando para cortar barras superiores e inferiores.
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  runApp(const MyApp());
}



