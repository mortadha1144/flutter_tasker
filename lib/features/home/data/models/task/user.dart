class User {
  int? id;
  DateTime? createdAt;
  String? name;
  String? email;
  int? age;
  String? avatar;
  List<dynamic>? tasks;

  User({
    this.id,
    this.createdAt,
    this.name,
    this.email,
    this.age,
    this.avatar,
    this.tasks,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json['id'] as int?,
        createdAt: json['createdAt'] == null
            ? null
            : DateTime.parse(json['createdAt'] as String),
        name: json['name'] as String?,
        email: json['email'] as String?,
        age: json['age'] as int?,
        avatar: json['avatar'] as String?,
        tasks: json['tasks'] as List<dynamic>?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt?.toIso8601String(),
        'name': name,
        'email': email,
        'age': age,
        'avatar': avatar,
        'tasks': tasks,
      };
}
