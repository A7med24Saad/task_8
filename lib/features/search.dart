import 'package:flutter/material.dart';
import 'package:task_8/core/app_colors.dart';

class search extends StatelessWidget {
  const search({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldbg,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: InputDecoration(
              prefixIconColor: AppColors.tapcolorafter,
              labelText: 'Search for News',
              labelStyle: const TextStyle(color: Colors.white),
              prefixIcon: const Icon(Icons.search),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '    Total Results:10',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.separated(
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(color: AppColors.tabbar),
                    child: ListTile(
                      leading: Image.asset('assets/image 1.png'),
                      title: const Text(
                        'Man city Stay perfect despite Rodri red againest forest',
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: const Row(
                        children: [
                          Icon(Icons.menu),
                          Text(
                            'Read',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 10,
                  );
                },
                itemCount: 3),
          ),
        ],
      ),
    );
  }
}
