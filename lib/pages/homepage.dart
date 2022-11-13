import 'package:confetti/confetti.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _contoller = ConfettiController();
  IconData likeIcon = CupertinoIcons.hand_thumbsup;
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _contoller.dispose();
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
                  _contoller.stop();
                } else {
                  _contoller.play();
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
            ConfettiWidget(confettiController: _contoller)
          ],
        ),
      )),
    );
  }
}
