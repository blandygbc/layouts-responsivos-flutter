import 'package:flutter/material.dart';
import 'package:panucci_ristorante/cardapio.dart';
import 'package:panucci_ristorante/components/highlight_item.dart';

class Highlights extends StatelessWidget {
  const Highlights({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(bottom: 16.0),
              child: Text(
                'Destaques',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Caveat",
                  fontSize: 32,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              final destaque = destaques[index];
              return HighlightItem(
                imageURI: destaque['image'] ?? '',
                itemTitle: destaque['title'] ?? '',
                itemPrice: destaque['price'] ?? '',
                itemDescription: destaque['description'] ?? '',
              );
            }, childCount: destaques.length),
          ),
        ],
      ),
    );
  }
}
