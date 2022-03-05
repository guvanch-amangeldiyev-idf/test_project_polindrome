import 'package:flutter/material.dart';
import 'package:polindrome/di/injector.dart';
import 'package:presentation/pages/my_app.dart';

void main() async {
  await initInjector();
  runApp(const MyApp());
}
