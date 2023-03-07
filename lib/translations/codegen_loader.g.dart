// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en = {
  "app_name": "Professional ID Card",
  "user_name": "Amir Mohsen Zahed",
  "user_occupation": "Mobile App Developer & Designer",
  "user_city": "Herat",
  "user_country": "Afghanistan",
  "description": "Lorem ipsum dolor sit amet consectetur adipisicing elit. Corrupti assumenda id voluptas consectetur laudantium iure necessitatibus eum debitis dolore commodi sapiente doloremque, aperiam impedit, harum ipsam sint recusandae voluptatum mollitia?",
  "skills": "Skills",
  "personal_information": "Personal Information",
  "email": "Email",
  "password": "Password",
  "save": "Save"
};
static const Map<String,dynamic> fa = {
  "app_name": "آیدی کارت حرفه ایی",
  "user_name": "امیر محسن زاهد",
  "user_occupation": "توسعه دهنده نرم افزار مبایل و دیزاینر",
  "user_city": "هرات",
  "user_country": "افغانستان",
  "description": "Lorem ipsum dolor sit amet consectetur adipisicing elit. Corrupti assumenda id voluptas consectetur laudantium iure necessitatibus eum debitis dolore commodi sapiente doloremque, aperiam impedit, harum ipsam sint recusandae voluptatum mollitia?",
  "skills": "مهارت ها",
  "personal_information": "اطلاعات شخصی",
  "email": "ایمیل",
  "password": "رمز عبور",
  "save": "ذخیره"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en, "fa": fa};
}
