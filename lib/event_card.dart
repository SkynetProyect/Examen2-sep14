import 'package:flutter/material.dart';
import 'event.dart';

class EventCard extends StatefulWidget {
  final Event event;
  final VoidCallback onTap;
  final VoidCallback sumar;
  final VoidCallback restar;

const EventCard({
  super.key,
  required this.event,
  required this.onTap,
  required this.sumar,
  required this.restar,
});

  @override
  State<EventCard> createState() => _EventCardState();
}

class _EventCardState extends  State<EventCard> {
  int solicitados = 0;

  aumentar(){
    if(solicitados < 5 && solicitados < widget.event.maxTickets && widget.event.available){
      widget.sumar;
      setState(() {
       solicitados = solicitados + 1;
      });
    }
  }

  disminuir(){
    if(solicitados > 0){
      widget.restar;
      setState(() {
       solicitados = solicitados - 1;
      });
    }
  }

@override
Widget build(BuildContext context){
  return Card(
    margin: const EdgeInsets.only(bottom: 12),
    color: Colors.brown,
    child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            InkWell(
           onTap: widget.onTap,
           child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
              widget.event.imagePath,
              width: 72,
              height: 72,
              fit: BoxFit.cover,
              )
           )
           ),
           Column(
              children: [
              Text(
              widget.event.name,
              style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              ),
              ),
              const SizedBox(height: 4),
              Text(widget.event.category),
              const SizedBox(height: 6),
              Text(widget.event.price.toString()),
                  ],
                ),

            Column(
              children: [
              Text(widget.event.price.toString()),
              const SizedBox(height: 4),
              Text(widget.event.maxTickets.toString()),
              const SizedBox(height: 4),
              Text("Adquirir: "+solicitados.toString()),
              Row(children: [
                InkWell(onTap: disminuir , child: Text("menos")), 
                const SizedBox(width: 3),
                InkWell(onTap: aumentar , child: Text("mas"))],
              ),
              const SizedBox(height: 6),
              Text(widget.event.description),
                  ],
              ),
          ],
        )

      )
  );
}
}
