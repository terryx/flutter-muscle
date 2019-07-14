import 'package:flutter/material.dart';
import 'form_bloc.dart';

export 'form_bloc.dart';

class FormProvider extends InheritedWidget {
  final FormBloc bloc;

  FormProvider({Key key, Widget child})
      : bloc = FormBloc(),
        super(key: key, child: child);

  @override
  bool updateShouldNotify(_) => true;

  static FormBloc of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(FormProvider) as FormProvider)
        .bloc;
  }
}
