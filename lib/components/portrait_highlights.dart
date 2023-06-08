import 'package:flutter/material.dart';

import '../cardapio.dart';
import 'highlight_item.dart';

class PortraitHighlights extends StatelessWidget {
  const PortraitHighlights({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        final destaque = destaques[index];
        return HighlightItem(
          imageURI: destaque['image'] ?? '',
          itemTitle: destaque['name'] ?? '',
          itemPrice: destaque['price'] ?? '',
          itemDescription: destaque['description'] ?? '',
        );
      }, childCount: destaques.length),
    );
  }
}
