import 'package:flutter/material.dart';
import 'package:water_reminding_project/utils/colors.dart';
import 'package:water_reminding_project/utils/colors.dart';

void main() {
  runApp(water_tracker_program());
}

class water_tracker_program extends StatelessWidget {
  const water_tracker_program({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Su Takip Uygulaması',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(), // Uygulama açılınca gösterilecek ekran
      debugShowCheckedModeBanner: false, // Debug yazısını gizle
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
