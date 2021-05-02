class UserModel {
  int id;
  String username;
  String token;

  UserModel({this.id, this.username, this.token});

  UserModel.fromJson(Map<String, dynamic> json) {
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
