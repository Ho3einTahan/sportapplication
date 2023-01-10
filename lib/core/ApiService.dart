import 'package:http/http.dart' as http;

class ApiService {
  String base_url = "http://192.168.10.2:8000/api/v1/";
  int timeout = 10;

  void set_base_url(url) {
    this.base_url = url;
  }

  Future req_get(url, {params}) async {
    return http
        .get(Uri.parse("${this.base_url}${url}${params ?? '/'}"))
        .timeout(Duration(seconds: this.timeout));
  }

  Future req_post(url, params) async {
    return http
        .post(Uri.parse("${this.base_url}$url"), body: params)
        .timeout(Duration(seconds: this.timeout));
  }
}
