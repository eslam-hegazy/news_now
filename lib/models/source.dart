class Source {
  final String id;
  final String name;

  Source({
    this.id,
    this.name,
  });

  factory Source.fromJson(Map<String, dynamic> jsonData) {
    return Source(
      id: jsonData['id'],
      name: jsonData['name'],
    );
  }
}
