import 'package:animator/animator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: 'Heart Beat',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyIconWidget()));
}

class MyIconWidget extends StatefulWidget {
  const MyIconWidget({Key? key}) : super(key: key);

  @override
  State<MyIconWidget> createState() => _MyIconWidgetState();
}

class _MyIconWidgetState extends State<MyIconWidget> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
              width: width * 0.5,
              height: width * 0.5,
              child: Animator<double>(
                  duration: const Duration(seconds: 1),
                  cycles: 0,
                  curve: Curves.elasticIn,
                  tween: Tween<double>(begin: 20.0, end: 25.0),
                  builder: (context, animatorState, child) {
                    return Icon(
                      Icons.favorite,
                      size: animatorState.value * 5,
                      color: const Color(0XFFFF5757),
                    );
                  })),
          SizedBox(
              width: width * 0.5,
              height: width * 0.5,
              child: Animator<double>(
                  duration: const Duration(seconds: 1),
                  cycles: 0,
                  curve: Curves.elasticIn,
                  tween: Tween<double>(begin: 20.0, end: 25.0),
                  builder: (context, animatorState, child) {
                    return Icon(
                      Icons.favorite,
                      size: animatorState.value * 5,
                      color: const Color(0XFFFF5757),
                    );
                  })),
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
              width: width * 0.5,
              height: width * 0.5,
              child: Animator<double>(
                  duration: const Duration(seconds: 1),
                  cycles: 0,
                  curve: Curves.elasticIn,
                  tween: Tween<double>(begin: 20.0, end: 25.0),
                  builder: (context, animatorState, child) {
                    return Icon(
                      Icons.favorite,
                      size: animatorState.value * 5,
                      color: const Color(0XFFFF5757),
                    );
                  })),
          SizedBox(
              width: width * 0.5,
              height: width * 0.5,
              child: Animator<double>(
                  duration: const Duration(seconds: 1),
                  cycles: 0,
                  curve: Curves.elasticIn,
                  tween: Tween<double>(begin: 20.0, end: 25.0),
                  builder: (context, animatorState, child) {
                    return Icon(
                      Icons.favorite,
                      size: animatorState.value * 5,
                      color: const Color(0XFFFF5757),
                    );
                  })),
        ],
      ),
    ]));
  }
}
