part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}


class AuthRegister extends AuthEvent {

  final SignUpFormModel data;
  const AuthRegister(this.data);

  @override
  List<Object> get props => [data];
  
}