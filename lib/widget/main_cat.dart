import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/catagorie_item.dart';

import '../data.dart';

class MainCat extends StatelessWidget {
  const MainCat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(20),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: DUMMY_CATEGORIES
          .map((catData) => CatagoryItem(
                catData.id,
                catData.title,
                catData.color,
              ))
          .toList(),
    );
  }
}
