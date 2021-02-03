import 'package:myevpanet/data/storage/guids_storage.dart';
import 'package:myevpanet/domain/login_model.dart';

/// Repo for guids
class GuidsRepository {

  final GuidsStorage storage;

  GuidsRepository(this.storage);

  void putInfo(Message mes) {
    storage.putInfo(mes.guids);
  }

  List<String> getInfo() {
    // + щзапрос на сервер
    return storage.getInfo();
  }
}