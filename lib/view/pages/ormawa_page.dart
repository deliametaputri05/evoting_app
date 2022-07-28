part of 'pages.dart';

class OrmawaPage extends StatefulWidget {
  final OrmawaModel ormawa;

  OrmawaPage({required this.ormawa});
  @override
  State<OrmawaPage> createState() => _OrmawaPageState();
}

class _OrmawaPageState extends State<OrmawaPage> {
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
              widget.ormawa.label ?? '',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 15),
            )),
        backgroundColor: Colors.grey[50],
        body: SingleChildScrollView(
            child: Center(
                child: Column(children: [
          SizedBox(
            height: 30,
          ),
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                widget.ormawa.logo ?? '',
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
            widget.ormawa.nama ?? '',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            '(${widget.ormawa.label ?? ''})',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      // width: 100,
                      child: Column(children: [
                    Container(
                        width: 300,
                        child: Text(
                          widget.ormawa.deskripsi ?? '',
                          style: TextStyle(
                            fontSize: 13,
                          ),
                          textAlign: TextAlign.justify,
                        )),
                  ])),
                ],
              ),
            ]),
          )
        ]))));
  }
}
