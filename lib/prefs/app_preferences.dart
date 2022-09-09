import 'package:shared_preferences/shared_preferences.dart';

class AppPreferences {
  static final AppPreferences _instance = AppPreferences._internal();
  late SharedPreferences _sharedPreferences;

  AppPreferences._internal();

  factory AppPreferences() {
    return _instance;
  }

  Future<void> initPreferences() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  Future<void> saveCounter({required int counter}) async {
    await _sharedPreferences.setInt('counter', counter);
  }

  int get counter => _sharedPreferences.getInt('counter') ?? 0;
}
