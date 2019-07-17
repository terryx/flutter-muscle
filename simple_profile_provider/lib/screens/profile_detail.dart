import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/profiles.dart';

class ProfileDetailScreen extends StatelessWidget {
  static const routeName = '/profile_detail';

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context).settings.arguments as String;
    final profile = Provider.of<Profiles>(context, listen: false).findByID(id);

    return Scaffold(
      appBar: AppBar(
        title: Text("Profile $id"),
      ),
      body: Card(
        elevation: 5.0,
        child: Center(
           child: Container(
             child: Text(profile.name),
           ),
        ),
      )
    );
  }
}
