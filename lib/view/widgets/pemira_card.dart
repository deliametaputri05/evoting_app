part of 'widgets.dart';

class PemiraCard extends StatelessWidget {
  final PemiraModel pemiraModel;

  PemiraCard({required this.pemiraModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(() => KandidatPage(
            id: pemiraModel.ormawa!.id ?? 1,
            pemira: pemiraModel,
          )),
      child: Container(
        width: 340.0,
        height: 220.0,
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8))),
          elevation: 3,
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Row(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 80,
                          // color: Colors.grey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                pemiraModel.tanggal ?? '',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                'Mulai',
                                style: TextStyle(fontSize: 11),
                              ),
                              Text(
                                pemiraModel.waktuMulai ?? 'Waktu Mulai',
                                style: TextStyle(
                                    fontSize: 11, fontWeight: FontWeight.w300),
                              ),
                              Text(
                                'Selesai',
                                style: TextStyle(fontSize: 11),
                              ),
                              Text(
                                pemiraModel.waktuSelesai ?? 'Waktu Selesai',
                                style: TextStyle(
                                    fontSize: 11, fontWeight: FontWeight.w300),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: CachedNetworkImage(
                                      imageUrl: pemiraModel.ormawa?.logo ?? '',
                                      height: 50,
                                      width: 50,
                                      fit: BoxFit.cover,
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 200,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 200,
                                height: 100,
                                decoration: BoxDecoration(
                                    // borderRadius: BorderRadius.circular(8),
                                    ),
                                child: ClipRRect(
                                    child: CachedNetworkImage(
                                  imageUrl: pemiraModel.foto ?? '',
                                  fit: BoxFit.cover,
                                )),
                              ),
                              Text(pemiraModel.nama ?? 'Nama Pemira',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500)),
                              Text(pemiraModel.deskripsi ?? 'Deskripsi Pemira',
                                  style: TextStyle(fontSize: 10)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
