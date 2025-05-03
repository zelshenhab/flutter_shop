import 'package:flutter/material.dart';

class HomeCategoriesTabs extends StatelessWidget {
  const HomeCategoriesTabs({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> categories = [
      {'title': 'Наборы', 'image': 'assets/images/image 43.png'},
      {'title': 'Для лица', 'image': 'assets/images/Frame 64.png'},
      {'title': 'Для глаз', 'image': 'assets/images/image 58.png'},
      {'title': 'Для тела', 'image': 'assets/images/Frame 5.png'},
      {'title': 'Умывание', 'image': 'assets/images/Frame 4.png'},
    ];

    return SizedBox(
      height: 100,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        itemCount: categories.length,
        separatorBuilder: (_, __) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          final category = categories[index];
          return Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  category['image']!,
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 6),
              Text(category['title']!, style: const TextStyle(fontSize: 16)),
            ],
          );
        },
      ),
    );
  }
}
