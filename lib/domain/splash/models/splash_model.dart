class GUIDS {
  List<String> guids;

  GUIDS({this.guids});

  GUIDS.fromJson(Map<String, dynamic> json) {
    guids = json['guids'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['guids'] = this.guids;
    return data;
  }
}
