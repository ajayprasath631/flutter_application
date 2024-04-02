import 'package:flutter/material.dart';
import 'package:flutter_application/flavor_config.dart';
import 'package:flutter_application/main.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  AppConfig.create(
    primaryColor: Colors.yellow,
    flavor: Flavor.dev,
  );
  var environment = AppConfig.shared.flavor;
  String env = environment.name.toString();
  await dotenv.load(fileName: 'env/.env.$env');
  var api = AppConfig.applicationName;
  print(api);
  runApp(MyApp());
}
