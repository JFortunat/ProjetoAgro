import 'package:farm_management/app/core/color_schemes.g.dart';
import 'package:farm_management/app/core/routes.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: routes,
    );
  }
}