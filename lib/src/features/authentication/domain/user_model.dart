class UserModel {
  final int? id;
  final String? name;
  final String? email;
  final String? address;
  final String? token;
  final String? username;
  final String? cardNumber;
  final String? job;
  final String? password;

  const UserModel({
    this.id,
    this.name,
    this.email,
    this.address,
    this.token,
    this.username,
    this.cardNumber,
    this.password,
    this.job,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json['id'],
        name: json['name'],
        email: json['email'],
        address: json['address'],
        token: json['token'],
        username: json['username'],
        cardNumber: json['card_number'],
        job: json['job'],
      );
}
