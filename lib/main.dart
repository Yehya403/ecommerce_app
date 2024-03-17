import 'package:ecommerce_app/ui/home/home_tab/home_tab.dart';
import 'package:ecommerce_app/ui/home_screen.dart';
import 'package:flutter/material.dart';

import 'di/di.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      initialRoute: HomeTab.routeName,
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        HomeTab.routeName: (context) => const HomeTab(),
      },
    );
  }
}
