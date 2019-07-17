import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Profile with ChangeNotifier {
  final String id;
  final String name;
  final String description;

  Profile({
    @required this.id,
    @required this.name,
    this.description = '',
  });
}
