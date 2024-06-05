import 'package:flutter/material.dart';
import 'package:online_shop/lib_assets/colors.dart';
import 'package:online_shop/lib_assets/constants.dart';
import 'package:online_shop/models/items.dart';

class ItemCard extends StatelessWidget {
  final Item item;
  final VoidCallback press;

  const ItemCard({
    super.key,
    required this.item,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                  color: item.color, borderRadius: BorderRadius.circular(16)),
              child: Hero(tag: '${item.id}', child: Image.asset(item.image)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
            child: Text(
              item.title,
              style: const TextStyle(color: kTextLightColor),
            ),
          ),
          Text(
            '${item.price} ₽',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
