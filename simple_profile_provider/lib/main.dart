import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// screens
import './screens/profile_detail.dart';
import './screens/profile_overview.dart';

// providers
import './providers/profiles.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => Profiles(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.teal, accentColor: Colors.blueAccent),
        home: ProfileOverviewScreen(),
        routes: {
          ProfileDetailScreen.routeName: (context) => ProfileDetailScreen(),
        },
      ),
    );
  }
}
