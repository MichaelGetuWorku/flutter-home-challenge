import 'package:flutter/material.dart';

class MealItem extends StatelessWidget {
  late final String title;
  late final String id;

  MealItem(this.id, this.title);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InputChip(
            onPressed: () {},
            label: Text(title),
            // title,
          ),
        ),
      ),
    );
  }
}
