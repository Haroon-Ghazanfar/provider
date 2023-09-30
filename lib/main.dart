import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/home.dart';
import 'package:provider_practice/list_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => NumbersListProvider())
      ],
      child: const MaterialApp(
        home: home_page(),
      ),
    );
  }
}
