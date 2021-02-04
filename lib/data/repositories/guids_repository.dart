import 'package:myevpanet/data/storage/guids_storage.dart';
import 'package:myevpanet/domain/login_model.dart';

/// Repo for guids
class GuidsRepository {
  final GuidsStorage storage;

  GuidsRepository(this.storage);

  void putGUIDS(Message mes) {
    storage.putGUIDS(mes.guids);
  }

  Future<List<String>> getGUIDS() {
    return storage.getGUIDS();
  }
}
