// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:health_moble_client/core/language/language.dart';

class AppConstants {
  //Localization

  static const String CountryCode = 'conutry_code';
  static const String LanguageCode = 'langauge_code';
  static final formKey = GlobalKey<FormState>();

  static List<LanguageModel> language = [
    LanguageModel(
        countryCode: "US", languageCode: "en", languageName: "English")
  ];
}
