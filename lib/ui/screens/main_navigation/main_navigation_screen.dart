import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:openime/configs/images.dart';
import 'package:openime/ui/screens/home/home_screen.dart';
import 'package:openime/ui/screens/search/search_screen.dart';
import 'package:openime/ui/screens/watch_list/watch_list_screen.dart';

import '../../../configs/colors.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.dark,
      body: Builder(
        builder: (context) {
          switch (index) {
            case 0:
              return HomeScreen();
            case 1:
              return SearchScreen();
            case 2:
              return WatchListScreen();
            default:
              return HomeScreen();
          }
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.blue,
        unselectedItemColor: AppColors.unselectedItem,
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppImages.home,
              semanticsLabel: 'Home',
              colorFilter: ColorFilter.mode(
                index == 0 ? AppColors.blue : AppColors.unselectedItem,
                BlendMode.srcIn,
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppImages.search,
              semanticsLabel: 'Search anime',
              colorFilter: ColorFilter.mode(
                index == 1 ? AppColors.blue : AppColors.unselectedItem,
                BlendMode.srcIn,
              ),
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppImages.bookmark,
              semanticsLabel: 'Watch list',
              colorFilter: ColorFilter.mode(
                index == 2 ? AppColors.blue : AppColors.unselectedItem,
                BlendMode.srcIn,
              ),
            ),
            label: 'Watch list',
          ),
        ],
      ),
    );
  }
}
