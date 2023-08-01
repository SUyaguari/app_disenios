import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'scroll-desing',
      routes: {
        'basic-desing': (BuildContext context) => const BasicDesingScreen(),
        'scroll-desing': (BuildContext context) => const ScrollScreen(),
        'grid-desing': (BuildContext context) => const GridScreen(),
      },
    );
  }
}
