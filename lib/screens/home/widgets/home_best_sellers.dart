import 'package:flutter/material.dart';

class HomeBestSellers extends StatelessWidget {
  const HomeBestSellers({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> bestSellers = [
      {
        'name': 'Forever Young- Total Renewal Serum',
        'type': 'Сыворотка',
        'price': '10 195 ₽',
        'image': 'assets/images/image 33.png',
      },
      {
        'name': 'Illustrious Mask',
        'type': 'Осветляющая маска',
        'price': '1595 ₽',
        'image': 'assets/images/image 6.png',
      },
      {
        'name': 'Illustrious Mask',
        'type': 'Осветляющая маска',
        'price': '1595 ₽',
        'image': 'assets/images/image 33.png',
      },
      {
        'name': 'Illustrious Mask',
        'type': 'Осветляющая маска',
        'price': '1595 ₽',
        'image': 'assets/images/image 6.png',
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Text(
              'Хиты',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 8),
            Container(width: 40, height: 3, color: Colors.orange),
          ],
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 230,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: bestSellers.length,
            separatorBuilder: (_, __) => const SizedBox(width: 16),
            itemBuilder: (context, index) {
              final product = bestSellers[index];
              return Container(
                width: 160,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Image.asset(
                        product['image']!,
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      product['type']!,
                      style: const TextStyle(fontSize: 12),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      product['name']!,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 4),
                    Text(product['price']!),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
