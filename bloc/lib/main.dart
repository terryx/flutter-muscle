import 'package:flutter/material.dart';

import './bloc/form_provider.dart';
import './form.dart' as MyForm;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FormProvider(
      child: MaterialApp(
        title: 'Flutter Bloc Demo',
        home: MyForm.Form(),
      ),
    );
  }
}
