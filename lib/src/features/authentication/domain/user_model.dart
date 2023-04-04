class UserModel {
  final int? id;
  final String? name;
  final String? email;
  final String? address;
  final String? token;
  final String? username;
  final String? phoneNumber;
  final String? job;
  final String? password;

  const UserModel({
    this.id,
    this.name,
    this.email,
    this.address,
    this.token,
    this.username,
    this.phoneNumber,
    this.password,
    this.job,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        token: json['jwt'],
        id: json['user']['id'],
        name: json['user']['name'],
        email: json['user']['email'],
        address: json['user']['address'],
        username: json['user']['username'],
        phoneNumber: json['user']['phone_number'],
        job: json['user']['job'],
        password: json['user']['password'],
      );
}
