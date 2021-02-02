/// JSON ответ от API при авторизации
/// {
///    "error": false, // Это поле есть в любом ответе. Если всё хорошо, error == FALSE, если ошибка на сервере, error == TRUE
///    "message": { // Это поле так же есть в любом ответе, тут если ошибка, будет String сообщение об ошибке, если нет ошибки, будут JSON данные
///        "guids": [
///            "719E3DD7-AFC1-113F-D3ED-9BA2FFE39E18"
///        ]
///    }
/// }
/// 
/// 



class Login {
  bool _error;
  Message _message;

  Login({bool error, Message message}) {
    this._error = error;
    this._message = message;
  }

  bool get error => _error;
  set error(bool error) => _error = error;
  Message get message => _message;
  set message(Message message) => _message = message;

  Login.fromJson(Map<String, dynamic> json) {
    _error = json['error'];
    _message =
        json['message'] != null ? new Message.fromJson(json['message']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['error'] = this._error;
    if (this._message != null) {
      data['message'] = this._message.toJson();
    }
    return data;
  }
}

class Message {
  List<String> _guids;

  Message({List<String> guids}) {
    this._guids = guids;
  }

  List<String> get guids => _guids;
  set guids(List<String> guids) => _guids = guids;

  Message.fromJson(Map<String, dynamic> json) {
    _guids = json['guids'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['guids'] = this._guids;
    return data;
  }
}
