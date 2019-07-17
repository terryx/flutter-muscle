import 'package:flutter/material.dart';

import '../widgets/profile_list_view.dart';

class ProfileOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      appBar: AppBar(
        title: Text('Profile Overview'),
      ),
      body: ProfileListView(),
    );
    return scaffold;
  }
}
