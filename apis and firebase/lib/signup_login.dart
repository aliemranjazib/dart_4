import 'package:dummy/flutterfire.dart';
import 'package:flutter/material.dart';

class SignUpLogin extends StatefulWidget {
  @override
  _SignUpLoginState createState() => _SignUpLoginState();
}

class _SignUpLoginState extends State<SignUpLogin> {
  final _key = GlobalKey<FormState>();
  String email;
  String password;
  saveform(BuildContext context) {
    bool isValid = _key.currentState.validate();
    if (isValid) {
      _key.currentState.save();
      signup(email, password);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("SIGNUP"),
                  Center(
                    child: Form(
                        key: _key,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              TextFormField(
                                onSaved: (value) {
                                  email = value;
                                },
                                validator: (v) {
                                  if (v.isEmpty || !v.contains("@")) {
                                    return "enter valid email";
                                  }
                                  return null;
                                },
                                decoration:
                                    InputDecoration(labelText: "enter email"),
                              ),
                              TextFormField(
                                onSaved: (value) {
                                  password = value;
                                },
                                validator: (v) {
                                  if (v.isEmpty || v.length < 6) {
                                    return "enter valid password";
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                    labelText: "enter password"),
                              ),
                              ElevatedButton(
                                  onPressed: () {
                                    saveform(context);
                                  },
                                  child: Text("signup"))
                            ],
                          ),
                        )),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
