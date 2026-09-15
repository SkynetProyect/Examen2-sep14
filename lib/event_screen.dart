import 'dart:nativewrappers/_internal/vm/lib/ffi_native_type_patch.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:examen_practico_g61_starter/event.dart';
import 'package:examen_practico_g61_starter/event_repository.dart';
import 'package:flutter/material.dart';

class EventScreen extends StatefulWidget {
  const EventScreen({super.key});

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  List<Event> eventos = [];
  bool cargando = false;
  bool errorCarga = false;
  String errorMessage = "";

  Future<String> loadMessage() async {
    setState(() {
      cargando = true;
    });

   try {
      var resultado = await loadEvents(simulateError: false, simulateEmpty: false);
      setState(() {
        eventos = resultado;
        cargando = false;
      });
      return "";
    } catch (e) {
    setState(() {
      cargando = false;
     
    });
    return 'No fue posible cargar';
  }

  }

  @override
  Widget build(BuildContext context) {

    loadMessage();
    
    if(cargando){
      return Scaffold(
      appBar: AppBar(
        title: const Text('Reserva de entradas'),
      ),
      body: Center(
          child: Padding(
            padding: EdgeInsets.all(24),
            child: LoadingAnimationWidget.staggeredDotsWave(
          color: Colors.white,
          size: 200,
        ),
        ),
      ),
    );
    }

    if(errorCarga){
      return Scaffold(
      appBar: AppBar(
        title: const Text('Reserva de entradas'),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            children: [
            
            Text(
              'Se ha producido un error durante la carga de datos',
              textAlign: TextAlign.center,
            )
            ],
          ),
        ),
      ),
    );
    }

    if(eventos.isEmpty){

      return Scaffold(
      appBar: AppBar(
        title: const Text('Reserva de entradas'),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            children: [
            
            Text(
              'No hay eventos disponibles',
              textAlign: TextAlign.center,
            )
            ],
          ),
        ),
      ),
    );
    }



    return Scaffold(
      appBar: AppBar(
        title: const Text('Reserva de entradas'),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: ListView(
            children: eventos.map( (evento){
              return EventCard(
                id = evento.id,
                name = evento.name,
                category = evento.category,
                price = evento.price,
                maxTickets = evento.maxTickets,
                description = evento.description,
                imagePath = evento.imagePath,
                available = evento.available
              );
            }).toList(),
          )
        ),
      ),
    );
  }
}
