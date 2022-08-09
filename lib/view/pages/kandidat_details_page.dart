part of 'pages.dart';

class KandidatDetailsPage extends StatefulWidget {
  final DataKandidat kandidat;

  KandidatDetailsPage({required this.kandidat});
  @override
  State<KandidatDetailsPage> createState() => _KandidatDetailsPageState();
}

class _KandidatDetailsPageState extends State<KandidatDetailsPage> {
  final double expanded_height = 400;
  final double rounded_container_height = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          CustomScrollView(
            slivers: <Widget>[
              _buildSliverHead(),
              SliverToBoxAdapter(
                child: _buildDetail(),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top,
            ),
            child: SizedBox(
              height: kToolbarHeight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildSliverHead() {
    return SliverPersistentHeader(
      delegate: DetailSliverDelegate(
        expanded_height,
        widget.kandidat,
        rounded_container_height,
      ),
    );
  }

  Widget _buildDetail() {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _buildUserInfo(),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 30,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Visi",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    // letterSpacing: 1.6,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: Text(
              widget.kandidat.visi ?? '',
              style: TextStyle(
                color: Colors.black,
                // height: 1.4,
                fontSize: 13,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 30,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Misi",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    // letterSpacing: 1.6,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: Text(
              widget.kandidat.misi ?? '',
              style: TextStyle(
                color: Colors.black,
                fontSize: 13,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  Widget _buildUserInfo() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 2),
      child: Column(
        children: [
          // Text(
          //   'No Urut ' + widget.kandidat.noUrut.toString(),
          //   style: TextStyle(
          //     color: Colors.black,
          //     fontSize: 15,
          //     fontWeight: FontWeight.bold,
          //   ),
          // ),
          // SizedBox(
          //   height: 10,
          // ),
          InkWell(
            hoverColor: Colors.blue,
            focusColor: Colors.red,
            splashColor: Colors.indigo,
            onTap: () {
              Get.to(() => ProfileCalonKetuaPage(kandidat: widget.kandidat));
            },
            child: Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.network(
                    widget.kandidat.calonKetua?.foto ?? '',
                    width: 70,
                    height: 70,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        widget.kandidat.calonKetua?.nama ?? '',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Calon Ketua",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          if (widget.kandidat.calonWakil == null) Text(''),
          if (widget.kandidat.calonWakil != null)
            InkWell(
              hoverColor: Colors.blue,
              focusColor: Colors.red,
              splashColor: Colors.indigo,
              onTap: () {
                Get.to(() => ProfileCalonWakilPage(kandidat: widget.kandidat));
              },
              child: Row(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(
                      widget.kandidat.calonWakil?.foto ?? '',
                      width: 70,
                      height: 70,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          widget.kandidat.calonWakil!.nama ?? '',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Calon Wakil",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          SizedBox(
            height: 10,
          ),
          // InkWell(
          //     onTap: () {
          //       Get.to(() => ProfileKandidatPage(kandidat: widget.kandidat));
          //     },
          //     hoverColor: Colors.blue,
          //     child: Text(
          //       "Lihat Profile",
          //       style: TextStyle(
          //           fontWeight: FontWeight.w500,
          //           color: Colors.indigo,
          //           fontSize: 12),
          //     ))
        ],
      ),
    );
  }
}

class DetailSliverDelegate extends SliverPersistentHeaderDelegate {
  final double expandedHeight;
  final DataKandidat kandidat;
  final double rounded_container_height;

  DetailSliverDelegate(
      this.expandedHeight, this.kandidat, this.rounded_container_height);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
      ),
      child: Stack(
        children: <Widget>[
          Hero(
            tag: kandidat.foto ?? '',
            child: Image.network(
              kandidat.foto ?? '',
              width: MediaQuery.of(context).size.width,
              height: expandedHeight,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: expandedHeight - rounded_container_height - shrinkOffset,
            left: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: rounded_container_height,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
            ),
          ),
          // Positioned(
          //   top: expandedHeight - 120 - shrinkOffset,
          //   left: 30,
          //   child: Container(
          //     color: Colors.blue,
          //     child: Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: <Widget>[
          //         Text(
          //           kandidat.ormawa!.nama ?? '',
          //           style: TextStyle(
          //             color: Colors.white,
          //             fontSize: 15,
          //           ),
          //         ),
          //         Text(
          //           'No Urut ' + kandidat.noUrut.toString(),
          //           style: TextStyle(
          //             color: Colors.white,
          //             fontSize: 15,
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => 0;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
