import 'dart:async';
import 'package:rxdart/rxdart.dart';

class FormBloc {
  final _email = BehaviorSubject<String>();

  Function(String) get changeEmail => _email.sink.add;
  
  Observable<String> get email => _email.stream.map(
        (value) {
          print(value);
          return value;
        },
      ).transform(
        StreamTransformer<String, String>.fromHandlers(
            handleData: (email, sink) {
          if (email.length < 4) {
            return sink.addError('Email length too short');
          }

          if (!email.contains('@')) {
            return sink.addError('Invalid email address');
          }

          sink.add(email);
        }),
      );

  dispose() {
    _email.close();
  }
}
