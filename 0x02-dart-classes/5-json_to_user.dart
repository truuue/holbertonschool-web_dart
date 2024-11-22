class User {
  int id = 0;
  String name = "";
  int age = 0;
  double height = 0.0;

  User({required this.id, required this.name, required this.age, required this.height});

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "age": age,
      "height": height,
    };
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
    );
  }

  @override
  String toString() {
    return "User(id : $id ,name: $name,  age: $age, height: $height)";
  }
}