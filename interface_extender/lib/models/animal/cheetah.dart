import '../runner.dart';
import 'animal.dart';

class Cheetah extends Animal implements Runner {
  Cheetah() {
    leg = 4;
  }

  @override
  String run() {
    return 'cheetah run!';
  }

  @override
  String stop() {
    return 'cheetah stop!';
  }
}
