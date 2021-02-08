import 'package:hive/hive.dart';

/// Storage for guids
class HiveStorage {
  /// Запись гуидов в Hive хранилище
  void putGUIDS(List<String> guids) async {
    var box = await Hive.openBox('GUIDS');
    await box.put('guids', guids);
    await box.close();
  }

  /// Получение гуидов из Hive хранилища
  Future<List<String>> getGUIDS() async {
    var box = await Hive.openBox('GUIDS');
    List<String> guids = box.get('guids');
    await box.close();
    return guids;
  }
}
