import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_provider/services/github.dart';

void main() {
  test('Github user repo', () async {
    final mockClient = MockClient((http.Request request) async {
      final String data = await File('test/services/repos.json').readAsString();
      return http.Response(data, 200);
    });

    final github = GithubAPI();
    github.client = mockClient;

    final repos = await github.repos();

    expect(repos[0].id, 196864939);
  });
}
