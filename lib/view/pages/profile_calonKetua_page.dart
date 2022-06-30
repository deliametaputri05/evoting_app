part of 'pages.dart';

class ProfileCalonKetuaPage extends StatefulWidget {
  final KandidatModel kandidat;

  ProfileCalonKetuaPage({required this.kandidat});
  @override
  State<ProfileCalonKetuaPage> createState() => _ProfileCalonKetuaPageState();
}

class _ProfileCalonKetuaPageState extends State<ProfileCalonKetuaPage> {
  final double expanded_height = 400;
  final double rounded_container_height = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          title: Text(
            'Profile Calon Ketua',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w500, fontSize: 15),
          )),
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
