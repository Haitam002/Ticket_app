import 'package:flutter/material.dart';
import 'package:ticket_app/screens/bottom_bar.dart';
import 'package:ticket_app/utils/app_styles.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  
  const MyApp({super.key, });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          primaryColor: primary),
      home: const BottomBar(),
    );
  }
} 
