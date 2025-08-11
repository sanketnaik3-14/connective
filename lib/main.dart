// lib/main.dart

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'; // Import Riverpod
import 'package:connective/src/core/routing/app_router.dart';
import 'package:connective/src/core/theme/app_theme.dart';
import 'firebase_options.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // FIX: The entire application should be wrapped in a ProviderScope.
  // This is what allows the DevTools to discover your providers.
  runApp(
    const ProviderScope(
      child: ConnectiveApp(),
    ),
  );
}

class ConnectiveApp extends ConsumerWidget {
  const ConnectiveApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(goRouterProvider);
    return MaterialApp.router(
      title: 'Connective',
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      supportedLocales: const [
        Locale('en', ''),
      ],
    );
  }
}
