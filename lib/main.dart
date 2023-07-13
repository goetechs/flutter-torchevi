import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:torch_controller/torch_controller.dart';
import 'package:torchevi/screens/homescreen.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  await Future.delayed( const Duration(milliseconds: 100));
  FlutterNativeSplash.remove();

  TorchController().initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: home(),
    );
  }
}