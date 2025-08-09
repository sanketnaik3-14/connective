import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:connective/src/core/routing/app_router.dart';
import 'package:connective/src/core/theme/app_theme.dart';
import 'firebase_options.dart';
import 'package:flutter/foundation.dart'; // Import kIsWeb

// ADD THIS IMPORT for localization
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Conditionally initialize Firebase for Web
  if (kIsWeb) {
    // Web
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        // PASTE YOUR WEB CONFIG VALUES HERE
        apiKey: "AIzaSyBvtGoMDbI79tBKth42BouiXvuCFJbSmRA",
        authDomain: "connective-5d44e.firebaseapp.com",
        projectId: "connective-5d44e",
        storageBucket: "connective-5d44e.firebasestorage.app",
        messagingSenderId: "667936759100",
        appId: "1:667936759100:web:d440f8d391d6c050de9239",
        measurementId: "G-B7V52RLT5M",
      ),
    );
  } else {
    // Mobile (iOS/Android)
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }

  runApp(const ProviderScope(child: ConnectiveApp()));
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
      // --- ADD THESE THREE LINES ---
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      supportedLocales: const [
        Locale('en', ''), // English, no country code
      ],
      // ----------------------------
    );
  }
}
