import 'event.dart';

/// Fuente de datos simulada para el examen.
///
/// No es necesario construir una API ni modificar estos datos.
///
/// [simulateError] y [simulateEmpty] existen solo para comprobar
/// los estados visuales solicitados en el enunciado.
Future<List<Event>> loadEvents({
  bool simulateError = false,
  bool simulateEmpty = false,
}) async {
  await Future.delayed(
    const Duration(seconds: 2),
  );

  if (simulateError) {
    throw Exception('Error simulado al cargar eventos');
  }

  if (simulateEmpty) {
    return [];
  }

  return const [
    Event(
      id: 1,
      name: 'Flutter Lab',
      category: 'Tecnología',
      price: 120000,
      maxTickets: 3,
      description:
          'Laboratorio práctico orientado a construir interfaces móviles y resolver retos con Flutter.',
      imagePath: 'assets/images/flutter_lab.png',
      available: true,
    ),
    Event(
      id: 2,
      name: 'Foto Urbana',
      category: 'Cultura',
      price: 90000,
      maxTickets: 2,
      description:
          'Recorrido fotográfico por espacios urbanos con ejercicios de composición y observación.',
      imagePath: 'assets/images/foto_urbana.png',
      available: true,
    ),
    Event(
      id: 3,
      name: 'Yoga Sunset',
      category: 'Bienestar',
      price: 70000,
      maxTickets: 4,
      description:
          'Sesión guiada de yoga al final de la tarde, pensada para movilidad, respiración y relajación.',
      imagePath: 'assets/images/yoga_sunset.png',
      available: true,
    ),
    Event(
      id: 4,
      name: 'VR Arena',
      category: 'Tecnología',
      price: 180000,
      maxTickets: 2,
      description:
          'Experiencia interactiva de realidad virtual con varias estaciones y retos individuales.',
      imagePath: 'assets/images/vr_arena.png',
      available: true,
    ),
    Event(
      id: 5,
      name: 'Cocina Local',
      category: 'Gastronomía',
      price: 110000,
      maxTickets: 3,
      description:
          'Taller demostrativo de cocina con preparación de recetas inspiradas en sabores locales.',
      imagePath: 'assets/images/cocina_local.png',
      available: false,
    ),
    Event(
      id: 6,
      name: 'Escape Night',
      category: 'Entretenimiento',
      price: 150000,
      maxTickets: 2,
      description:
          'Experiencia de acertijos y trabajo en equipo ambientada como una misión nocturna.',
      imagePath: 'assets/images/escape_night.png',
      available: true,
    ),
    Event(
      id: 7,
      name: 'Museo Vivo',
      category: 'Cultura',
      price: 60000,
      maxTickets: 4,
      description:
          'Recorrido guiado con estaciones interactivas y relatos sobre arte, ciudad y patrimonio.',
      imagePath: 'assets/images/museo_vivo.png',
      available: true,
    ),
    Event(
      id: 8,
      name: 'DJ Session',
      category: 'Música',
      price: 130000,
      maxTickets: 3,
      description:
          'Sesión musical en vivo con selección de mezclas y demostración básica del trabajo de un DJ.',
      imagePath: 'assets/images/dj_session.png',
      available: true,
    ),
    Event(
      id: 9,
      name: 'Meditación',
      category: 'Bienestar',
      price: 50000,
      maxTickets: 5,
      description:
          'Sesión de meditación guiada enfocada en respiración, atención y relajación.',
      imagePath: 'assets/images/meditacion.png',
      available: true,
    ),
  ];
}
