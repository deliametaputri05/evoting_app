part of 'pages.dart';

class ProfileCalonKetuaPage extends StatefulWidget {
  final DataKandidat kandidat;

  ProfileCalonKetuaPage({required this.kandidat});
  @override
  State<ProfileCalonKetuaPage> createState() => _ProfileCalonKetuaPageState();
}

class _ProfileCalonKetuaPageState extends State<ProfileCalonKetuaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () => Get.back(),
          ),
          title: Text(
            'Profile Calon Ketua',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w500, fontSize: 15),
          )),
      backgroundColor: Colors.grey[50],
      body: Container(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    widget.kandidat.calonKetua?.foto ?? '',
                    width: 250,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                widget.kandidat.calonKetua?.nama ?? '',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                'Calon Ketua',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[400],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Container(
                          width: 100,
                          child: Column(
                            children: [
                              Text(
                                widget.kandidat.calonKetua?.nim.toString() ??
                                    '',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Nim',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[400],
                                ),
                              ),
                            ],
                          )),
                      Container(
                          width: 100,
                          child: Column(
                            children: [
                              Text(
                                widget.kandidat.calonKetua?.kelas ?? '',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Kelas',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[400],
                                ),
                              ),
                            ],
                          )),
                      Container(
                          width: 100,
                          child: Column(
                            children: [
                              Text(
                                widget.kandidat.calonKetua?.angkatan ?? '',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Angkatan',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[400],
                                ),
                              ),
                            ],
                          )),
                    ]),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Alamat',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Container(
                        width: 250,
                        child: Text(
                          '${widget.kandidat.calonKetua?.alamat ?? ''}',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[400],
                          ),
                          textAlign: TextAlign.center,
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Moto',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                        width: 250,
                        child: Text(
                          '" ${widget.kandidat.calonKetua?.moto ?? ''} "',
                          style: TextStyle(
                            fontSize: 13,
                            fontStyle: FontStyle.italic,
                          ),
                          textAlign: TextAlign.center,
                        )),
                  ])),
            ],
          ),
        ),
      ),
    );
  }
}
