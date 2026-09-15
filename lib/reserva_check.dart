import 'package:flutter/material.dart';
import 'event.dart';

/*
 Detalle
• Abrir el evento correcto y mostrar imagen, nombre, categoría, precio, cupo, disponibilidad y descripción.
• Mostrar la cantidad actualmente reservada de ese evento.*/


class ReservaCheck extends StatelessWidget {
  final List<Event> eventos;
  final Map<int, int> reservadas;
  final int totalreservas;
  final double costototal;

  const ReservaCheck({
    super.key,
    required this.eventos,
    required this.reservadas,
    required this.totalreservas,
    required this.costototal,
  });

@override
Widget build(BuildContext context){
  return Card(
    margin: const EdgeInsets.only(bottom: 12),
    color: const Color.fromARGB(255, 228, 185, 170),
    child: 
    Column(
      children: [
          Text("Total reservadas: "+ totalreservas.toString()), 
          Text("Total costo: "+costototal.toString()),
          Text("Total eventos: "),
    Column(
      children: eventos.map((evento){
        if(reservadas.containsKey(evento.id)){
          return Row( children: [ 
            Text("Titulo: "+evento.name),
            Text("Precio U: "+evento.price.toString()),
            Text("Reservadas: "+reservadas[evento.id].toString())
          ],
          );
        }
        return SizedBox(height: 2);
      }).toList(),
      )
    ])
    );
}
}
