import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:walletui/screen/add_screen.dart';
import 'package:walletui/screen/card_screen.dart';
import 'package:walletui/screen/home_screen.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
//widget list k index onujay controll krbe
  final controller= PersistentTabController(initialIndex: 0);

  //widget list
  List<Widget> _buildScreens()
  {
    return [
      HomeScreen(),
      AddScreen(),
      CardScreen()

    ];
  }

  List<PersistentBottomNavBarItem>_naveBaritem(){
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),

        inactiveIcon:Icon(Icons.home,color: Colors.grey,),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.add,color: Colors.white,),
         activeColorPrimary: Colors.green,
        inactiveIcon:Icon(Icons.add,color: Colors.white,),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.credit_card),

        inactiveIcon:Icon(Icons.credit_card,color: Colors.grey,),
      ),

    ];
  }
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      controller: controller,
      context,
      screens: _buildScreens(),
      items: _naveBaritem(),

      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(1),
      ),
      navBarStyle: NavBarStyle.style15,
    );
  }
}