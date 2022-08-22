// import 'package:shared_preferences/shared_preferences.dart';
//
// class LocaldataSaver {
//   static String namekey = 'NAMEKEY';
//   static String emailkey = 'EMAILKEY';
//   static String imagekey = 'IMAGEKEY';
//   static String logkey = 'LoginInKey';
//
//   static Future<bool> saveName(String username) async {
//     SharedPreferences preferences = await SharedPreferences.getInstance();
//     return await preferences.setString(namekey, username);
//   }
//
//   static Future<bool> saveEmail(String useremail) async {
//     SharedPreferences preferences = await SharedPreferences.getInstance();
//     return await preferences.setString(emailkey, useremail);
//   }
//
//   static Future<bool> saveImage(String userimage) async {
//     SharedPreferences preferences = await SharedPreferences.getInstance();
//     return await preferences.setString(imagekey, userimage);
//   }
//
//   static Future<String?> getName() async {
//     SharedPreferences preferences = await SharedPreferences.getInstance();
//     return await preferences.getString(namekey);
//   }
//
//   static Future<String?> getEmail() async {
//     SharedPreferences preferences = await SharedPreferences.getInstance();
//     return await preferences.getString(emailkey);
//   }
//
//   static Future<String?> getImage() async {
//     SharedPreferences preferences = await SharedPreferences.getInstance();
//     return await preferences.getString(imagekey);
//   }
//
//   static Future<bool> saveLoginData(bool isUserLoggedIn) async {
//     SharedPreferences preferences = await SharedPreferences.getInstance();
//     return await preferences.setBool(logkey, isUserLoggedIn);
//   }
//
//   static Future<bool?> getLogData() async {
//     SharedPreferences preferences = await SharedPreferences.getInstance();
//     return await preferences.getBool(logkey);
//   }
// }

import 'package:shared_preferences/shared_preferences.dart';
class LocalDataSaver{
  static String nameKey = "NAMEKEY";
  static String emailKey = "EMAILKEY";
  static String imgKey = "IMGKEY";
  static String logKey = "LOGWALIKEY";

  static Future<bool> saveName(String username) async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(nameKey, username);
  }

  static Future<bool> saveMail(String useremail) async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(emailKey, useremail);
  }


  static Future<bool> saveImg(String imgUrl) async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(imgKey, imgUrl);
  }


  static Future<String?> getName() async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.getString(nameKey);
  }


  static Future<String?> getEmail() async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.getString(emailKey);
  }


  static Future<String?> getImg() async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.getString(imgKey);

  }


  static Future<bool> saveLoginData(bool isUserLoggedIn)
  async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setBool(logKey, isUserLoggedIn);
  }

  static Future<bool?> getLogData() async
  {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.getBool(logKey);
  }
}