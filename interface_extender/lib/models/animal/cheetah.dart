import '../runner.dart';
import 'animal.dart';

class Cheetah extends Animal implements Runner {
  Cheetah();

  @override
  final int leg = 4;

  @override
  String run() {
    return 'cheetah run!';
  }

  @override
  String stop() {
    return 'cheetah stop!';
  }
}
