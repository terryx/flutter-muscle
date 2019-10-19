import '../runner.dart';
import 'vehicle.dart';

class Car extends Vehicle implements Runner {
  Car() {
    wheel = 4;
  }

  @override
  String run() {
    return 'car run!';
  }

  @override
  String stop() {
    return 'car stop!';
  }
}
