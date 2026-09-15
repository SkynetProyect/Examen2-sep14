import 'package:examen_practico_g61_starter/event_card.dart';
import 'package:examen_practico_g61_starter/event_detail_card.dart';
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
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: InkWell(
              onTap: (){
                loadMessage();
                setState(() {
                  cargando = true;
                });
              },
              child: Text(
              'Se ha producido un Error durante la carga, de click aqui para recargar',
              textAlign: TextAlign.center,
              ),
            )
        ),
      ),
    );
    }

    if(eventos.isEmpty){

      return Scaffold(
      appBar: AppBar(
        title: const Text('Reserva de entradas'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            children: [
            InkWell(
              onTap: (){
                loadMessage();
                setState(() {
                  cargando = true;
                });
              },
              child: Text(
              'No hay eventos disponibles, de click aqui para recargar',
              textAlign: TextAlign.center,
              ),
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
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            children: [
          Column(
            children: [
              Text("Total reservadas: ", calcularTotalReservas().toString()), 
              Text("Total costo: "+calcularCostoTotal().toString()),
              Text("Total eventos: "),
            ]
          ),
          ListView(
            children: eventos.map( (evento){
              return EventCard(event: evento, 
              onTap: (){EventDetailCard(event: evento, reservados: cantidadEventos.containsKey(evento.id) ?  cantidadEventos[evento.id] : 0,);}, 
              sumar: () {},
              restar: () {},
              );
            }).toList(),
          )
          ]
          )
        ),
      ),
    );
  }
}
