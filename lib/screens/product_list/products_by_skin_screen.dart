import 'package:flutter/material.dart';
import 'package:flutter_shop/screens/product_list/filter_screen.dart';

class ProductsBySkinScreen extends StatelessWidget {
  final String skinType;

  const ProductsBySkinScreen({super.key, required this.skinType});

  @override
  Widget build(BuildContext context) {
    final List<String> filters = ['Очищение', 'Увлажнение', 'Регенерация'];
    final List<Map<String, String>> products = [
      {
        'name': 'Untress Total Serenity Serum',
        'type': 'Сыворотка',
        'price': '10 195 ₽',
        'image': 'assets/images/image 36.png',
      },
      {
        'name': 'Untress Revitalizing Toner',
        'type': 'Тоник',
        'price': '3095 ₽',
        'image': 'assets/images/image 40.png',
      },
      {
        'name': 'Untress Total Serenity Serum',
        'type': 'Сыворотка',
        'price': '10 195 ₽',
        'image': 'assets/images/image 36.png',
      },
      {
        'name': 'Untress Revitalizing Toner',
        'type': 'Тоник',
        'price': '3095 ₽',
        'image': 'assets/images/image 40.png',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 1,
        foregroundColor: Colors.black,
        title: Text('Средства для $skinType кожи'),
        actions: [
          IconButton(
            icon: const Icon(Icons.tune),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const FilterScreen()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${products.length} продуктов',
              style: const TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: 36,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: filters.length,
                separatorBuilder: (_, __) => const SizedBox(width: 8),
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: index == 1 ? Colors.black : Colors.grey[300],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      filters[index],
                      style: TextStyle(
                        color: index == 1 ? Colors.white : Colors.black,
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: GridView.builder(
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: 0.65,
                ),
                itemBuilder: (context, index) {
                  final product = products[index];
                  return Container(
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
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          product['price']!,
                          style: const TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
