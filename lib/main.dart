import 'package:shared_preferences/shared_preferences.dart';

class DbHelper {
  Future<void> saveSettings(int fishCount, double speed, int colorValue) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('fishCount', fishCount);
    await prefs.setDouble('speed', speed);
    await prefs.setInt('color', colorValue);
  }

  Future<Map<String, dynamic>> loadSettings() async {
    final prefs = await SharedPreferences.getInstance();
    return {
      'fishCount': prefs.getInt('fishCount') ?? 0,
      'speed': prefs.getDouble('speed') ?? 1.0,
      'color': prefs.getInt('color') ?? 0, // Adjust based on color selection
    };
  }
}
