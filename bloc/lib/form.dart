import 'package:flutter/material.dart';

import 'bloc/form_provider.dart';

class Form extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = FormProvider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Bloc Form'),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: emailField(bloc),
      ),
    );
  }

  Widget emailField(FormBloc bloc) {
    return StreamBuilder(
        stream: bloc.email,
        builder: (context, snapshot) {
          return TextField(
            autocorrect: false,
            onChanged: bloc.changeEmail,
            decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'e.g abc@gmail.com',
                errorText: snapshot.error),
          );
        });
  }
}
