import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

enum Flavor { prod, dev }

class AppConfig {
  MaterialColor primaryColor = Colors.blue;
  Flavor flavor = Flavor.dev;

  static AppConfig shared = AppConfig.create();

  factory AppConfig.create({
    MaterialColor primaryColor = Colors.blue,
    Flavor flavor = Flavor.dev,
  }) {
    return shared = AppConfig(primaryColor, flavor);
  }

  AppConfig(this.primaryColor, this.flavor);

  //dotEnv variable
  static String applicationName =
      dotenv.get('GOOGLE_MAPS_BASE_URL', fallback: 'Flutterbase');
}
