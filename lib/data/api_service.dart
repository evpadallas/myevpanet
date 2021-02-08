import 'package:dio/dio.dart';
import 'package:myevpanet/domain/login_model.dart';

/*
* Основной адрес нового API: https://evpanet.com/api/apk/
*/

const String _baseURL = 'https://evpanet.com/api/apk';

/// TODO Сделать получение токена. Он необходим для криптования/раскриптования guid
///
const Map _authToken = {'token': 'asdfasfd'};

class APIService {
  final Dio _dio;

  factory APIService() {
    final Dio dio = Dio(
      BaseOptions(
        baseUrl: _baseURL,
        headers: _authToken,
      ),
    );

    return APIService._(dio);
  }

  APIService._(this._dio);

/*
* Авторизация:
*   URL: https://evpanet.com/api/apk/login/user
*   Method: POST
*   Header:
*     - key = token
*     - value = токен от гугла
*   Body:
*     - number = номер телефона в формате +7....
*     - uid = ID абонента
*   Response:
*     - формат: JSON
*     - данные: массив GUID
* ***************************************************************
*/

  Future postUserLogin() async {
    final Response response = await _dio.post('/login/user');

    try {
      if (Login(error: response.data['error']) == true) {
        return Login(message: Message.fromJson(response.data));
      }
    } catch (e) {
      return Login(error: response.data['message']);
    }
  }
}

/*


* Получение данных абонента:
*   URL: https://evpanet.com/api/apk/user/info/<GUID>
*   Method: GET
*   Header:
*     - key = token
*     - value = токен от гугла
*   Response:
*     - формат: JSON
*     - данные: данные об абоненте, и доступные тарифные планы
* ***************************************************************
* Получение сообщений для абонента:
*   URL: https://evpanet.com/api/apk/message/<GUID>
*   Method: GET
*   Header:
*     - key = token
*     - value = токен от гугла
*   Response:
*     - формат: JSON
*     - данные: все сообщения для гуида в связке с токеном
* ***************************************************************
* Изменение флагов автоактивации и родительского контроля:
*   URLS:
*     - https://evpanet.com/api/apk/user/parent_control/  для родительского контроля
*     - https://evpanet.com/api/apk/user/auto_activation/ для автоактивации
*   Method: PUT
*   Header:
*     - key = token
*     - value = токен от гугла
*   Body:
*     - формат = JSON {"guid":"<GUID>"}
*   Response:
*     - формат: JSON
*     - данные: текущее состояние флага (1 или 0)
*
* ***************************************************************
* Добавление ремонта или коментария к ремонту
*   URL: https://evpanet.com/api/apk/support/request
*   Method: POST
*   Header:
*     - key = token
*     - value = токен от гугла
*   Body:
*     - message = сообщение от абонента
*     - guid
*   Response:
*     - формат: JSON
*     - ответ: есть ли ошибка и текст, или сообщения или ошибки
**
* ***************************************************************
* Изменение пакета или активация нового
*   URL: https://evpanet.com/api/apk/user/tarif
*   Method: PATCH
*   Header:
*     - key = token
*     - value = токен от гугла
*   Body:
*     - формат = JSON {"tarif":"<tarifid>","guid":"<GUID>"}
*   Response:
*     - формат: JSON
*     - данные:
*         "packet_secs",
*         "tarif_id",
*         "tarif_sum",
*         "tarif_name"
* ***************************************************************
* Добавление дней
*   URL: https://evpanet.com/api/apk/user/days/
*   Method: PUT
*   Header:
*     - key = token
*     - value = токен от гугла
*   Body:
*     - формат = JSON {"guid":"<GUID>","days":<DAYS>}
*   Response:
*     - формат: JSON
*     - данные:
*         "days": <days>,
*         "packet_secs": <packet_secs>,
*         "extra_account": <extra_account>
*
* ***************************************************************
* */
