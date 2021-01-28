import 'package:crud_spring_flutter/utils/responsive.dart';
import 'package:crud_spring_flutter/widget/avatar_button.dart';
import 'package:crud_spring_flutter/widget/circle.dart';
import 'package:crud_spring_flutter/widget/register_form.dart';
import 'package:flutter/cupertino.dart';
// import 'package:crud_spring_flutter/widget/icon_container.dart';
// import 'package:crud_spring_flutter/widget/login_form.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  static const routeName = 'register';
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);

    final Size size = MediaQuery.of(context).size;

    final double pinkSize = responsive.wp(100);
    final double orangeSize = responsive.wp(56);

    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: responsive.height,
            color: Colors.white,
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Positioned(
                    right: -pinkSize * 0.3,
                    top: -pinkSize * 0.2,
                    child: Circle(
                      size: pinkSize * 0.9,
                      colors: [Colors.pink, Colors.pinkAccent],
                    )),
                Positioned(
                    left: -(orangeSize * 0.1),
                    top: -(orangeSize * 0.29),
                    child: Circle(
                      size: orangeSize,
                      colors: [Colors.orange, Colors.orangeAccent],
                    )),
                Positioned(
                  top: size.width * 0.18,
                  child: Column(children: <Widget>[
                    Text(
                      'hello Againx \n Welcome Back',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: responsive.dp(2.5),
                          fontFamily: 'RobotoMono',
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: responsive.dp(4),
                    ),
                    AvatarButton(
                      imageSize: responsive.wp(25),
                    )
                  ]),
                ),
                RegisterForm(),
                Positioned(
                    top: size.width * 0.03,
                    left: size.width * 0.03,
                    child: SafeArea(
                      child: CupertinoButton(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black26,
                        padding: EdgeInsets.all(10),
                        child: Icon(Icons.arrow_back),
                        onPressed: () {
                          Navigator.pushNamed(context, "login");
                        },
                      ),
                    ))
                // LoginForm()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
