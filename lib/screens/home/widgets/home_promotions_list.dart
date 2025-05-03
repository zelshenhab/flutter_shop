import 'package:flutter/material.dart';

class HomePromotionsList extends StatelessWidget {
  const HomePromotionsList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> promoProducts = [
      {
        'name': 'Muse Serum Supreme',
        'type': 'Сыворотка',
        'oldPrice': '10 195 ₽',
        'newPrice': '10 195 ₽',
        'image': 'assets/images/image 434.png',
        'badge': '%',
      },
      {
        'name': 'Untress Revitalizing Toner',
        'type': 'Крем',
        'oldPrice': '3195 ₽',
        'newPrice': '1595 ₽',
        'image': 'assets/images/image 45.png',
        'badge': '1+1',
      },
      {
        'name': 'Muse Serum Supreme',
        'type': 'Сыворотка',
        'oldPrice': '10 195 ₽',
        'newPrice': '10 195 ₽',
        'image': 'assets/images/image 434.png',
        'badge': '%',
      },
      {
        'name': 'Untress Revitalizing Toner',
        'type': 'Крем',
        'oldPrice': '3195 ₽',
        'newPrice': '1595 ₽',
        'image': 'assets/images/image 45.png',
        'badge': '1+1',
      },
    ];

    final List<String> promoFilters = [
      'Для очищения',
      'Для увлажнения',
      'Для питания',
      'Для омоложения',
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Text(
              'Акции',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 8),
            Container(width: 40, height: 3, color: Colors.pink),
          ],
        ),
        const SizedBox(height: 12),

        SizedBox(
          height: 250,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: promoProducts.length,
            separatorBuilder: (_, __) => const SizedBox(width: 16),
            itemBuilder: (context, index) {
              final product = promoProducts[index];
              return Container(
                width: 160,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(color: Colors.grey.shade200, blurRadius: 5),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            product['image']!,
                            height: 100,
                            width: double.infinity,
                            fit: BoxFit.contain,
                          ),
                        ),
                        if (product['badge'] != null)
                          Positioned(
                            top: 6,
                            right: 6,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 6,
                                vertical: 2,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                product['badge']!,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                      ],
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
                    Row(
                      children: [
                        Text(
                          product['newPrice']!,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          product['oldPrice']!,
                          style: const TextStyle(
                            decoration: TextDecoration.lineThrough,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),

        const SizedBox(height: 20),

        Wrap(
          spacing: 12,
          runSpacing: 12,
          children:
              promoFilters.map((filter) {
                return Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(filter),
                );
              }).toList(),
        ),
      ],
    );
  }
}
