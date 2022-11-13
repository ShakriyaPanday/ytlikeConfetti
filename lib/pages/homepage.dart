import 'package:flutter/material.dart';
import 'package:ytlike/utils/like.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(child: LikeBotton()),
    );
  }
}
