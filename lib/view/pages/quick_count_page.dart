part of 'pages.dart';

class QuickCountPage extends StatelessWidget {
  const QuickCountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/vector_4.png',
              width: 200,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Quick Count Page',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
