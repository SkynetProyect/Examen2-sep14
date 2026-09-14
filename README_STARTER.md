# Starter - Examen Práctico 1 - G61

Este paquete contiene únicamente la base común del examen.

## Incluye

- `main.dart`
- `EventScreen` como pantalla inicial
- Modelo `Event`
- Fuente de datos simulada `loadEvents()`
- 9 eventos de prueba
- Assets locales ya registrados en `pubspec.yaml`
- Opciones para simular error de carga y lista vacía

## No incluye

- Estado de carga de la pantalla
- Manejo visual de loading / error / vacío / datos
- Tarjeta reutilizable para cada evento
- Estructura para almacenar cantidades por evento
- Lógica de aumentar o disminuir cantidades
- Validación de `maxTickets`
- Reglas particulares de ninguna variante
- Cálculo de total de entradas
- Cálculo de costo total
- Cálculo de eventos distintos
- Condición para habilitar `Revisar reserva`
- Pantalla de detalle
- Pantalla de resumen
- Navegación

Estas partes hacen parte del examen.

## Fuente de datos

Importe:

```dart
import 'event_repository.dart';
```

Carga normal:

```dart
final events = await loadEvents();
```

Para comprobar el estado de error:

```dart
final events = await loadEvents(
  simulateError: true,
);
```

Para comprobar el estado sin datos:

```dart
final events = await loadEvents(
  simulateEmpty: true,
);
```

Los parámetros anteriores solo sirven para probar estados visuales.

## Assets

La carpeta `assets/images/` ya está declarada en `pubspec.yaml`.

## Importante

Los datos suministrados forman parte del examen. No agregue, elimine ni modifique
eventos, precios, categorías, disponibilidad o `maxTickets`, salvo que el docente
lo solicite durante la sustentación.

El enunciado no obliga a utilizar una estructura de datos específica para manejar
las cantidades. Esa decisión hace parte de la solución que debe construir y justificar.

## Ejecución

Si estos archivos se copian dentro de un proyecto Flutter ya creado:

```bash
flutter pub get
flutter run
```
