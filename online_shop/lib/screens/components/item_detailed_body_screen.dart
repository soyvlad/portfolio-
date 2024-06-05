import 'package:flutter/material.dart';
import 'package:online_shop/lib_assets/colors.dart';
import 'package:online_shop/lib_assets/constants.dart';
import 'package:online_shop/models/items.dart';
import 'package:online_shop/screens/components/cart_counter.dart';
import 'package:online_shop/screens/components/item_color_and_size.dart';
import 'package:online_shop/screens/components/item_description.dart';
import 'package:online_shop/screens/components/item_title_with_image.dart';

class ItemBodyCard extends StatelessWidget {
  final Item item;
  const ItemBodyCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(
                    top: size.height * 0.09,
                    left: kDefaultPadding,
                    right: kDefaultPadding,
                  ),
                  margin: EdgeInsets.only(top: size.height * 0.30),
                  decoration: const BoxDecoration(
                      color: kBottomSheet,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24))),
                  child: Column(
                    children: <Widget>[
                      ColorAndSize(item: item),
                      ItemDescription(item: item),
                      Row(children: <Widget>[
                        const CartCounter(),
                        const SizedBox(width: kDefaultPadding * 2),
                        AddToCart(item: item),
                      ])
                    ],
                  ),
                ),
                ItemTitleWithImage(item: item),
              ],
            ),
          )
        ],
      ),
    );
  }
}
