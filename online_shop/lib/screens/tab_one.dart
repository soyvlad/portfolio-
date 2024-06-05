import 'package:flutter/material.dart';
import 'package:online_shop/lib_assets/constants.dart';
import 'package:online_shop/models/items.dart';
import 'package:online_shop/screens/components/item_card.dart';
import 'package:online_shop/screens/item_detailed_screen.dart';

class Tab1 extends StatelessWidget {
  const Tab1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: kDefaultPadding / 2),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: GridView.builder(
              itemCount: items.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.6,
                  mainAxisSpacing: kDefaultPadding,
                  crossAxisSpacing: kDefaultPadding),
              itemBuilder: (context, index) => ItemCard(
                  item: items[index],
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ItemDetailedScreen(item: items[index])));
                  }),
            ),
          ),
        ),
      ],
    );
  }
}
