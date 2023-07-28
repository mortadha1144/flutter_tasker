import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/utils/app_router.dart';
import 'core/utils/providers/app_providers.dart';
import 'core/utils/shared_prefrences.dart';
import 'core/utils/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SharedPrefs.init();
  runApp(
    const ProviderScope(
      
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: theme(),
    );
  }
}
