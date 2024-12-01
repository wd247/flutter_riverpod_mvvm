class User {
  String name;
  int age;
  User({
    required this.name,
    required this.age,
  });

// 1. 네임드 생성자 (fromJson)
  User.fromJson(Map<String, dynamic> map)
      : this(
          name: map['name'],
          age: map['age'],
        );

// 2. tojason 메서드
  Map<String, dynamic> tojason() {
    return {
      'name': name,
      'age': age,
    };
  }
}
