import 'package:flutter_test/flutter_test.dart';
import 'package:interface_extender/models/animal/cheetah.dart';
import 'package:interface_extender/models/runner.dart';
import 'package:interface_extender/models/vehicle/car.dart';
import 'package:interface_extender/models/vehicle/motorcycle.dart';

import 'package:interface_extender/services/racing_track.dart';

void main() {
  group('Vehicle', () {
    test('Cheetah is winner', () {
      // register everyone who can run here!
      final RacingTrack track = RacingTrack.register([
        Car(),
        MotorCycle(),
        Cheetah(),
      ]);

      final Runner winner = track.start();
      expect(winner is Cheetah, true);
    });

    test('First participant always win', () {
      final RacingTrack track = RacingTrack.register([
        Car(),
        MotorCycle(),
      ]);

      final Runner winner = track.start();
      expect(winner is Car, true);
    });
  });
}
