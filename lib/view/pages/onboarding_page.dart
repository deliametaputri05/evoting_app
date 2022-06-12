part of 'pages.dart';

class OnBoardingPage extends StatelessWidget {
  OnBoardingPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: IntroductionScreen(
        pages: [
          PageViewModel(
            title: 'Ayo Vote !',
            body: 'Gunakan hak suaramu sebaik mungkin untuk memilih',
            image: Image.asset(
              'assets/vector_1.png',
              width: 200,
            ),
            decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: 'E-Voting',
            body:
                'E-voting adalah suatu sistem pemilihan dimana data dicatat, disimpan dan diproses dalam bentuk informasi digital.',
            image: Image.asset(
              'assets/vector_2.png',
              width: 200,
            ),
            decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: 'Pemilihan Raya',
            body:
                'Pemilihan Raya Ketua Organisasi Mahasiswa Politeknik Negeri Indramayu yaitu MPM, \n BEM dan HMJ.',
            image: Image.asset(
              'assets/vector_3.png',
              width: 200,
            ),
            decoration: getPageDecoration(),
          ),
        ],
        done: Text('Masuk'),
        onDone: () => goToHome(context),
        showSkipButton: true,
        skip: Text('Skip', style: TextStyle(color: mainColor)),
        onSkip: () => goToHome(context),
        next: Icon(
          Icons.arrow_forward,
          color: mainColor,
        ),
        dotsDecorator: getDotDecoration(),
        onChange: (index) => print('Page $index selected'),
        // globalBackgroundColor: Theme.of(context).primaryColor,
        // skipFlex: 0,
        // nextFlex: 0,
      ),
    );
  }

  void goToHome(context) => Get.to(() => FormLoginPage());

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 250));

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: Color(0xFFBDBDBD),
        //activeColor: Colors.orange,
        size: Size(10, 10),
        activeSize: Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      );

  PageDecoration getPageDecoration() => PageDecoration(
        titleTextStyle: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
        bodyTextStyle: TextStyle(fontSize: 15),

        // descriptionPadding: EdgeInsets.all(16).copyWith(bottom: 0),
        imagePadding: EdgeInsets.all(24),
        pageColor: Colors.white,
      );
}
