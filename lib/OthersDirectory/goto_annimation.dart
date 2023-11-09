import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

class AnimatedPage extends StatefulWidget {
  @override
  _AnimatedPageState createState() => _AnimatedPageState();
}


class _AnimatedPageState extends State<AnimatedPage> {
  bool animate = true;
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 1000), () {
      setState(() {});
    });
    Future.delayed(Duration(seconds: 8), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => NextPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            FadeIn(
              duration: Duration(seconds: 5),
              animate: animate,
              child: const Square(),
            ),
            FadeInUp(
              duration: Duration(seconds: 5),
              animate: animate,
              child: const Square(),
            ),
            FadeInDown(
              duration: Duration(seconds: 5),
              animate: animate,
              child: const Square(),
            ),
            FadeInLeft(
              duration: Duration(seconds: 5),
              animate: animate,
              child: const Square(),
            ),
            FadeInRight(
              duration: Duration(seconds: 5),
              animate: animate,
              child: const Square(),
            ),
          ],
        ),
      ),
    );
    ;
  }
}

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Hadith Box',
            style: (TextStyle(
                fontSize: 30, fontWeight: FontWeight.w500, color: Colors.teal)),
          ),
        ),
      ),
      body: Center(
        child: Text("Welcome",style: (TextStyle(
            fontSize: 40,)), ),
      ),
    );
  }
}

class Square extends StatelessWidget {
  const Square({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      color: Colors.teal,
    );
  }
}
