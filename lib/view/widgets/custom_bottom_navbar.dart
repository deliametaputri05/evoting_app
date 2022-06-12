part of 'widgets.dart';

class CustomBottomNavBar extends StatefulWidget {
  final int selectedIndex;
  final Function(int index) onTap;

  CustomBottomNavBar({this.selectedIndex = 0, required this.onTap});

  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [PemiraPage(), QuickCountPage(), ProfilePage()];

  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _container[_bottomNavCurrentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        color: mainColor,
        backgroundColor: Colors.white,
        buttonBackgroundColor: mainColor,
        animationCurve: Curves.bounceInOut,
        animationDuration: Duration(milliseconds: 250),
        height: 55,
        onTap: (index) {
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
        index: _bottomNavCurrentIndex,
        items: <Widget>[
          Icon(
            Icons.home_outlined,
            color: Colors.white,
          ),
          Icon(
            Icons.bar_chart_outlined,
            color: Colors.white,
          ),
          Icon(
            Icons.person_outline,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
