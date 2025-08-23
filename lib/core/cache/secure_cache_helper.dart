import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureCacheHelper {
  static const FlutterSecureStorage _secureStorage = FlutterSecureStorage();


  static Future<void> saveToken({required String token}) async {
    await _secureStorage.write(key: "token", value: token);
  }

  static Future<void> setUserVerification(
      {required String isEmailVerified}) async {
    await _secureStorage.write(key: "isEmailVerified", value: isEmailVerified);
  }

  static Future<String?> getToken() async {
    return await _secureStorage.read(key: "token");
  }

  static Future<void> removeUserData() async {
    await _secureStorage.delete(key: "token");
  }

}