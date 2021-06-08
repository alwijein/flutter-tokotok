part of 'services.dart';

class UserServices {
  static CollectionReference _userCollection =
      FirebaseFirestore.instance.collection('users');

  static Future<void> updateUser(Users users) async {
    // String genres = "";

    // for split genre list from models into firebase
    // for (var genre in users.selectedGenres!) {
    //   genres += genre + ((genre != users.selectedGenres!.last) ? ',' : '');
    // }

    // ...

    _userCollection.doc(users.id).set({
      'email': users.email,
      'name': users.name,
      'balance': users.balance,
      'selectedGenres': users.selectedGenres,
      'selectedLanguage': users.selectedLanguage,
      'profilePicture': users.profilePicture ?? "",
    });
  }

  static Future<Users?> getUser(String id) async {
    DocumentSnapshot snapshot = await _userCollection.doc(id).get();

    var data = snapshot.data() as Map;
    return Users(
      id,
      data['email'],
      balance: data['balance'],
      profilePicture: data['profilePicture'],
      selectedGenres:
          (data['selectedGenres'] as List).map((e) => e.toString()).toList(),
      selectedLanguage: data['selectedLanguage'],
      name: data['name'],
    );
  }
}
