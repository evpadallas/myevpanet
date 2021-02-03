import 'package:myevpanet/data/repositories/guids_repository.dart';
import 'package:myevpanet/data/storage/guids_storage.dart';
import 'package:myevpanet/domain/login_model.dart';

class AuthRepository {

  final GuidsRepository repo;

  AuthRepository(this.repo);

  Future<Login> login(String uid, String phone) async {
    //запрос на сервер
    var loginResp = await Future.value();
    var login =  Login.fromJson(loginResp);

    repo.putInfo(login.message);

    return login;
  }
}