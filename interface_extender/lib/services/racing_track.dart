import 'package:interface_extender/models/vehicle/motorcycle.dart';

import '../models/animal/cheetah.dart';
import '../models/runner.dart';

class RacingTrack {
  RacingTrack();

  RacingTrack.register(List<Runner> runners) {
    _runners = runners;
  }

  Runner train(RunnerType runnerType) {
    Runner runner;

    switch (runnerType) {
      case RunnerType.animal:
        runner = Cheetah();
        break;
      case RunnerType.vehicle:
        runner = MotorCycle();
        break;
      default:
        assert(false, 'No runner type found');
    }

    runner.run();
    runner.stop();

    return runner;
  }

  List<Runner> _runners;

  Runner start() {
    for (var participant in _runners) {
      print(participant.run());

      if (participant is Cheetah) {
        print('Cheetah is spotted !');
        return participant;
      }
    }

    return _runners[0];
  }
}
