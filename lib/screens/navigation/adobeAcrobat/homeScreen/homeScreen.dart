import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:take_home_challenge_submission/screens/navigation/adobeAcrobat/recentFiles/recentFiles.dart';
import 'package:take_home_challenge_submission/utils/strings.dart';
import 'package:take_home_challenge_submission/utils/theme.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  _getTabBar() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: TabBar(
        labelStyle: TextStyle(fontSize: 20.0),
        unselectedLabelColor: OurTheme().lightGrey,
        indicatorColor: OurTheme().darkerGrey,
        tabs: <Widget>[
          Tab(
            child: Text(
              'Recent',
              textAlign: TextAlign.left,
            ),
          ),
          Tab(
            text: 'Starred',
          ),
        ],
        controller: _tabController,
      ),
    );
  }

  TabBarView _getTabBarView(tabs) {
    return TabBarView(
      children: tabs,
      controller: _tabController,
    );
  }

  int _currentIndex = 0;
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(FontAwesomeIcons.plus),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        onTap: onTabTapped, // new
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.file_present),
            label: 'Files',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Shared',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
        ],
      ),
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
          child: Image.asset(
            data.logo,
            height: 5,
            width: 5,
          ),
        ),
        elevation: 0.0,
        actions: [
          IconButton(
              icon: Icon(FontAwesomeIcons.bell, color: OurTheme().lightGrey),
              onPressed: () {}),
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: IconButton(
                icon: Icon(
                  FontAwesomeIcons.userCircle,
                  color: OurTheme().lightGrey,
                ),
                onPressed: () {}),
          ),
        ],
      ),
      body: ListView(
        primary: false,
        children: [
          SafeArea(
            child: _body(),
          ),
        ],
      ),
    );
  }

  Widget _body() {
    return Padding(
      padding: EdgeInsets.only(top: 40.0, left: 15.0, right: 15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome back, Ashley',
            textAlign: TextAlign.start,
            style: TextStyle(
                color: OurTheme().darkerGrey,
                fontSize: 28.0,
                fontWeight: FontWeight.w600),
          ),
          _getTabBar(),
          //  MediaQuery.of(context).size.height *  0.55699481865284974093264248704663
          Container(
            height: MediaQuery.of(context).size.height - 100,
            child: _getTabBarView(
              <Widget>[
                RecentFiles(),
                Icon(Icons.settings),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
