import 'package:flutter/material.dart';

import './profile.dart';

class Profiles with ChangeNotifier {
  final List<Profile> _profiles = [
    Profile(
      id: '1',
      name: 'Robert John Downey Jr.',
      description: 'Iron Man',
    ),
    Profile(
      id: '2',
      name: 'Scarlett Ingrid Johansson',
      description: 'Black Widow',
    ),
    Profile(
      id: '3',
      name: 'Josh Brolin',
      description: 'Thanos',
    ),
  ];

  List<Profile> get profiles => _profiles;

  Profile findByID(String id) =>
      _profiles.where((profile) => profile.id == id).single;
}
