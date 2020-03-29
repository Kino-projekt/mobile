class User {
  final int userId;
  final int token;
  final String role;

  User({this.userId, this.token, this.role});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      userId: json['userId'],
      token: json['token'],
      role: json['role'],
    );
  }
}