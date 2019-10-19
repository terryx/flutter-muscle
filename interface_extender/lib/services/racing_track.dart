import '../models/animal/cheetah.dart';
import '../models/runner.dart';

class RacingTrack {
  List<String> register(List<Runner> participants) {
    final List<String> shoutout = [];

    for (var participant in participants) {
      shoutout.add(participant.run());

      if (participant is Cheetah) {
        print('Cheetah is spotted !');
      }
    }

    return shoutout;
  }
}
