import 'package:flutter/material.dart';

class EventScreen extends StatefulWidget {
  const EventScreen({super.key});

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reserva de entradas'),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Text(
            'Starter listo.\n\n'
            'Construya aquí la solución solicitada en el examen.',
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
