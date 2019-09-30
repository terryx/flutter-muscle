import 'dart:convert';

import 'package:github_provider/services/github.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Github user repo', () async {
    final mockClient = MockClient((http.Request request) async {
      final Map<String, String> data = {'id': 'asdsd'};

      return http.Response(json.encode(data), 200);
    });

    final github = GithubAPI();
    github.client = mockClient;

    final response = await github.repos();

    print(response.body);
  });
}
