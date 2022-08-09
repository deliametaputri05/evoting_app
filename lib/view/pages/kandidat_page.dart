part of 'pages.dart';

class KandidatPage extends StatefulWidget {
  final int id;
  final PemiraModel pemira;

  KandidatPage({required this.id, required this.pemira});
  @override
  _KandidatPageState createState() => _KandidatPageState();
}

class _KandidatPageState extends State<KandidatPage> {
  GetStorage session = GetStorage();
  PageController? pageController;

  double viewportFraction = 0.8;

  double? pageOffset = 0;

  @override
  void initState() {
    Provider.of<KandidatProvider>(context, listen: false)
        .getKandidat(widget.id);

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
                      onPressed: () => Get.back(),
                    ),
                    Text(
                      'Ayo Vote !',
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
            if (data.loadingKandidat == LoadingStatus.loading)
              Center(
                child: CircularProgressIndicator(),
              ),
            if (data.loadingKandidat == LoadingStatus.error)
              Center(
                child: Text('Terjadi kesalahan'),
              ),
            if (data.loadingKandidat == LoadingStatus.loaded)
              Expanded(
                child: PageView.builder(
                  controller: pageController,
                  itemBuilder: (context, index) {
                    double scale = max(viewportFraction,
                        (1 - (pageOffset! - index).abs()) + viewportFraction);

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
                                data.kandidat!.data!.elementAt(index).foto ??
                                    '',
                                width: MediaQuery.of(context).size.width,
                                fit: BoxFit.cover,
                                alignment: Alignment(
                                    (pageOffset! - index).abs() * 0.5, 0),
                              ),
                            ),
                            Positioned(
                              bottom: 60,
                              left: MediaQuery.of(context).size.width * 0.25,
                              child: AnimatedOpacity(
                                opacity: angle == 0 ? 1 : 0,
                                duration: Duration(
                                  milliseconds: 200,
                                ),
                                child: Column(
                                  children: [
                                    Text(
                                      'No Urut',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                    Text(
                                      data.kandidat!.data!
                                          .elementAt(index)
                                          .noUrut
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

                                    // pemira sudah dimulai
                                    if (DateTime.parse(data
                                                    .kandidat!
                                                    .data![index]
                                                    .pemira!
                                                    .tanggal! +
                                                " " +
                                                data.kandidat!.data![index]
                                                    .pemira!.waktuSelesai!)
                                            .difference(DateTime.now())
                                            .inMinutes >=
                                        0)
                                      Visibility(
                                        visible:
                                            !(data.kandidat?.isVoting ?? false),
                                        child: FloatingActionButton(
                                          onPressed: () {
                                            AwesomeDialog(
                                              context: context,
                                              dialogType: DialogType.INFO,
                                              title: 'Ayo Vote !',
                                              desc:
                                                  'Yakin ingin vote no urut ${data.kandidat!.data!.elementAt(index).noUrut.toString()} ?',
                                              btnCancelOnPress: () {},
                                              btnOkOnPress: () {
                                                setState(() {
                                                  Provider.of<VotingProvider>(
                                                          context,
                                                          listen: false)
                                                      .postVoting(
                                                    data.kandidat!.data!
                                                        .elementAt(index)
                                                        .id!
                                                        .toInt(),
                                                    data.kandidat!.data!
                                                        .elementAt(index)
                                                        .idOrmawa!
                                                        .toInt(),
                                                    session.read('id'),
                                                    data.kandidat!.data!
                                                        .elementAt(index)
                                                        .idPemira!
                                                        .toInt(),
                                                  );
                                                });

                                                showDialog(
                                                    context: context,
                                                    builder: (context) =>
                                                        AlertDialog(
                                                          title:
                                                              Text('Success !'),
                                                          content: Text(
                                                              'Berhasil Voting'),
                                                          actions: <Widget>[
                                                            ElevatedButton(
                                                              child: Text('OK'),
                                                              onPressed: () {
                                                                setState(() {
                                                                  Navigator.pop(
                                                                      context);
                                                                  Get.to(
                                                                      () =>
                                                                          Count(
                                                                            id: widget.id,
                                                                            pemira:
                                                                                widget.pemira,
                                                                          ));
                                                                });
                                                              },
                                                            )
                                                          ],
                                                        ));
                                              },
                                            )..show();
                                          },
                                          heroTag:
                                              '${data.kandidat!.data!.elementAt(index).id}',
                                          backgroundColor: mainColor,
                                          child: Icon(
                                            Icons.check,
                                            color: Colors.white,
                                            size: 40,
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ),
                            if (DateTime.parse(data.kandidat!.data![index]
                                            .pemira!.tanggal! +
                                        " " +
                                        data.kandidat!.data![index].pemira!
                                            .waktuSelesai!)
                                    .difference(DateTime.now())
                                    .inMinutes >=
                                0)
                              Visibility(
                                visible: !(data.kandidat?.isVoting ?? false),
                                child: Positioned(
                                    bottom: 20,
                                    left: MediaQuery.of(context).size.width *
                                        0.17,
                                    child: Text('Klik untuk voting',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            color: mainColor))),
                              ),
                            // pemira belum dimulai
                            if (DateTime.parse(data.kandidat!.data![index]
                                            .pemira!.tanggal! +
                                        " " +
                                        data.kandidat!.data![index].pemira!
                                            .waktuSelesai!)
                                    .difference(DateTime.now())
                                    .inMinutes <=
                                0)
                              Visibility(
                                  visible: !(data.kandidat?.isVoting ?? false),
                                  child: Positioned(
                                    bottom: 20,
                                    left: MediaQuery.of(context).size.width *
                                        0.18,
                                    child: Text(
                                      "Pemira dimulai\n${data.kandidat!.data![index].pemira!.tanggal!}",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          color: mainColor),
                                    ),
                                  )),
                            Visibility(
                              visible: (data.kandidat?.isVoting ?? false),
                              child: Positioned(
                                bottom: 45,
                                left: MediaQuery.of(context).size.width * 0.2,
                                child: Text(
                                  "Sudah Voting",
                                  style: TextStyle(
                                    color: mainColor,
                                    fontWeight: FontWeight.bold,
                                    // fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: data.kandidat!.data!.length,
                ),
              ),
          ],
        );
      }),
    );
  }
}
