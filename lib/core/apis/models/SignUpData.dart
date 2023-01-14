class SignUpData {
  String username = "null";
  String password = "null";
  String birth = "null";
  String email = "null";
  bool ok = false;

  SignUpData(
      {this.username = "null",
      this.password = "null",
      this.birth = "null",
      this.ok = false,
      this.email = "null"});

  SignUpData.fromJson(Map<String, dynamic> json) {
    ok = json['ok'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['username'] = this.username;
    data['password'] = this.password;
    data['birth'] = this.birth;
    data['email'] = this.email;
    return data;
  }
}
