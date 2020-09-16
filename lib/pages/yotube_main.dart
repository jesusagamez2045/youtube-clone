import 'package:flutter/material.dart';
import 'package:youtube_clone/pages/home_page.dart';
import 'package:youtube_clone/pages/library_page.dart';
import 'package:youtube_clone/pages/notification_page.dart';
import 'package:youtube_clone/pages/subscription_page.dart';
import 'package:youtube_clone/pages/trending_page.dart';
import 'package:youtube_clone/utils/responsive.dart';


class YoutubeMain extends StatefulWidget {

  @override
  _YoutubeMainState createState() => _YoutubeMainState();
}

class _YoutubeMainState extends State<YoutubeMain> {
  int _currentIndex = 0;

  _onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  List<Widget> _screens = [
    HomePage(),
    TrendingPage(),
    SubscriptionPage(),
    NotificationPage(),
    LibraryPage()
  ];

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.of(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.grey),
          centerTitle: false,
          elevation: 2,
          backgroundColor: Colors.white,
          title: Image.asset(
            'assets/youtube-logo.png',
            width: responsive.wp(30),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.video_call),
              onPressed: (){},
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: (){},
            ),
            IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: (){},
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: _onTapped,
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.red,
          items: [
            BottomNavigationBarItem(
              title: Text('Home'),
              icon: Icon(Icons.home)
            ),
            BottomNavigationBarItem(
              title: Text('Trending'),
              icon: Icon(Icons.whatshot)
            ),
            BottomNavigationBarItem(
              title: Text('Subscriptions'),
              icon: Icon(Icons.subscriptions)
            ),
            BottomNavigationBarItem(
              title: Text('Notifications'),
              icon: Icon(Icons.notifications)
            ),
            BottomNavigationBarItem(
              title: Text('Library'),
              icon: Icon(Icons.folder)
            ),
          ],
        ),
        body: _screens[_currentIndex],
      ),
    );
  }
}