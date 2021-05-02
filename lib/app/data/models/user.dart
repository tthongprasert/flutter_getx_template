class User {
  int id;
  String username;
  String token;

  User({this.id, this.username, this.token});

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
