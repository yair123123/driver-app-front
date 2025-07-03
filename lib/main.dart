import 'package:driver_app/app.dart';
import 'package:driver_app/core/env/env.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (!kIsWeb) await dotenv.load();
  Env.init();
  runApp(const ProviderScope(child: MyApp()));
}
