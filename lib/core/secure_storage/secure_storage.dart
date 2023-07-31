import 'package:flutter_secure_storage/flutter_secure_storage.dart';

AndroidOptions _getAndroidOptions() => const AndroidOptions(
      encryptedSharedPreferences: true,
    );

class SecureStorage {
  final FlutterSecureStorage storage =
      FlutterSecureStorage(aOptions: _getAndroidOptions());

  Future<String?> readSecureData(String key) async {
    dynamic readData;
    readData = await storage.read(key: key, aOptions: _getAndroidOptions());
    return readData;
  }

  Future<void> writeSecureData(String key, String value) async {
    await storage.write(key: key, value: value, aOptions: _getAndroidOptions());
  }

  Future<void> deleteSecureToken(String key) async {
    // Same here: delete is a type of void, so it shouldn't return anything
    await storage.delete(key: key);
  }
}
