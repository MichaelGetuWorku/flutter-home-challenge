import 'package:flutter/material.dart';
import 'package:flutter_application_1/data.dart';
import 'package:flutter_application_1/widget/main_cat.dart';

import '../widget/meal_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'tempest',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 30,
                    ),
                  ),
                  Icon(
                    Icons.add,
                  )
                ],
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Hello', style: TextStyle(fontSize: 45)),
                      Text(
                        'Mortiz',
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Icon(
                        Icons.cloud,
                      ),
                      Text(
                        '16C + NewYork',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: CATEGORIES
                      .map((homes) => MealItem(
                            homes.id,
                            homes.title,
                          ))
                      .toList(),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              const Expanded(child: MainCat())
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: const Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: const Icon(
              Icons.menu_outlined,
            ),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: const Icon(Icons.notifications_active_sharp),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: const Icon(
              Icons.settings,
            ),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
