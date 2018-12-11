import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class NetworkUtil {
  // next three lines makes this class a Singleton
  static NetworkUtil _instance = new NetworkUtil.internal();
  static final baseUrlImg = "http://go.cxpress.net/";
  static final baseUrl = "http://api.cxpress.net/";

  NetworkUtil.internal();
  factory NetworkUtil() => _instance;

  final JsonDecoder _decoder = new JsonDecoder();

  Future<dynamic> get(String url,[int l = 0]) async {
    return http.get(baseUrl + url).then((http.Response response) {
      final String res = response.body;
      final int statusCode = response.statusCode;

      if (statusCode < 200 || statusCode > 400 || json == null) {
        if(l > 3) {
          throw new Exception("Error while fetching data");
        }else{
          return get(url,l +1);
        }
      }
      return _decoder.convert(res);
    });
  }

  Future<dynamic> post(String url, {Map headers, body, encoding,int l = 0}) async {
    return http
        .post(baseUrl + url, body: body, headers: headers, encoding: encoding)
        .then((http.Response response) {
      final String res = response.body;
      final int statusCode = response.statusCode;

      if (statusCode < 200 || statusCode > 400 || json == null) {
        if(l >3){
          throw new Exception("Error while fetching data");
        }else {
          return post(url,body: body, headers: headers, encoding: encoding,l: (l+1));
        }
      }
      return _decoder.convert(res);
    });
  }
}
