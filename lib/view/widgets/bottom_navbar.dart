part of 'widgets.dart';

class BottomNavbar extends StatefulWidget {
  final int selectedIndex;
  final Function(int index) onTap;

  BottomNavbar({this.selectedIndex = 0, required this.onTap});

  @override
  _BottomNavbarState createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [PemiraPage(), CountPage(), ProfilePage()];

  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _container[_bottomNavCurrentIndex],
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 10, left: 8, right: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            ),
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.blue[800]!,
              hoverColor: mainColor,
              haptic: true,
              gap: 8,
              activeColor: Colors.black,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.blue.withOpacity(0.3),
              color: Colors.black,
              tabs: [
                GButton(
                  icon: Icons.home_outlined,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.bar_chart_outlined,
                  text: 'Quick Count',
                ),
                GButton(
                  icon: Icons.person_outline,
                  text: 'Profile',
                ),
              ],
              selectedIndex: _bottomNavCurrentIndex,
              onTabChange: (index) {
                setState(() {
                  _bottomNavCurrentIndex = index;
                  switch (index) {
                    case 0:
                      {}
                      break;
                    case 1:
                      {}
                  }
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
