import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/profile.dart';
import '../screens/profile_detail.dart';

class ProfileListItem extends StatelessWidget {
  final Profile profile;
  ProfileListItem(this.profile);
  
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(profile.name),
      subtitle: Text(profile.description),
      onTap: () {
        Navigator.of(context).pushNamed(
          ProfileDetailScreen.routeName,
          arguments: profile.id,
        );
      },
    );
  }
}
