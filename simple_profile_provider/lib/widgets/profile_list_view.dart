import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/profiles.dart';
import './profile_list_item.dart';

class ProfileListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final profiles = Provider.of<Profiles>(context).profiles;

    return ListView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: profiles.length,
      itemBuilder: (context, i) => ChangeNotifierProvider(
        builder: (c) => profiles[i],
        child: ProfileListItem(),
      ),
    );
  }
}
