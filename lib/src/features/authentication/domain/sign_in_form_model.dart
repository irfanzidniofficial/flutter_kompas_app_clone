class SignInFormModel {
  final String? email;
  final String? password;

  SignInFormModel({
    this.email,
    this.password,
  });

  Map<String, dynamic> toJson() {
    return {
      'identifier': email,
      'password': password,
    };
  }
}
