import 'package:flutter/material.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> filters = [
      {'label': 'Сортировка', 'value': 'По популярности'},
      {'label': 'Тип кожи', 'value': 'Жирная'},
      {'label': 'Тип средства', 'value': 'Все'},
      {'label': 'Проблема кожи', 'value': 'Не выбрано'},
      {'label': 'Эффект средства', 'value': 'Увлажнение'},
      {'label': 'Линия косметики', 'value': 'Все'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Фильтры'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.all(16),
              itemCount: filters.length,
              separatorBuilder: (_, __) => const SizedBox(height: 20),
              itemBuilder: (context, index) {
                final filter = filters[index];
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      filter['label']!,
                      style: const TextStyle(fontSize: 20),
                    ),
                    Text(
                      filter['value']!,
                      style: const TextStyle(color: Colors.grey, fontSize: 20),
                    ),
                  ],
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // يرجع للشاشة السابقة
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                'Применить фильтры',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
