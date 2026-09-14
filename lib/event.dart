class Event {
  final int id;
  final String name;
  final String category;
  final int price;
  final int maxTickets;
  final String description;
  final String imagePath;
  final bool available;

  const Event({
    required this.id,
    required this.name,
    required this.category,
    required this.price,
    required this.maxTickets,
    required this.description,
    required this.imagePath,
    required this.available,
  });
}
