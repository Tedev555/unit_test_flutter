import 'package:http/http.dart' as http;

abstract class RestClient {
  Future<http.Response> request();
}

class RestClientImpl implements RestClient {
  final http.Client httpClient;

  RestClientImpl({required this.httpClient});

  @override
  Future<http.Response> request() {
    // return http.get(Uri.parse(''), headers: null);
    return Future.value(http.Response('', 200));
  }
}
