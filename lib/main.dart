import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// MyApp widget’ı uygulamanın kökü, MaterialApp ile tema ve ana sayfayı belirtiyoruz.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Su Takip Uygulaması',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(), // Uygulama açıldığında gösterilecek ekran
    );
  }
}

// HomePage StatefulWidget, çünkü su miktarı değişecek, UI güncellenecek
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double waterAmount = 0.0; // Su miktarını tutan değişken (litre cinsinden)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Su Takip Uygulaması')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${waterAmount.toStringAsFixed(2)} Litre Su Tüketildi',
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  waterAmount +=
                      0.25; // Butona basınca su miktarını 0.25 litre artır
                });
              },
              child: const Text('0.25 Litre Su Ekle'),
            ),
          ],
        ),
      ),
    );
  }
}
