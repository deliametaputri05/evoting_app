part of 'pages.dart';

class PemiraPage extends StatefulWidget {
  const PemiraPage({Key? key}) : super(key: key);

  @override
  State<PemiraPage> createState() => _PemiraPageState();
}

class _PemiraPageState extends State<PemiraPage> {
  @override
  void initState() {
    Provider.of<PemiraProvider>(context, listen: false).getPemira('1');
    Provider.of<OrmawaProvider>(context, listen: false).getOrmawa();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Consumer<PemiraProvider>(builder: (context, data, _) {
        return ListView(
          children: [
            SizedBox(height: 20),
            Container(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Container(
                          child: Image.asset(
                            'assets/logo_evote.png',
                            width: 55,
                            height: 55,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'E-Voting',
                          style: blackFontStyle1.copyWith(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Organisasi Mahasiswa',
                        style: greyFontStyle.copyWith(fontSize: 15),
                      ),
                    ),
                  ),
                  Consumer<OrmawaProvider>(builder: (context, data, _) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: 100,
                      width: double.infinity,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: data.ormawa.map((e) {
                            return OrmawaCard(
                              ormawaModel: e,
                            );
                          }).toList(),
                        ),
                      ),
                    );
                  }),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Pemilihan Raya',
                        style: greyFontStyle.copyWith(fontSize: 15),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  if (data.loadingPemira == LoadingStatus.loading)
                    Center(
                      child: CircularProgressIndicator(),
                    ),
                  if (data.loadingPemira == LoadingStatus.error)
                    Center(
                      child: Text('Terjadi kesalahan'),
                    ),
                  if (data.loadingPemira == LoadingStatus.loaded)
                    Container(
                      width: double.infinity,
                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: Column(
                          children: data.pemira.map((e) {
                            return PemiraCard(
                              pemiraModel: e,
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        );
      }),
    );
  }
}
