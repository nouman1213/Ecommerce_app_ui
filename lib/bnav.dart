import 'package:flutter/material.dart';

import 'Ecom.dart';

class Bnav extends StatefulWidget {
  @override
  _BnavState createState() => _BnavState();
}

class _BnavState extends State<Bnav> {
  int currentTab = 0;
  Widget currentScreen = Ecom();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageStorage(bucket: PageStorageBucket(), child: currentScreen),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Container(
          height: 70,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                MaterialButton(
                    minWidth: 50,
                    onPressed: () {
                      setState(() {
                        currentScreen = Ecom();
                        currentTab = 0;
                      });
                    },
                    child: Icon(
                      Icons.home,
                      size: 35,
                      color: currentTab == 0 ? Colors.purple : Colors.grey,
                    )),
                MaterialButton(
                    minWidth: 60,
                    onPressed: () {
                      setState(() {
                        currentScreen = Ecom();
                        currentTab = 1;
                      });
                    },
                    child: Icon(Icons.favorite,
                        size: 35,
                        color: currentTab == 1 ? Colors.purple : Colors.grey)),

                // FloatingActionButton(onPressed: (){},child: Icon(Icons.add)),
                MaterialButton(
                  minWidth: 60,
                  onPressed: () {
                    setState(() {
                      currentScreen = Ecom();
                      currentTab = 2;
                    });
                  },
                ),
                MaterialButton(
                    minWidth: 60,
                    onPressed: () {
                      setState(() {
                        currentScreen = Ecom();
                        currentTab = 2;
                      });
                    },
                    child: Icon(Icons.add_shopping_cart,
                        size: 35,
                        color: currentTab == 2 ? Colors.purple : Colors.grey)),
                MaterialButton(
                    minWidth: 60,
                    onPressed: () {
                      setState(() {
                        currentScreen = Ecom();
                        currentTab = 3;
                      });
                    },
                    child: Icon(Icons.person,
                        size: 35,
                        color: currentTab == 3 ? Colors.purple : Colors.grey)),
              ]),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        width: 70,
        height: 70,
        child: FloatingActionButton(
          backgroundColor: Colors.purple,
          onPressed: () {},
          child: Icon(
            Icons.search,
            size: 35,
          ),
        ),
      ),
    );
  }
}
