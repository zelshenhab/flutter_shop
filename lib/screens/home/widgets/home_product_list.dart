import 'package:flutter/material.dart';

class HomeProductList extends StatelessWidget {
  const HomeProductList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> products = [
      {
        'name': 'Тушь для ресниц',
        'price': '299₽',
        'image': 'assets/images/image 36.png',
      },
      {
        'name': 'Крем для лица',
        'price': '499₽',
        'image': 'assets/images/image 40.png',
      },
      {
        'name': 'Тушь для ресниц',
        'price': '299₽',
        'image': 'assets/images/image 36.png',
      },
      {
        'name': 'Крем для лица',
        'price': '499₽',
        'image': 'assets/images/image 40.png',
      },
      {
        'name': 'Тушь для ресниц',
        'price': '299₽',
        'image': 'assets/images/image 36.png',
      },
      {
        'name': 'Крем для лица',
        'price': '499₽',
        'image': 'assets/images/image 40.png',
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Новинки',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 180,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: products.length,
            separatorBuilder: (_, __) => const SizedBox(width: 16),
            itemBuilder: (context, index) {
              final product = products[index];
              return Container(
                width: 140,
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
                      product['name']!,
                      style: const TextStyle(fontSize: 14),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      product['price']!,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
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
