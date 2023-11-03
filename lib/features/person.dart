import 'dart:io';

import 'package:flutter/material.dart';
import 'package:task_8/core/app_colors.dart';
import 'package:task_8/features/cash.dart';

class person extends StatelessWidget {
  const person({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldbg,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(alignment: Alignment.center, children: [
              FutureBuilder(
                future: cash.get(cash.Image),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return CircleAvatar(
                        radius: 25,
                        backgroundImage: FileImage(File(snapshot.data!)));
                  } else {
                    return const CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.blue,
                    );
                  }
                },
              ),
              const Positioned(
                bottom: 0,
                right: 0,
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ]),
            const SizedBox(
              height: 30,
            ),
            Divider(
              color: AppColors.tapcolorafter,
              height: 0.7,
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 30,
              width: 300,
              decoration: BoxDecoration(
                  color: AppColors.container1,
                  borderRadius: BorderRadius.circular(15)),
              child: Center(
                child: FutureBuilder(
                  future: cash.get(cash.NameKey),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Text(
                        ' ${snapshot.data!.split('   ').first}',
                        style: TextStyle(
                            color: AppColors.tapcolorafter, fontSize: 18),
                      );
                    } else {
                      return const Text(
                        'user',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      );
                    }
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
