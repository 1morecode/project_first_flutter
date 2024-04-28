
// Entry Point of Flutter/Dart
import 'package:flutter/material.dart';
import 'package:project_first/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // Running the Flutter Initial UI
  runApp(const MyApp());
}

// Flutter UI Initialized
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "My First Flutter App",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
