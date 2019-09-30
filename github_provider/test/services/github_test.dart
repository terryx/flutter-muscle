import 'package:http/http.dart' as http;
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Github user repo', () async {
    final client = http.Client();
    const githubRepoUrl = 'https://api.github.com/users/terryx/repos';

    final response = await client.get(githubRepoUrl);

    print(response.body);
  });
}
