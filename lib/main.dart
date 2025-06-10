// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:water_reminding_project/constants/colors.dart';

void main() {
  runApp(water_tracker_app());
}

class water_tracker_app extends StatelessWidget {
  const water_tracker_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),
      home: const HomePage(),
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
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings, color: AppColors.textWhite),
          ),
        ],
        leading: IconButton(
          icon: Icon(Icons.menu, color: AppColors.textWhite),
          onPressed: () {},
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 31, 80, 164),
        title: Text(
          "Welcome Babe",
          style: GoogleFonts.quicksand(
            color: AppColors.textWhite,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(color: AppColors.accentBlue),
    );
  }
}
