class SplashModel {
  bool error;
  Message message;

  SplashModel({this.error, this.message});

  SplashModel.fromJson(Map<String, dynamic> json) {
    error = json['error'];
    message =
        json['message'] != null ? new Message.fromJson(json['message']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['error'] = this.error;
    if (this.message != null) {
      data['message'] = this.message.toJson();
    }
    return data;
  }
}

class Message {
  List<String> guids;

  Message({this.guids});

  Message.fromJson(Map<String, dynamic> json) {
    guids = json['guids'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['guids'] = this.guids;
    return data;
  }
}
