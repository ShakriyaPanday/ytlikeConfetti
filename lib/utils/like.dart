import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LikeBotton extends StatefulWidget {
  const LikeBotton({super.key});

  @override
  State<LikeBotton> createState() => _LikeBottonState();
}

class _LikeBottonState extends State<LikeBotton> {
  IconData likeIcon = CupertinoIcons.hand_thumbsup;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          setState(() {
            likeIcon = likeIcon == CupertinoIcons.hand_thumbsup
                ? CupertinoIcons.hand_thumbsup_fill
                : CupertinoIcons.hand_thumbsup;
          });
        },
        child: Container(
          child: Icon(
            likeIcon,
            size: 60,
          ),
        ),
      ),
    );
  }
}
