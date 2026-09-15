import 'package:flutter/material.dart';
import 'event.dart';

/*
 Detalle
• Abrir el evento correcto y mostrar imagen, nombre, categoría, precio, cupo, disponibilidad y descripción.
• Mostrar la cantidad actualmente reservada de ese evento.*/


class EventDetailCard extends StatelessWidget {
  final Event event;
  final int reservados;

const EventDetailCard({
  super.key,
  required this.event,
  required this.reservados,
});

@override
Widget build(BuildContext context){
  return Card(
    margin: const EdgeInsets.only(bottom: 12),
    color: const Color.fromARGB(255, 228, 185, 170),
    child: Column(
      children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
              event.imagePath,
              width: 72,
              height: 72,
              fit: BoxFit.cover,
              )
            ),
            Text(event.id.toString()),
            const SizedBox(height: 4),
            Text("Nombre: "+event.name),
            const SizedBox(height: 4),
            Text("Categoria: "+event.category),
            const SizedBox(height: 4),
            Text("Precio: "+event.price.toString()),
            const SizedBox(height: 4),
            Text("C Maxima: "+event.maxTickets.toString()),
            const SizedBox(height: 4),
            Text("Descripcion: "+event.description),
            const SizedBox(height: 4),
            Text("Reservados: "+reservados.toString()),
            const SizedBox(height: 4),
            Text(event.available.toString()),
            const SizedBox(height: 4),
        ],)
    );
}
}
