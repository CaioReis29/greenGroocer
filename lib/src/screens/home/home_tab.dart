import 'package:add_to_cart_animation/add_to_cart_animation.dart';
import 'package:flutter/material.dart';
import 'package:greengrocer/src/config/custom_colors.dart';
import 'package:badges/badges.dart' as badges;
import 'package:greengrocer/src/screens/home/components/item_title.dart';
import 'components/category_title.dart';
import '../../config/app_data.dart' as app_data;

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  String selected = "Frutas";

  GlobalKey<CartIconKey> cartKey = GlobalKey<CartIconKey>();

  late Function(GlobalKey) runAddToCartAnimation;

  void itemSelectedCartAnimation(GlobalKey gkImage) {
    runAddToCartAnimation(gkImage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text.rich(
          TextSpan(
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            children: [
              TextSpan(
                  text: "Green",
                  style: TextStyle(
                    color: CustomColors.customSwatchColor,
                  )),
              TextSpan(
                text: "groocer",
                style: TextStyle(
                  color: CustomColors.customConstrastColor,
                ),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              top: 15,
              right: 15,
            ),
            child: GestureDetector(
              onTap: () {},
              child: badges.Badge(
                badgeAnimation: const badges.BadgeAnimation.scale(),
                position: badges.BadgePosition.topEnd(top: -16, end: -7),
                badgeContent: const Text(
                  "0",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
                child: AddToCartIcon(
                  key: cartKey,
                  badgeOptions: const BadgeOptions(
                    active: false,
                  ),
                  icon: Icon(
                    Icons.shopping_cart,
                    color: CustomColors.customSwatchColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: AddToCartAnimation(
        cartKey: cartKey,
        createAddToCartAnimation: (p0) => runAddToCartAnimation = p0,
        jumpAnimation: const JumpAnimationOptions(
          active: true,
          curve: Curves.decelerate,
          duration: Duration(milliseconds: 500),
        ),
        dragAnimation: const DragToCartAnimationOptions(
          curve: Curves.elasticIn,
          rotation: true,
          duration: Duration(milliseconds: 500),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  isDense: true,
                  hintText: "Faça sua pesquisa...",
                  hintStyle: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 14,
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: CustomColors.customConstrastColor,
                    size: 25,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(60),
                    borderSide: const BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 25),
              height: 40,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (c, i) => CategoryTitle(
                  onPressed: () =>
                      setState(() => selected = app_data.categories[i]),
                  category: app_data.categories[i],
                  isSelected: app_data.categories[i] == selected,
                ),
                separatorBuilder: (c, i) => const SizedBox(width: 10),
                itemCount: app_data.categories.length,
              ),
            ),
            Expanded(
              child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 9 / 11.5,
                ),
                itemCount: app_data.items.length,
                itemBuilder: (c, i) => ItemTitle(
                  item: app_data.items[i],
                  runAddToCartAnimation: itemSelectedCartAnimation,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
