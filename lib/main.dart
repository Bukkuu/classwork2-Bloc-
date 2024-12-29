import 'package:bloc_project/app.dart';
import 'package:bloc_project/service_locator.dart';
import 'package:flutter/material.dart';

void main() async {
  // sabai bhanda first ma akchoti matra dekhauna ko lagi  auna parni kura haru load garna ko lagi yo use gareko
  WidgetsFlutterBinding.ensureInitialized();
  await InitDependencies();
  runApp(
    App(),
  );
}
