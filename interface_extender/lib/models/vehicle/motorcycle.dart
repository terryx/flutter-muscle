import '../runner.dart';
import 'vehicle.dart';

class MotorCycle extends Vehicle implements Runner {
  MotorCycle() {
    wheel = 2;
  }

  @override
  String run() {
    return 'motorcycle run!';
  }

  @override
  String stop() {
    return 'motorcycle stop!';
  }
}
