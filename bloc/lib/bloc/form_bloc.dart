import 'package:rxdart/rxdart.dart';

class FormBloc {
  final _email = BehaviorSubject<String>();

  void changeEmail(String value) {
    if (value.length < 4) {
      _email.sink.addError('Email length too short');
    } else if (!value.contains('@')) {
      _email.sink.addError('Invalid email address');
    } else {
      _email.sink.add(value);
    }
    
    // Subject has record of current value
    print(_email.stream.value);
  }

  Observable<String> get email => _email.stream;

  dispose() {
    _email.close();
  }
}
