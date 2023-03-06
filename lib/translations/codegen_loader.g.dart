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
  "user_name": "Amir Mohsen",
  "user_occupation": "Mobile App Developer & Designer",
  "user_city": "Herat",
  "user_country": "Afghanistan",
  "user_description": "Lorem ipsum dolor sit amet consectetur adipisicing elit. Corrupti assumenda id voluptas consectetur laudantium iure necessitatibus eum debitis dolore commodi sapiente doloremque, aperiam impedit, harum ipsam sint recusandae voluptatum mollitia?",
  "skills": "Skills",
  "personal_information": "Personal Information",
  "email": "Email",
  "password": "Password",
  "save": "Save",
  "select_language": "Select Language"
};
static const Map<String,dynamic> fa = {
  "app_name": "کارت هویت حرفه ایی",
  "user_name": "امیر محسن",
  "user_occupation": "توسعه دهنده برنامه های مبایل و دیزاینر",
  "user_city": "هرات",
  "user_country": "افغانستان",
  "user_description": "خود این شرکت یک شرکت بسیار موفق است. خشنودی مداحان مفسد باید در پی حاجت آنانی باشد که درد آسایش و درد خردمندان را مدیون او هستند و مانع گشایش می شود.",
  "skills": "مهارت ها",
  "personal_information": "اطلاعات شخصی",
  "email": "ایمیل",
  "password": "رمز عبور",
  "save": "ذخیره",
  "select_language": "انتخاب زبان"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en, "fa": fa};
}
