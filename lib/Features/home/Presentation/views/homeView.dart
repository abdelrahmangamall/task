import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tune_app/Features/home/Presentation/views/widgets/homeViewBody.dart';
import 'package:tune_app/Features/home/Presentation/views/widgets/moreViewBody.dart';

class HomeView extends StatefulWidget{
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
     int currentIndex=0;
     List<Widget> pages =[
       const HomeViewBody(),
       const moreViewBody(),
     ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
            bottomNavigationBar:
            BottomNavigationBar(
              currentIndex: currentIndex,
              onTap: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  activeIcon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.more_horiz),
                  activeIcon: Icon(Icons.more_horiz_outlined),

                  label: 'More',
                ),
              ],
            ),
      body: pages[currentIndex]
    );
  }
}


