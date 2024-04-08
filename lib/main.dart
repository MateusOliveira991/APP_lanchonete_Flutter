import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lanchonete/core/app_widget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  runApp(const MyApp());
}



