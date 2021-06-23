part of 'page_bloc.dart';

abstract class PageEvent extends Equatable {
  const PageEvent();

  @override
  List<Object> get props => [];
}

class GoToInitialPage extends PageEvent {}

class GoToSignInPage extends PageEvent {}

class GoToSignUpPage extends PageEvent {}

class GoToSplashPage extends PageEvent {}

class GoToHomePage extends PageEvent {}
