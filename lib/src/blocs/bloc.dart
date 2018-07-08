import 'dart:async';
import 'validators.dart';
import 'package:rxdart/rxdart.dart';

class Bloc extends Object with Validators {
  final _email = BehaviorSubject<String>();
  final _password = BehaviorSubject<String>();

  // retrieve data from stream
  Stream<String> get email    => _email.stream.transform(validateEmail);
  Stream<String> get password => _password.stream.transform(validatePassword);
  Stream<bool>   get submitValid => Observable.combineLatest2(email, password, (e, p) => true);

  // add data to stream
  Function(String) get changeEmail    => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;

  submit() {
    final validEmail    = _email.value;
    final validPassword = _password.value;

    print('$validEmail and $validPassword');
  }

  dispose() {
    _email.close();
    _password.close();
  }
}
