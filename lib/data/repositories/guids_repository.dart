import 'package:myevpanet/data/storage/hive_storage.dart';
import 'package:myevpanet/domain/login_model.dart';

/// Repo for guids
class GuidsRepository {
  final HiveStorage storage;

  GuidsRepository(this.storage);

  void putGUIDS(Message mes) {
    storage.putGUIDS(mes.guids);
  }

  Future<List<String>> getGUIDS() {
    return storage.getGUIDS();
  }
}
