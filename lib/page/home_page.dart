import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double height = 100;
  double width = 100;
  Color color = Colors.grey;
  double radius = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                AnimatedContainer(
                  height: height,
                  width: width,
                  duration: Duration(milliseconds: 800),
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(radius),
                  ),
                ),
                SizedBox(height: 20),
                CupertinoButton(
                  onPressed: () {
                    height = 200;
                    width = 200;
                    setState(() {});
                  },
                  child: Text("Change Height/Width"),
                ),
                SizedBox(height: 10),
                CupertinoButton(
                  onPressed: () {
                    color = Colors.yellow;
                    setState(() {});
                  },
                  child: Text("Change Color"),
                ),
                SizedBox(height: 10),
                CupertinoButton(
                  onPressed: () {
                    radius += 10;
                    setState(() {});
                  },
                  child: Text("Change Radius"),
                ),
                Divider(),
                SizedBox(height: 10),
                AnimatedOpacity(
                  opacity: 0.4,
                  duration: Duration(milliseconds: 500),
                  child: Text(
                    "Hide me",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
