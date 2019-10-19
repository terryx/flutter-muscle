import '../models/animal/cheetah.dart';
import '../models/runner.dart';

class RacingTrack {
  RacingTrack.register(List<Runner> runners) {
    _runners = runners;
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
