part of 'pages.dart';

class CountPage extends StatefulWidget {
  const CountPage({Key? key}) : super(key: key);

  @override
  State<CountPage> createState() => _CountPageState();
}

class _CountPageState extends State<CountPage> with TickerProviderStateMixin {
  PageController? pageController;

  double viewportFraction = 0.8;

  double? pageOffset = 0;
  GetStorage session = GetStorage();

  @override
  void initState() {
    Provider.of<PemiraProvider>(context, listen: false)
        .getPemira(session.read('id_jurusan'))
        .then((value) {
      Provider.of<KandidatProvider>(context, listen: false)
          .setIdPemira(value?.id ?? 1);
    });
    super.initState();
    pageController =
        PageController(initialPage: 0, viewportFraction: viewportFraction)
          ..addListener(() {
            setState(() {
              pageOffset = pageController!.page;
            });
          });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Container(
      child: Consumer2<PemiraProvider, KandidatProvider>(
          builder: (context, data, kandidat, _) {
        return Padding(
          padding: EdgeInsets.only(top: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Padding(
              //   padding: EdgeInsets.only(top: 60, left: 30),
              //   child: Row(
              //     children: [
              //       Container(
              //         child: Image.asset(
              //           'assets/logo_evote.png',
              //           width: 55,
              //           height: 55,
              //         ),
              //       ),
              //       SizedBox(
              //         width: 10,
              //       ),
              //       Text(
              //         'Quick Count',
              //         style: blackFontStyle1.copyWith(
              //             fontSize: 17, fontWeight: FontWeight.w500),
              //       ),
              //     ],
              //   ),
              // ),
              Center(
                child: Container(
                  child: Image.asset(
                    'assets/vector_2.png',
                    width: 200,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                  child: Text('Hasil Perhitungan Suara',
                      style: blackFontStyle1.copyWith(
                          fontSize: 16, fontWeight: FontWeight.bold))),
              SizedBox(
                height: 10,
              ),
              Center(
                  child: Text(
                'Klik tombol ormawa\nuntuk melihat hasil perhitungan suara\nsesuai kandidat pada ormawa yang dipilih',
                style: blackFontStyle1.copyWith(
                    fontSize: 13, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              )),
              SizedBox(
                height: 30,
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
                Center(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 200,
                    // width: double.infinity,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: data.pemira.map((e) {
                          return InkWell(
                            onTap: () {
                              Provider.of<KandidatProvider>(context,
                                      listen: false)
                                  .setIdPemira(e.id ?? 1);
                            },
                            child: LogoCard(
                              pemiraModel: e,
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        );
      }),
    );
  }
}
