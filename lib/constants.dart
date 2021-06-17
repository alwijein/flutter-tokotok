import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF7575757);

const kAnimationDuration = Duration(milliseconds: 250);




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
