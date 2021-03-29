import 'dart:convert';

class UserTypes {
  String id;
  String name;

  UserTypes({
    this.id,
    this.name,
  });
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
    };
  }

  factory UserTypes.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    return UserTypes(id: map['id'] ?? '', name: map['name'] ?? '');
  }
  String toJson() => json.encode(toMap());

  factory UserTypes.fromJson(String source) =>
      UserTypes.fromMap(json.decode(source));
}
