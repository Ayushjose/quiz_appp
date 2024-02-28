import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2),(){Navigator.push(context, MaterialPageRoute(builder: (context) => Questions(),));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: Column(
        mainAxisAlignment:MainAxisAlignment.center,
        children:[
          Center(
            child: Image.network(
                'https://png.pngtree.com/png-vector/20230120/ourmid/pngtree-quiz-logo-with-speech-bubble-symbols-png-image_6568572.png'),

          ),
        ],
      ),
    );
  }
}
