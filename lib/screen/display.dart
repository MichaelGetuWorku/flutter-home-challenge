import 'package:flutter/material.dart';

class Lights extends StatelessWidget {
  const Lights({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Studio Lights',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              Container(
                width: 300.0,
                height: 300.0,
                decoration: const BoxDecoration(
                  color: Colors.yellow,
                  shape: BoxShape.circle,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15, right: 0, top: 0, bottom: 0),
                child: Text(
                  'SATURN YELLOW',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Text(
                'Profile 1 - 80%',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey.shade600,
                ),
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(Icons.add),
                  Icon(Icons.power_settings_new_outlined),
                  Icon(
                    Icons.circle,
                    color: Colors.orange,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
