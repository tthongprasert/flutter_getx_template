class User {
  late int id;
  late String username;
  late String token;

  User({required this.id, required this.username, required this.token});

  User.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
    this.username = json['name'];
    this.token = json['token'];
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'username': username,
        'token': token,
      };
}
