import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sdgi_insight/core/services/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    return MaterialApp(
      title: 'SDGI Insight',
      theme: ThemeData(
        useMaterial3: true,
      ),
      onGenerateRoute: generateRoute,
    );
  }
}
