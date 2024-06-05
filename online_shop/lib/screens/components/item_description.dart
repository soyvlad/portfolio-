import 'package:flutter/material.dart';
import 'package:online_shop/lib_assets/constants.dart';
import 'package:online_shop/models/items.dart';

class ItemDescription extends StatelessWidget {
  const ItemDescription({
    super.key,
    required this.item,
  });

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Text(
        item.description,
        style: const TextStyle(height: 1.5),
      ),
    );
  }
}
