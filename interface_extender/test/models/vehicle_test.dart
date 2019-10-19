import 'package:flutter_test/flutter_test.dart';
import 'package:interface_extender/models/animal/cheetah.dart';
import 'package:interface_extender/models/vehicle/car.dart';
import 'package:interface_extender/models/vehicle/motorcycle.dart';

import 'package:interface_extender/services/racing_track.dart';

void main() {
  group('Vehicle', () {
    test('can runner', () {
      final RacingTrack track = RacingTrack();

      // register everyone who can run here!
      final Car car = Car();
      final MotorCycle motorCycle = MotorCycle();
      final Cheetah cheetah = Cheetah();

      final List<String> participants =
          track.register([car, motorCycle, cheetah]);

      print(participants);
    });
  });
}
