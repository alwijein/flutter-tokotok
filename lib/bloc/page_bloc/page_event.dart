part of 'page_bloc.dart';

abstract class PageEvent extends Equatable {
  const PageEvent();

  @override
  List<Object> get props => [];
}

class GoToInitialPage extends PageEvent {}

class GoToLoginPage extends PageEvent {}

class GoToSplashPage extends PageEvent {}

class GoToHomePage extends PageEvent {}
