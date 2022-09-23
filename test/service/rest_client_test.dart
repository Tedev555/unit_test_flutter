import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:unit_test_flutter/service/rest_client.dart';
import 'package:http/http.dart' as http;

class MockHttpClient extends Mock implements http.Client {}

class FakeUri extends Fake implements Uri {}

Future<void> main() async {
  RestClient? client;
  MockHttpClient? httpClient;

  setUpAll(() {
    httpClient = MockHttpClient();
    // client = RestClientImpl(httpClient: httpClient);
  });

  test('Test RestClient request should return httpeResponse', () async {
    final res = await client?.request();
    expect(res, isA<http.Response>());
  });
}
