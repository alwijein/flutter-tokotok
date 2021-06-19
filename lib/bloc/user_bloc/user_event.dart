part of 'user_bloc.dart';

abstract class UserEvent extends Equatable {
  const UserEvent();

  @override
  List<Object> get props => [];
}

class LoadedUser extends UserEvent {
  final String id;

  LoadedUser({required this.id});

  @override
  List<Object> get props => [id];
}

class SignOut extends UserEvent {
  @override
  List<Object> get props => [];
}
