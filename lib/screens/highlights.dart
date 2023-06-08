import 'package:flutter/material.dart';
import 'package:panucci_ristorante/components/landscape_highlights.dart';
import 'package:panucci_ristorante/components/portrait_highlights.dart';

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
          Visibility(
            visible: MediaQuery.of(context).orientation == Orientation.portrait,
            replacement: const LandscapeHighlights(),
            child: const PortraitHighlights(),
          )
        ],
      ),
    );
  }
}
