import 'package:flutter/material.dart';
import 'package:online_shop/lib_assets/colors.dart';
import 'package:online_shop/lib_assets/constants.dart';
import 'package:online_shop/lib_assets/text_strings.dart';
import 'package:online_shop/screens/tab_one.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: buildAppBar(),
        body: const TabBarView(
          children: [
            Tab1(),
            Tab2(),
            Tab3(),
            Tab4(),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
          onPressed: () {}, icon: const Icon(Icons.arrow_back_ios_new)),
      actions: <Widget>[
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: kTextColor,
            )),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart,
              color: kTextColor,
            )),
        const SizedBox(width: kDefaultPadding / 2),
      ],
      title: const Text(HeadLine.headline1),
      centerTitle: true,
      bottom: const TabBar(
        indicatorColor: kTextColor,
        labelColor: kTextColor,
        unselectedLabelColor: kTextLightColor,
        indicatorSize: TabBarIndicatorSize.label,
        tabs: [
          Tab(text: TabNames.tab1),
          Tab(text: TabNames.tab2),
          Tab(text: TabNames.tab3),
          Tab(text: TabNames.tab4),
        ],
      ),
    );
  }
}

class Tab2 extends StatelessWidget {
  const Tab2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Обувь'),
    );
  }
}

class Tab3 extends StatelessWidget {
  const Tab3({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Платья'),
    );
  }
}

class Tab4 extends StatelessWidget {
  const Tab4({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Юбки'),
    );
  }
}
