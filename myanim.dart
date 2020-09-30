import 'package:flutter/material.dart';

class MyA1 extends StatefulWidget {
  @override
  _MyA1State createState() => _MyA1State();
}

class _MyA1State extends State<MyA1> with SingleTickerProviderStateMixin {
  var myanicon;
  var animation;

  @override
  void initState() {
    super.initState();
    myanicon = AnimationController(
      vsync: this,
      duration: Duration(seconds: 10),
    );

    print(myanicon);

    animation = CurvedAnimation(parent: myanicon, curve: Curves.bounceInOut)
      ..addListener(() {
        setState(() {
          print(animation.value);
        });
      });

    print(animation);

    myanicon.forward();
    print(myanicon);
  }

  @override
  void dispose() {
    super.dispose();
    myanicon.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
                left: 330 * animation.value, top: 650 * animation.value),
            child: Card(
              elevation: 15 * animation.value,
              child: GestureDetector(
                onTap: () {
                  myanicon.forward(from: 0.1);
                  print("clicked ..");
                },
                child: Container(
                  width: 50 * animation.value + 10,
                  height: 50 * animation.value + 10,
                  color: Color.fromRGBO((500 * animation.value).ceil(), (50),
                      (100 * animation.value).ceil(), 10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
