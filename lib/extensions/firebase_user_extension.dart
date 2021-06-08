part of 'extensions.dart';

extension FirebaseUserExtension on User {
  Users convertToUser({
    String name = 'no name',
    List<String> selectedGenres = const [],
    String selectedLanguage = "Indonesia",
    int balance = 50000,
  }) =>
      Users(
        this.uid,
        this.email ?? "",
        name: name,
        balance: balance,
        selectedGenres: selectedGenres,
        selectedLanguage: selectedLanguage,
      );

  Future<Users?> fromFireStore() async => await UserServices.getUser(this.uid);
}
