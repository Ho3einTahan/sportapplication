class LoginData {
  String refresh = "null";
  String access = "null";

  LoginData({this.access = "null", this.refresh = "null"});

  LoginData.fromJson(Map<String, dynamic> json) {
    refresh = json['refresh'];
    access = json['access'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['refresh'] = this.refresh;
    data['access'] = this.access;
    return data;
  }
}
