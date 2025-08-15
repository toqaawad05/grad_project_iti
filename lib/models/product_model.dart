class Product {
  final String id;
  final String title;
  final String subtitle;
  final String imageUrl;
  final double rating;

  Product({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    required this.rating,
  });

  factory Product.fromMap(String id, Map<String, dynamic> m) {
    return Product(
      id: id,
      title: m['title'] ?? '',
      subtitle: m['subtitle'] ?? '',
      imageUrl: m['imageUrl'] ?? '',
      rating: (m['rating'] ?? 0).toDouble(),
    );
  }
}
