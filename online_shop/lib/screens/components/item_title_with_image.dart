import 'package:flutter/material.dart';
import 'package:online_shop/lib_assets/colors.dart';
import 'package:online_shop/lib_assets/constants.dart';
import 'package:online_shop/lib_assets/text_strings.dart';
import 'package:online_shop/models/items.dart';

class ItemTitleWithImage extends StatelessWidget {
  const ItemTitleWithImage({
    super.key,
    required this.item,
  });

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            HeadLine.headline2,
            style: TextStyle(color: kBottomSheet),
          ),
          Text(
            item.title,
            style: Theme.of(context)
                .textTheme
                .headlineLarge
                ?.copyWith(color: kBottomSheet, fontWeight: FontWeight.bold),
          ),
          //const SizedBox(height: kDefaultPadding),
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(children: [
                  const TextSpan(text: HeadLine.headline3),
                  TextSpan(
                      text: '${item.price} ₽',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(
                              color: kBottomSheet,
                              fontWeight: FontWeight.bold)),
                ]),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
                child: SizedBox.square(
                  dimension: 240,
                  child: Hero(
                    tag: '${item.id}',
                    child: Image.asset(
                      item.image,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
