import 'package:flutter/material.dart';
import 'package:amazonbrowser/utils/navigation_font_icon_icons.dart';

class HomePage extends StatelessWidget {
  final app_logo = [
    'Facebook',
    'Dribbble',
    'Youtube',
    'LinkedIn',
    'Instagram',
    'Github',
    'Trello',
  ];

  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size; // get screen size (height)

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ///////////////// Search bar and image section /////////////////
          Stack(
            children: [
              Container(
                height: size.height * 0.42,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/mountain1.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 50),
                    Text(
                      'AMAZON',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                      ),
                    ), // Text
                    SizedBox(height: 135),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Container(
                        child: Row(
                          children: [
                            Flexible(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Search or enter address',
                                  hintStyle: TextStyle(color: Color.fromRGBO(216, 216, 216, 1)),
                                  filled: true,
                                  fillColor: Colors.white,
                                  hoverColor: Color.fromRGBO(250, 250, 250, 1),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                    ),
                                    borderSide: BorderSide.none,
                                  ), // OutlineInputBorder
                                ), // InputDecoration
                              ), // TextField
                            ), // Flexible
                            Container(
                              height: 53,
                              width: 100,
                              color: Colors.white,
                              // decoration: BoxDecoration(
                              //   borderRadius: BorderRadius.only(
                              //     topRight: Radius.circular(10),
                              //     bottomRight: Radius.circular(10),
                              //   ),
                              // ),
                              child: Row(
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.mic_none),
                                    color: Color.fromRGBO(175, 175, 177, 1),
                                    onPressed: () {},
                                  ),
                                  VerticalDivider(
                                    // for vertical divider between icons
                                    color: Color.fromRGBO(216, 216, 216, 1),
                                    thickness: 2,
                                    indent: 15, // indent from top
                                    endIndent: 15, // indent from bottom
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.search),
                                    color: Color.fromRGBO(175, 175, 177, 1),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ), // Container
                          ],
                        ), // Row
                      ), // Container
                    ), // Padding
                  ],
                ), // Column
              ), // Container
            ],
          ), // Stack
          ///////////////// Favourites /////////////////
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Favourites',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(45, 46, 48, 1),
              ),
            ), // Text
          ), // Padding

          SizedBox(height: 10),
          Expanded(
            child: GridView.count(
              padding: EdgeInsets.symmetric(horizontal: 4),
              crossAxisCount: 4,
              crossAxisSpacing: 0,
              mainAxisSpacing: 12,
              // physics: NeverScrollableScrollPhysics(),
              // childAspectRatio: 1.491,
              children: [
                for (String app in app_logo)
                  Column(
                    children: [
                      Card(
                        color: Colors.white,
                        // shadowColor: Colors.white,
                        elevation: 0.5,
                        shape: RoundedRectangleBorder(
                          // for adding radius to card
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Image.asset('assets/icons/${app}.png', fit: BoxFit.cover),
                        ),
                      ),
                      Text('${app}', style: TextStyle(color: Color.fromRGBO(120, 121, 123, 1))),
                    ],
                  ), // Column
                Column(
                  children: [
                    Card(
                      color: Color.fromRGBO(233, 237, 238, 1),
                      elevation: 0.5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () {},
                          color: Color.fromRGBO(186, 187, 189, 1),
                          iconSize: 35,
                        ),
                      ),
                    ),
                  ],
                ), // Column
              ],
            ), // GridView.count
          ), // Expanded

          ///////////////// Article for you /////////////////
          Divider(color: Color.fromRGBO(241, 241, 241, 1), thickness: 1), // for horizontal divider
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Articles for you',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(45, 46, 48, 1),
              ),
            ), // Text
          ), // Padding
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'The feed is personalized to your preferences.',
              style: TextStyle(
                color: Color.fromRGBO(202, 204, 203, 1),
              ),
            ), // Text
          ), // Padding
        ],
      ), // Column
      ///////////////// Bottom navigation bar /////////////////
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Color.fromRGBO(253, 253, 253, 1),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(NavigationFontIcon.left, size: 18, color: Color.fromRGBO(123, 123, 123, 1)),
            label: 'Back',
          ),
          BottomNavigationBarItem(
            icon: Icon(NavigationFontIcon.right, size: 18, color: Color.fromRGBO(123, 123, 123, 1)),
            label: 'Next',
          ),
          BottomNavigationBarItem(
            icon: Icon(NavigationFontIcon.home, color: Color.fromRGBO(69, 69, 73, 1)),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(NavigationFontIcon.tab, color: Color.fromRGBO(123, 123, 123, 1)),
            label: 'Tab',
          ),
          BottomNavigationBarItem(
            icon: Icon(NavigationFontIcon.settings, color: Color.fromRGBO(123, 123, 123, 1)),
            label: 'Setting',
          ),
        ],
        type: BottomNavigationBarType.fixed,
      ), // BottomNavigationBar
    ); // Scaffold
  }
}
