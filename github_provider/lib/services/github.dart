import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../models/repo.dart';

class GithubAPI {
  static const String _baseUrl = 'https://api.github.com';

  @visibleForTesting
  http.Client client = http.Client();

  Future<List<Repo>> repos() async {
    const githubRepoUrl = _baseUrl + '/users/terryx/repos';
    final response = await client.get(githubRepoUrl);
    final List<dynamic> jsons = json.decode(response.body);
    final result = jsons.map((json) => Repo.fromJson(json)).toList();

    return result;
  }
}
