import 'package:flutter/material.dart';
import 'package:flutter_application/flavor_config.dart';
import 'package:flutter_application/main.dart';

void main() async {
  AppConfig.create(
    primaryColor: Colors.yellow,
    flavor: Flavor.dev,
  );
  runApp(MyApp());
}
