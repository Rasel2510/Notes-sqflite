import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/constaines/navigaton_servise.dart';
import 'package:todo/features/data/provider.dart';
import 'package:todo/features/presentation/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TodoProvider(),
      child: MaterialApp(
        navigatorKey: NavigationService().navigatorKey,
        debugShowCheckedModeBanner: false,
        home: HomeF(),
      ),
    );
  }
}
