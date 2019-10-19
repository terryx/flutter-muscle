import '../models/runner.dart';

class RacingTrack {
  List<String> register(List<Runner> participants) {
    final List<String> shoutout = [];

    for (var participant in participants) {
      shoutout.add(participant.run());
    }

    return shoutout;
  }
}
