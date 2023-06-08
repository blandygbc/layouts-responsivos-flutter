import 'package:flutter/material.dart';
import 'package:panucci_ristorante/themes/app_colors.dart';

class HighlightItem extends StatelessWidget {
  const HighlightItem(
      {Key? key,
      required this.imageURI,
      required this.itemTitle,
      required this.itemPrice,
      required this.itemDescription})
      : super(key: key);
  final String imageURI;
  final String itemTitle;
  final String itemPrice;
  final String itemDescription;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      color: Theme.of(context).colorScheme.surfaceVariant,
      elevation: 0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image(
            height: 120,
            width: double.maxFinite,
            image: AssetImage(imageURI),
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 8),
                Text(
                  itemTitle,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text('R\$ $itemPrice'),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(itemDescription),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8.0, right: 16),
              child: ElevatedButton(
                onPressed: () {},
                style: AppColors.buttonStyle,
                child: const Text('Pedir'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
