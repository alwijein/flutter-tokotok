part of 'models.dart';

class Users extends Equatable {
  final String id, email, name, selectedLanguage;
  final String? profilePicture;
  final List<String> selectedGenres;
  final int balance;

  Users(
    this.id,
    this.email, {
    required this.name,
    required this.selectedGenres,
    this.profilePicture,
    required this.selectedLanguage,
    required this.balance,
  });

  @override
  String toString() {
    return "[$id] - [$email] - [$name] - [$selectedGenres]";
  }

  @override
  List<Object?> get props => [
        id,
        email,
        name,
        selectedLanguage,
        profilePicture,
        selectedLanguage,
        balance
      ];
}
