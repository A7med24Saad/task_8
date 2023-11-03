import 'package:flutter/material.dart';
import 'package:task_8/core/app_colors.dart';
import 'package:task_8/features/HomeView.dart';
import 'package:task_8/features/cash.dart';
import 'package:task_8/features/firstscreen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => SplashscreenState();
}

class SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4), () {
      cash.getbool(cash.isupload).then((value) {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) =>
                value ? const HomeView() : const firstscreen()));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldbg,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/appphoto.png',
              width: 250,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Insight News',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Stay informed anytime,anywhere',
              style: TextStyle(color: Colors.white38),
            ),
          ],
        ),
      ),
    );
  }
}
