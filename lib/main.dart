import 'package:flutter/material.dart';
import 'homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Post-Apocalyptic Theme',
      theme: ThemeData(
        primarySwatch: Colors.brown, // Use earthy tones for a post-apocalyptic feel
        brightness: Brightness.dark, // Dark mode for the apocalyptic theme
        fontFamily: 'Roboto', // Custom font if needed
        scaffoldBackgroundColor: Colors.grey[900], // Dark grey background
      ),
      home: HomePage(),
    );
  }
}