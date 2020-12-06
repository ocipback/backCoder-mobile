import 'package:flutter/material.dart';
import 'package:publish/presentation/Oppotunities/opportunities_page.dart';
import 'package:publish/presentation/auth/acoount_page.dart';
import 'package:publish/presentation/favorite/favorities.dart';
import 'package:publish/presentation/forum/question_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //select page di bottom bar
  PageController _pageController = PageController();
//mode geser4
  final List<Widget> _screens = [
    OpportunitiesPage(),
    ForumPage(),
    FavoritePage(),
    AccountPage(),
  ];

  int _selectindex = 0;

  void _onItemTapped(int itemIndex) {
    _pageController.jumpToPage(itemIndex);
  }

  void _onPageChanged(int pageIndex) {
    setState(() {
      _selectindex = pageIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: _screens,
        controller: _pageController,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            title: Text(
              "Opportunities",
              style: TextStyle(
                color: _selectindex == 0 ? Colors.black : Colors.grey,
              ),
            ),
            icon: Icon(
              Icons.home,
              color: _selectindex == 0 ? Colors.black : Colors.grey,
            ),
          ),
          BottomNavigationBarItem(
            title: Text(
              "Forum",
              style: TextStyle(
                color: _selectindex == 1 ? Colors.black : Colors.grey,
              ),
            ),
            icon: Icon(Icons.chat,
                color: _selectindex == 1 ? Colors.black : Colors.grey),
          ),
          BottomNavigationBarItem(
              title: Text(
                "Favorite",
                style: TextStyle(
                  color: _selectindex == 2 ? Colors.black : Colors.grey,
                ),
              ),
              icon: Icon(
                Icons.favorite,
                color: _selectindex == 2 ? Colors.black : Colors.grey,
              )),
          BottomNavigationBarItem(
              title: Text(
                "Account",
                style: TextStyle(
                  color: _selectindex == 3 ? Colors.black : Colors.grey,
                ),
              ),
              icon: Icon(
                Icons.person,
                color: _selectindex == 3 ? Colors.black : Colors.grey,
              )),
        ],
      ),
    );
  }
}
