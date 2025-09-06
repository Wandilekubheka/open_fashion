class SaleSummary {
  final String title;
  final int id;
  final String description;
  final double price;
  final String imageUrl;

  SaleSummary({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
  });
  factory SaleSummary.fromJson(Map<String, dynamic> json) {
    return SaleSummary(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      price: json['price'].toDouble(),
      imageUrl: json['imageUrl'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'price': price,
      'imageUrl': imageUrl,
    };
  }
}
