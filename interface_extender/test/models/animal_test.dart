import 'package:flutter_test/flutter_test.dart';
import 'package:interface_extender/models/animal/cheetah.dart';
import 'package:interface_extender/models/runner.dart';
import 'package:interface_extender/models/vehicle/car.dart';
import 'package:interface_extender/models/vehicle/motorcycle.dart';

import 'package:interface_extender/services/racing_track.dart';

void main() {
  group('Animal', () {
    test('train Cheetah', () {
      // register everyone who can run here!
      final RacingTrack track = RacingTrack();
      final Runner runner = track.train(RunnerType.animal);

      expect(runner is Cheetah, true);
    });

  });
}
