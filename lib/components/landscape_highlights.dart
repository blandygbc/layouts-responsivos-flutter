import 'package:flutter/material.dart';

import '../cardapio.dart';
import 'highlight_item.dart';

class LandscapeHighlights extends StatelessWidget {
  const LandscapeHighlights({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          final destaque = destaques[index];
          return HighlightItem(
            imageURI: destaque['image'] ?? '',
            itemTitle: destaque['name'] ?? '',
            itemPrice: destaque['price'] ?? '',
            itemDescription: destaque['description'] ?? '',
          );
        },
        childCount: destaques.length,
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 1.1,
      ),
    );
  }
}
