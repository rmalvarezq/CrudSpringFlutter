import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AvatarButton extends StatelessWidget {
  final double imageSize;
  const AvatarButton({Key key, this.imageSize = 100}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 2),
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                    blurRadius: 20,
                    color: Colors.black26,
                    offset: Offset(0, 26))
              ]),
          child: ClipOval(
            child: Image.network(
              'https://picsum.photos/id/237/200/300',
              width: this.imageSize,
              height: this.imageSize,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: CupertinoButton(
            padding: EdgeInsets.zero,
            borderRadius: BorderRadius.circular(20),
            // padding: EdgeInsets.all(10),
            child: Container(
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
              padding: EdgeInsets.all(5),
              decoration:
                  BoxDecoration(color: Colors.pink, shape: BoxShape.circle),
            ),

            onPressed: () {
              Navigator.pushNamed(context, "login");
            },
          ),
        ),
      ],
    );
  }
}
