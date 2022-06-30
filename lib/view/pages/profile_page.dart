part of 'pages.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    GetStorage session = GetStorage();
    double _headerHeight = 180;
    return Scaffold(
      backgroundColor: Colors.grey[50],
      // appBar: AppBar(
      //     elevation: 0.5,
      //     iconTheme: IconThemeData(color: Colors.white),
      //     flexibleSpace: Container(
      //       decoration: BoxDecoration(
      //           gradient: LinearGradient(
      //               begin: Alignment.topLeft,
      //               end: Alignment.bottomRight,
      //               colors: <Color>[
      //             Theme.of(context).primaryColor,
      //             Theme.of(context).accentColor,
      //           ])),
      //     ),
      //     actions: [Icon(Icons.notifications)]),
      body: SingleChildScrollView(
          child: Stack(
        children: [
          Container(
            height: _headerHeight,
            child: HeaderWidget(_headerHeight, false, Icons.house_rounded),
          ),
          // Container(
          //     alignment: Alignment.topRight,
          //     padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
          //     child: IconButton(
          //         // highlightColor: Colors.amber,
          //         hoverColor: Colors.amber,
          //         onPressed: () {},
          //         icon: Icon(
          //           Icons.exit_to_app_outlined,
          //           color: Colors.white,
          //         ))),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 80),
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Column(
              children: [
                Container(
                  width: 130,
                  height: 130,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    // border: Border.all(width: 1, color: Colors.white),
                    // color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 20,
                        offset: const Offset(5, 5),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image(
                      image: NetworkImage(
                        session.read('foto'),
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  session.read('nama'),
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                session.read('sudah_vote') == null
                    ? Container(
                        padding: EdgeInsets.fromLTRB(10, 1, 10, 1),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          'Belum Vote',
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      )
                    : Container(
                        padding: EdgeInsets.fromLTRB(10, 1, 10, 1),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          'Sudah Vote : ' +
                              session.read('sudah_vote').toString() +
                              "x",
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 335,
                  padding: EdgeInsets.all(10),
                  child: Column(children: [
                    Card(
                      elevation: 5,
                      child: Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.all(20),
                        child: Column(children: [
                          ...ListTile.divideTiles(color: mainColor, tiles: [
                            ListTile(
                              leading: Icon(Icons.person_outline,
                                  color: Colors.black),
                              title: Text(
                                "NIM",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                session.read('nim').toString(),
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w500),
                              ),
                            ),
                            ListTile(
                              leading: Icon(Icons.bookmark_outline,
                                  color: Colors.black),
                              title: Text(
                                "Kelas",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                session.read('kelas'),
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w500),
                              ),
                            ),
                            ListTile(
                              leading: Icon(Icons.date_range_outlined,
                                  color: Colors.black),
                              title: Text(
                                "Angkatan",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                session.read('angkatan'),
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w500),
                              ),
                            ),
                            ListTile(
                              leading: Icon(Icons.school_outlined,
                                  color: Colors.black),
                              title: Text(
                                "Jurusan",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                session.read('id_jurusan') == 1
                                    ? 'D3 Teknik Informatika'
                                    : session.read('id_jurusan') == 2
                                        ? 'D4 Rekayasa Perangkat Lunak'
                                        : session.read('id_jurusan') == 3
                                            ? 'D3 Teknik Mesin'
                                            : session.read('id_jurusan') == 4
                                                ? 'D4 Perancangan Manufaktur'
                                                : session.read('id_jurusan') ==
                                                        5
                                                    ? 'D3 Teknik Pendingin dan Tata Udara'
                                                    : 'D3 Keperawatan',
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ])
                        ]),
                      ),
                    ),
                  ]),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    session.remove('id');
                    session.remove('id_jurusan');
                    session.remove('foto');
                    session.remove('nama');
                    session.remove('nim');
                    session.remove('kelas');
                    session.remove('angkatan');
                    session.remove('sudah_vote');

                    Get.offAll(FormLoginPage());
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.blueAccent, width: 2),
                      color: Colors.white,
                    ),
                    // padding: EdgeInsets.symmetric(vertical: 20),
                    alignment: Alignment.center,
                    child: Text("Logout",
                        style: TextStyle(
                            color: mainColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w500)),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
