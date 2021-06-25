part of 'shared.dart';

Color kPrimaryColor = Color(0xFFFF7643);
Color kPrimaryLightColor = Color(0xFFFFECDF);
LinearGradient kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
Color kSecondaryColor = Color(0xFFADADAD);
Color kTextColor = Color(0xFF7575757);

Duration kAnimationDuration = Duration(milliseconds: 250);

// Fonts Style Text
TextStyle blackTextFont = GoogleFonts.raleway().copyWith(
  color: Colors.black,
  fontWeight: FontWeight.w500,
);

TextStyle titleBlackFont = GoogleFonts.raleway().copyWith(
  color: Colors.black,
  fontWeight: FontWeight.w500,
  fontSize: 20,
);

TextStyle whiteTextFont = GoogleFonts.raleway().copyWith(
  color: Colors.white,
  fontWeight: FontWeight.w500,
);

TextStyle orangeTextFont = GoogleFonts.raleway().copyWith(
  color: kPrimaryColor,
  fontWeight: FontWeight.w500,
);

TextStyle greyTextFont = GoogleFonts.raleway().copyWith(
  color: kSecondaryColor,
  fontWeight: FontWeight.w500,
);

// Fonts Style Number

TextStyle whiteNumberFont = GoogleFonts.openSans().copyWith(
  color: Colors.white,
  fontWeight: FontWeight.w500,
);

TextStyle blackNumberFont = GoogleFonts.openSans().copyWith(
  color: Colors.black,
  fontWeight: FontWeight.w500,
);


// Form Error
// final RegExp emailValidatorRegExp =
//     RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
// const String kEmailNullError = "Email Tidak Boleh Kosong";
// const String kInvalidEmailError = "Mohon Masukkan Email Yang Valid";
// const String kPassNullError = "Mohon Masukkan Password Anda";
// const String kShortPassError = "Password Kurang Dari 8";
// const String kMatchPassError = "Password Tidak Cocok";
// const String kNamelNullError = "Mohon Masukkan Nama Anda";
// const String kPhoneNumberNullError = "Mohon Masukkan Password Anda";
// const String kAddressNullError = "Mohon Masukkan Email Anda";
