import 'package:flutter/material.dart';

import 'core/services/my_services.dart';
import 'my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

