import 'package:flutter/material.dart';
import 'event.dart';

class EventCard extends StatelessWidget {
  final Event event;
  final VoidCallback onTap;

const EventCard({
  super.key,
  required this.event,
  required this.onTap,
});

@override
Widget build(BuildContext context){
  return Card(
    margin: const EdgeInsets.only(bottom: 12),
    color: Colors.brown,
    child: InkWell(
      onTap : onTap,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
           ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
              event.imagePath,
              width: 72,
              height: 72,
              fit: BoxFit.cover,
              )
           )
          ],
        )

      )
    )
  );
}
}
