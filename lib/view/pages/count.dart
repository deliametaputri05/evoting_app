part of 'pages.dart';

class Count extends StatefulWidget {
  final int id;
  final PemiraModel pemira;

  Count({required this.id, required this.pemira});
  @override
  _CountState createState() => _CountState();
}

class _CountState extends State<Count> {
  GetStorage session = GetStorage();
  PageController? pageController;

  double viewportFraction = 0.8;

  double? pageOffset = 0;

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
    return Scaffold(
      backgroundColor: Colors.white,
      body: Consumer<KandidatProvider>(builder: (context, data, _) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).padding.top + kToolbarHeight,
                  left: 40,
                ),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    Text(
                      'Quick Count',
                      style: TextStyle(
                        letterSpacing: 1.3,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        height: 1.3,
                      ),
                    ),
                  ],
                )),
            FutureBuilder<KandidatModel?>(
              future: data.getKandidat(widget.id),
              builder: (context, snapshot) {
                log.log(snapshot.connectionState.toString());
                if (data.loadingKandidat == LoadingStatus.error)
                  return Center(
                    child: Text('Terjadi kesalahan'),
                  );
                if (data.kandidat == null)
                  return Center(
                    child: CircularProgressIndicator(),
                  );

                if (data.kandidat != null)
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
                          padding: EdgeInsets.only(
                            right: 10,
                            left: 20,
                            top: 130 - scale * 25,
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
                                        kandidat: data.kandidat!.data![index],
                                      ),
                                    );
                                  },
                                  hoverColor: Colors.grey,
                                  splashFactory: InkSplash.splashFactory,
                                  child: Image.network(
                                    data.kandidat!.data!
                                            .elementAt(index)
                                            .foto ??
                                        '',
                                    width: MediaQuery.of(context).size.width,
                                    fit: BoxFit.cover,
                                    alignment: Alignment(
                                        (pageOffset! - index).abs() * 0.5, 0),
                                  ),
                                ),
                                Positioned(
                                  bottom: 60,
                                  left:
                                      MediaQuery.of(context).size.width * 0.25,
                                  child: AnimatedOpacity(
                                    opacity: angle == 0 ? 1 : 0,
                                    duration: Duration(
                                      milliseconds: 200,
                                    ),
                                    child: Column(
                                      children: [
                                        Text(
                                          'Hasil Suara',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                          ),
                                        ),
                                        Text(
                                          data.kandidat!.data!
                                              .elementAt(index)
                                              .jumlahSuara
                                              .toString(),
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                      itemCount: data.kandidat!.data!.length,
                    ),
                  );
                else
                  return Center(
                    child: CircularProgressIndicator(),
                  );
              },
            ),
          ],
        );
      }),
    );
  }
}
