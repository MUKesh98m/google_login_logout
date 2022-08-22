import 'package:shared_preferences/shared_preferences.dart';

class LocaldataSaver {
  static String namekey = 'NAMEKEY';
  static String emailkey = 'EMAILKEY';
  static String imagekey = 'IMAGEKEY';

  static Future<bool> saveName(String username) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(namekey, username);
  }

  static Future<bool> saveEmail(String useremail) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(emailkey, useremail);
  }

  static Future<bool> saveImage(String userimage) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(imagekey, userimage);
  }

  static Future<String?> getName() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.getString(namekey);
  }

  static Future<String?> getEmail() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.getString(emailkey);
  }

  static Future<String?> getImage() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.getString(imagekey);
  }
}