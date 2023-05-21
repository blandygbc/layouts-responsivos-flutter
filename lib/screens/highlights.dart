import 'package:flutter/material.dart';
import 'package:panucci_ristorante/cardapio.dart';
import 'package:panucci_ristorante/components/highlight_item.dart';

class Highlights extends StatelessWidget {
  final items = destaques;
  const Highlights({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return HighlightItem(
              imageURI: items[index]['image'] ?? '',
              itemTitle: items[index]['title'] ?? '',
              itemPrice: items[index]['price'] ?? '',
              itemDescription: items[index]['description'] ?? '',
            );
          },
        ),
      ),
    );
  }
}
