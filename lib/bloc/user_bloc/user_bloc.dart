import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_auth_new/models/models.dart';
import 'package:flutter_auth_new/services/services.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserInitial());

  @override
  Stream<UserState> mapEventToState(
    UserEvent event,
  ) async* {
    if (event is LoadUser) {
      Users? users = await UserServices.getUser(event.id);
      yield UserLoaded(users!);
    } else if (event is SignOut) {
      yield UserInitial();
    } else if (event is AdminUser) {
      Users users = new Users('A1', 'admin@mail.io',
          name: 'Admin Ganteng',
          profilePicture: 'assets/icons/profile-picture.svg');
      yield UserLoaded(users);
    }
  }
}
