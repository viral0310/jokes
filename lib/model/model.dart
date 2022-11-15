class Joke {
  final List categories;
  final DateTime createdAt;
  final String iconUrl;
  final String value;
  Joke({
    required this.categories,
    required this.createdAt,
    required this.iconUrl,
    required this.value,
  });
  factory Joke.fromJson({required Map<String, dynamic> json}) {
    return Joke(
      categories: List.from(json['categories'].map((e) => e)),
      createdAt: DateTime.parse(json["created_at"]),
      iconUrl: json['icon_url'],
      value: json['value'],
    );
  }
}
