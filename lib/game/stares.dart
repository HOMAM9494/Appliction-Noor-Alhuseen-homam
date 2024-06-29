import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Stares extends StatefulWidget {
  const Stares({super.key});

  @override
  State<Stares> createState() => _StaresState();
}

class _StaresState extends State<Stares> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsetsDirectional.all(2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Lottie.asset(
                'assets/anim.json',
              ),
            ),
            Expanded(
              child: Lottie.asset(
                'assets/anim.json',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
