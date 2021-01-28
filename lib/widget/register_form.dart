import 'package:crud_spring_flutter/utils/responsive.dart';
import 'package:crud_spring_flutter/widget/input_text.dart';
import 'package:flutter/material.dart';

class RegisterForm extends StatefulWidget {
  RegisterForm({Key key}) : super(key: key);

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  GlobalKey<FormState> _formKey = GlobalKey();
  String _email = '', _password = '', _username = '';
  _submit() {
    final isOk = _formKey.currentState.validate();
    print("is Ok $isOk");
  }

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Positioned(
      bottom: 30,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: responsive.isTablet ? 430 : 360,
        ),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              InputText(
                keyboadrtype: TextInputType.emailAddress,
                label: 'USERNAME',
                fontSize: responsive.dp(2),
                onChanged: (text) {
                  _username = text;
                  print("email:$_username");
                },
                validator: (text) {
                  if (text.trim().length < 5) {
                    return "invalid username";
                  }
                  return null;
                },
              ),
              InputText(
                keyboadrtype: TextInputType.emailAddress,
                label: 'EMAIL ADDRESS',
                fontSize: responsive.dp(2),
                onChanged: (text) {
                  _email = text;
                  print("email:$_email");
                },
                validator: (text) {
                  if (!text.contains('@')) {
                    return "invalid email";
                  }
                  return null;
                },
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.black12))),
                child: Row(
                  children: [
                    Expanded(
                      child: InputText(
                        label: 'PASSWORD',
                        borderEnable: false,
                        obscureText: true,
                        fontSize: responsive.dp(2),
                        onChanged: (text) {
                          print("password:$_password");
                          _password = text;
                        },
                        validator: (text) {
                          if (text.trim().length < 6) {
                            return "invalid password";
                          }
                          return null;
                        },
                      ),
                    ),
                    FlatButton(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        onPressed: () {},
                        child: Text(
                          'Forgot Password',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: responsive.dp(2)),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: responsive.dp(5),
              ),
              SizedBox(
                width: double.infinity,
                child: FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  onPressed: this._submit,
                  // ,
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                        color: Colors.white, fontSize: responsive.dp(2)),
                  ),
                  color: Colors.redAccent,
                ),
              ),
              SizedBox(height: responsive.dp(2)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'already have an account ',
                    style: TextStyle(fontSize: responsive.dp(2)),
                  ),
                  FlatButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                            color: Colors.pinkAccent,
                            fontSize: responsive.dp(1.6)),
                      ))
                ],
              ),
              SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
