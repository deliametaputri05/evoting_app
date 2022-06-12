part of 'pages.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
            Text(
              'Verifikasi Wajah',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () => Get.to(() => FormLoginPage()),
                child: Text('Login')),
          ],
        ),
      ),
    );
  }
}
