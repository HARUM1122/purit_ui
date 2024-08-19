import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:device_preview/device_preview.dart';

import 'src/routes/routes.dart';

import 'src/home/screen/splash_screen.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.black.withOpacity(0.002),
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.black.withOpacity(0.002),
        systemNavigationBarIconBrightness: Brightness.dark
      ),
    );
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.edgeToEdge,
      overlays: SystemUiOverlay.values
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
        useMaterial3: false,
        fontFamily: 'Montserrat'
      ),
      onGenerateRoute: generateRoutes,
      home: const SplashScreen()
    );
  }
}