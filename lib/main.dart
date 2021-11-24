import 'package:flutter/material.dart';
import 'app.dart';
import 'di/injection_container.dart' as di;

void main() async {
  // Should call if any init data
  WidgetsFlutterBinding.ensureInitialized();

  // init dependency injection
  await di.init();

  runApp(App());
}
