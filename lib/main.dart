import 'package:flutter/material.dart';
import 'event_screen.dart';

void main() {
  runApp(const ExamApp());
}

class ExamApp extends StatelessWidget {
  const ExamApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Reserva de entradas',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const EventScreen(),
    );
  }
}
