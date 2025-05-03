import 'package:flutter/material.dart';
import '../product_list/products_by_skin_screen.dart';

class SkinTypeScreen extends StatelessWidget {
  const SkinTypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> skinTypes = [
      'Жирная',
      'Комбинированная',
      'Нормальная',
      'Сухая',
      'Любой тип',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('По типу кожи'),
        backgroundColor: Colors.white,
        elevation: 1,
        foregroundColor: Colors.black,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        itemCount: skinTypes.length,
        separatorBuilder: (_, __) => const SizedBox(height: 16),
        itemBuilder: (context, index) {
          final skinType = skinTypes[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ProductsBySkinScreen(skinType: skinType),
                ),
              );
            },
            child: Text(skinType, style: const TextStyle(fontSize: 20)),
          );
        },
      ),
    );
  }
}
