import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/display.dart';

class CatagoryItem extends StatelessWidget {
  late final String title;
  late final Color color;
  late final String id;

  CatagoryItem(this.id, this.title, this.color);

  void selectCatagory(BuildContext context) {
    // Navigator.of(context).pushNamed(CatagoryMealsScreen.routename, arguments: {
    //   'id': id,
    //   'title': title,
    // });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Lights()),
        );
      },
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
