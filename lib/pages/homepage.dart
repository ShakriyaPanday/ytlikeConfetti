import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _contollerdown = ConfettiController();
  final _contollerup = ConfettiController();
  final _contollerleft = ConfettiController();
  final _contollerright = ConfettiController();
  IconData likeIcon = CupertinoIcons.hand_thumbsup;
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _contollerdown.dispose();
    _contollerup.dispose();
    _contollerleft.dispose();
    _contollerright.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  likeIcon = likeIcon == CupertinoIcons.hand_thumbsup
                      ? CupertinoIcons.hand_thumbsup_fill
                      : CupertinoIcons.hand_thumbsup;
                });
                if (likeIcon == CupertinoIcons.hand_thumbsup) {
                  _contollerup.stop();
                  _contollerdown.stop();
                  _contollerleft.stop();
                  _contollerright.stop();
                } else {
                  _contollerup.play();
                  _contollerdown.play();
                  _contollerleft.play();
                  _contollerright.play();
                }
                ;
              },
              child: Container(
                child: Icon(
                  likeIcon,
                  size: 60,
                ),
              ),
            ),
            ConfettiWidget(
              confettiController: _contollerdown,
              blastDirection: pi / 2,
              gravity: 0.01,
              emissionFrequency: 0,
              numberOfParticles: 100,
              maxBlastForce: 10,
            ),
            ConfettiWidget(
              confettiController: _contollerup,
              blastDirection: -pi / 2,
              gravity: 0.01,
              emissionFrequency: 0,
              numberOfParticles: 100,
              maxBlastForce: 10,
            ),
            ConfettiWidget(
              confettiController: _contollerleft,
              blastDirection: pi,
              gravity: 0.01,
              emissionFrequency: 0,
              numberOfParticles: 100,
              maxBlastForce: 10,
            ),
            ConfettiWidget(
              confettiController: _contollerright,
              blastDirection: 0,
              gravity: 0.01,
              emissionFrequency: 0,
              numberOfParticles: 100,
              maxBlastForce: 10,
            ),
          ],
        ),
      )),
    );
  }
}
