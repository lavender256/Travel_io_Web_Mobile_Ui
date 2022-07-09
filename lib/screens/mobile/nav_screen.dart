import 'package:flutter/material.dart';
import 'package:travel_io/screens/find_tour_screen.dart';
import 'package:travel_io/widgets/responsive.dart';
import '../../colors.dart';
import 'home_screen_mobile.dart';

class NavScreen extends StatefulWidget {
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  List<Widget> screens = [HomeScreenMobile(), FindTourScreen(), Scaffold()];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        bottomNavigationBar: Responsive.isMobile(context)
            ? BottomNavigationBar(
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold
          ),
                elevation: 0,
                backgroundColor: Colors.white,
                type: BottomNavigationBarType.fixed,
                selectedItemColor: mainColorTravelIo,
                unselectedItemColor: mainColorTravelIo.withOpacity(.7),
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home), label: "Home"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.search),
                      label: "Find Tour",
                  ),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.menu_book_sharp), label: "Reservation"),
                ],
                currentIndex: selectedIndex,
                onTap: (int index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
              )
            : null,
        body: screens.elementAt(selectedIndex));
  }
}
