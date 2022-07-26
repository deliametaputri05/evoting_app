part of 'pages.dart';

class QuickCountPage extends StatefulWidget {
  const QuickCountPage({Key? key}) : super(key: key);

  @override
  State<QuickCountPage> createState() => _QuickCountPageState();
}

class _QuickCountPageState extends State<QuickCountPage>
    with TickerProviderStateMixin {
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
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 60, left: 30),
              child: Text(
                "Perhitungan Suara",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
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
                  height: 100,
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
            FutureBuilder<KandidatModel?>(
              future: kandidat.getKandidat(kandidat.idPemira!),
              builder: (context, snapshot) {
                log.log(snapshot.connectionState.toString());
                if (kandidat.loadingKandidat == LoadingStatus.error)
                  return Center(
                    child: Text('Terjadi kesalahan'),
                  );
                if (kandidat.kandidat.isNotEmpty)
                  return Expanded(
                    child: PageView.builder(
                      controller: pageController,
                      itemBuilder: (context, index) {
                        double scale = max(
                            viewportFraction,
                            (1 - (pageOffset! - index).abs()) +
                                viewportFraction);

                        double angle = (pageOffset! - index).abs();

                        if (angle > 0.5) {
                          angle = 1 - angle;
                        }
                        return Container(
                          // width: 200,
                          padding: EdgeInsets.only(
                            right: 10,
                            left: 20,
                            top: 100 - scale * 25,
                            bottom: 50,
                          ),
                          child: Transform(
                            transform: Matrix4.identity()
                              ..setEntry(
                                3,
                                2,
                                0.001,
                              )
                              ..rotateY(angle),
                            alignment: Alignment.center,
                            child: Stack(
                              children: <Widget>[
                                InkWell(
                                  onTap: () {
                                    Get.to(
                                      () => KandidatDetailsPage(
                                        kandidat: kandidat.kandidat[index],
                                      ),
                                    );
                                  },
                                  hoverColor: Colors.grey,
                                  splashFactory: InkSplash.splashFactory,
                                  child: Image.network(
                                    kandidat.kandidat.elementAt(index).foto ??
                                        '',
                                    width: MediaQuery.of(context).size.width,
                                    fit: BoxFit.cover,
                                    alignment: Alignment(
                                        (pageOffset! - index).abs() * 0.5, 0),
                                  ),
                                ),
                                Positioned(
                                  bottom: 50,
                                  left:
                                      MediaQuery.of(context).size.width * 0.25,
                                  child: AnimatedOpacity(
                                      opacity: angle == 0 ? 1 : 0,
                                      duration: Duration(
                                        milliseconds: 200,
                                      ),
                                      child: Column(children: [
                                        Text(
                                          'Hasil Suara',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                          ),
                                        ),
                                        Text(
                                          kandidat.kandidat
                                              .elementAt(index)
                                              .jumlahSuara
                                              .toString(),
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ])),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      itemCount: kandidat.kandidat.length,
                    ),
                  );
                else
                  return Center(
                    child: CircularProgressIndicator(),
                  );
              },
            )
          ],
        );
      }),
    );
  }
}
