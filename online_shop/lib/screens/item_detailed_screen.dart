import 'package:flutter/material.dart';
import 'package:online_shop/lib_assets/colors.dart';
import 'package:online_shop/lib_assets/constants.dart';
import 'package:online_shop/models/items.dart';
import 'package:online_shop/screens/components/item_detailed_body_screen.dart';

class ItemDetailedScreen extends StatelessWidget {
  final Item item;

  const ItemDetailedScreen({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: item.color,
      appBar: buildAppbar(context),
      body: ItemBodyCard(
        item: item,
      ),
    );
  }

  AppBar buildAppbar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: item.color,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios_new),
        color: kIconAppBar,
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            color: kIconAppBar,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.shopping_cart,
            color: kIconAppBar,
          ),
        ),
        const SizedBox(width: kDefaultPadding / 2),
      ],
    );
  }
}
