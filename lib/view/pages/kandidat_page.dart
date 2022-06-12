part of 'pages.dart';

class KandidatPage extends StatefulWidget {
  final int id;

  KandidatPage({required this.id});
  @override
  _KandidatPageState createState() => _KandidatPageState();
}

class _KandidatPageState extends State<KandidatPage> {
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top + kToolbarHeight,
              left: 40,
            ),
            child: Text(
              'widget.id.',
              style: TextStyle(
                letterSpacing: 1.3,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25,
                height: 1.3,
              ),
            ),
          ),
          Expanded(
            child: Consumer<KandidatProvider>(builder: (context, data, _) {
              return PageView.builder(
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
                          Image.network(
                            data.kandidat.elementAt(index).foto ?? '',
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.cover,
                            alignment:
                                Alignment((pageOffset! - index).abs() * 0.5, 0),
                          ),
                          Positioned(
                            bottom: 60,
                            left: 20,
                            child: AnimatedOpacity(
                              opacity: angle == 0 ? 1 : 0,
                              duration: Duration(
                                milliseconds: 200,
                              ),
                              child: Text(
                                data.kandidat
                                    .elementAt(index)
                                    .noUrut
                                    .toString(),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.2,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
                itemCount: data.kandidat.length,
              );
            }),
          ),
        ],
      ),
    );
  }
}

class VacationBean {
  String url;
  String name;

  VacationBean(this.url, this.name);

  static List<VacationBean> generate() {
    return [
      VacationBean("assets/images/1.jpg", "Japan"),
      VacationBean("assets/images/2.jpg", "Franch"),
      VacationBean("assets/images/3.jpg", "Paris"),
      VacationBean("assets/images/4.jpg", "London"),
      VacationBean("assets/images/5.jpg", "China"),
    ];
  }
}
