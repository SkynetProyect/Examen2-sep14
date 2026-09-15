import 'package:flutter/material.dart';
import 'event.dart';

/*
 Detalle
• Abrir el evento correcto y mostrar imagen, nombre, categoría, precio, cupo, disponibilidad y descripción.
• Mostrar la cantidad actualmente reservada de ese evento.*/


class ReservaCheck extends StatelessWidget {
  final List<Event> eventos;
  final Map<int, int> reservadas;

  const ReservaCheck({
    super.key,
    required this.eventos,
    required this.reservadas,
  });

@override
Widget build(BuildContext context){
  return Card(
    margin: const EdgeInsets.only(bottom: 12),
    color: const Color.fromARGB(255, 228, 185, 170),
    child: Column(
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
    );
}
}
