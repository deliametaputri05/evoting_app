part of 'pages.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  GetStorage session = GetStorage();
  double _headerHeight = 180;
  @override
  void initState() {
    Provider.of<PemiraProvider>(context, listen: false)
        .getPemira(session.read('id_jurusan'))
        .then((value) {
      Provider.of<KandidatProvider>(context, listen: false)
          .setIdPemira(value?.id ?? 1);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SingleChildScrollView(
          child: Stack(
        children: [
          Container(
            height: _headerHeight,
            child: HeaderWidget(_headerHeight, false, Icons.house_rounded),
          ),
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
                  height: 5,
                ),
                Text(
                  session.read('nama'),
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Mahasiswa",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),

                Consumer<PemiraProvider>(builder: (context, data, _) {
                  return Column(children: [
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
                          // margin: EdgeInsets.symmetric(horizontal: 5),
                          // padding: EdgeInsets.symmetric(horizontal: 5),
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
                                  child: LabelCard(
                                    pemiraModel: e,
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        ),
                      ),
                  ]);
                }),
                // SizedBox(
                //   height: 5,
                // ),
                Container(
                  width: 335,
                  padding: EdgeInsets.only(left: 10, right: 10, top: 2),
                  child: Column(children: [
                    Card(
                      elevation: 5,
                      child: Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.all(10),
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
                  // onTap: () {
                  //   session.remove('id');
                  //   session.remove('id_jurusan');
                  //   session.remove('foto');
                  //   session.remove('nama');
                  //   session.remove('nim');
                  //   session.remove('kelas');
                  //   session.remove('angkatan');
                  //   session.remove('sudah_vote');

                  //   Get.offAll(FormLoginPage());
                  // },
                  onTap: () {
                    AwesomeDialog(
                        context: context,
                        dialogType: DialogType.INFO,
                        title: 'Yakin ingin logout?',
                        // desc:
                        // 'Yakin ingin vote kandidat ${data.kandidat!.data!.elementAt(index).noUrut.toString()} ?',
                        btnCancelOnPress: () {},
                        btnOkOnPress: () {
                          session.remove('id');
                          session.remove('id_jurusan');
                          session.remove('foto');
                          session.remove('nama');
                          session.remove('nim');
                          session.remove('kelas');
                          session.remove('angkatan');
                          session.remove('sudah_vote');

                          Get.offAll(FormLoginPage());
                        })
                      ..show();
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      // border: Border.all(color: Colors.blueAccent, width: 2),
                      color: mainColor,
                    ),
                    // padding: EdgeInsets.symmetric(vertical: 20),
                    alignment: Alignment.center,
                    child: Text("Logout",
                        style: TextStyle(
                            color: Colors.white,
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
