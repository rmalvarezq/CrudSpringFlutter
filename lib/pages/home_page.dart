import 'package:crud_spring_flutter/utils/responsive.dart';
import 'package:crud_spring_flutter/widget/circle.dart';
import 'package:crud_spring_flutter/widget/icon_container.dart';
import 'package:crud_spring_flutter/widget/login_form.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                    top: -(orangeSize * 0.34),
                    child: Circle(
                      size: orangeSize,
                      colors: [Colors.orange, Colors.orangeAccent],
                    )),
                Positioned(
                  top: size.width * 0.34,
                  child: Column(children: <Widget>[
                    IconContainer(
                      size: responsive.wp(30),
                    ),
                    SizedBox(
                      height: responsive.dp(1.6),
                    ),
                    Text(
                      'hello Again \n Welcome Back',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: responsive.dp(2), fontFamily: 'RobotoMono'),
                    ),
                  ]),
                ),
                LoginForm()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
