import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../models/repo.dart';

class GithubAPI {
  static const String _baseUrl = 'https://api.github.com';

  @visibleForTesting
  http.Client client = http.Client();

  Future<http.Response> repos() async {
    const githubRepoUrl = _baseUrl + '/users/terryx/repos';
    final response = await client.get(githubRepoUrl);
    final Map<String, dynamic> body = json.decode(response.body);

    print(body);

    return response;
  }
}
