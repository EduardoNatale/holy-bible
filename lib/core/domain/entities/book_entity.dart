import 'dart:convert';

class BookEntity {
  final String id;
  final String name;
  final List<List<String>> chapters;

  BookEntity({
    required this.id,
    required this.name,
    required this.chapters,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'chapters': chapters,
    };
  }

  factory BookEntity.fromMap(Map<String, dynamic> map) {
    return BookEntity(
      id: map['id'],
      name: map['name'],
      chapters: map['capitulos']
          .map<List<String>>((chapter) => List<String>.from(chapter))
          .toList(),
    );
  }

  String toJson() => json.encode(toMap());

  factory BookEntity.fromJson(String source) =>
      BookEntity.fromMap(json.decode(source));
}
