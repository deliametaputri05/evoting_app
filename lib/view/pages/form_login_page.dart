part of 'pages.dart';

class FormLoginPage extends StatefulWidget {
  @override
  _FormLoginPageState createState() => _FormLoginPageState();
}

class _FormLoginPageState extends State<FormLoginPage> {
  File? image;
  double _headerHeight = 180;
  TextEditingController _nimController = TextEditingController();
  Future pickImageCamera() async {
    try {
      final image = await ImagePicker().pickImage(
          source: ImageSource.camera,
          preferredCameraDevice: CameraDevice.front);

      if (image == null) return;

      final imageTemp = File(image.path);

      setState(() => this.image = imageTemp);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  Future getFacecognition() async {
    await FacerecognitionRemoteData()
        .getFacecognition(image!, _nimController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: _headerHeight,
                child: HeaderWidget(
                  _headerHeight,
                  false,
                  Icons.camera_alt,
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Positioned(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(8),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.height * 0.23,
                            height: MediaQuery.of(context).size.height * 0.23,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              shape: BoxShape.rectangle,
                            ),
                            child: Container(
                              width: MediaQuery.of(context).size.height * 0.23,
                              height: MediaQuery.of(context).size.height * 0.23,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: image != null
                                    ? Image.file(
                                        image!,
                                        fit: BoxFit.cover,
                                      )
                                    : Icon(
                                        Icons.person,
                                        size: 150,
                                        color: Colors.grey[300],
                                      ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: -5,
                            right: -5,
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: mainColor,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Align(
                                  child: IconButton(
                                iconSize: 20,
                                icon: Icon(Icons.camera_alt_rounded,
                                    color: Colors.white),
                                onPressed: pickImageCamera,
                              )),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: TextField(
                    controller: _nimController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        icon: Icon(
                          Icons.key,
                          color: mainColor,
                        ),
                        hintText: 'NIM',
                        border: InputBorder.none),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // ElevatedButton(onPressed: () {}, child: Text('Masuk'))
              InkWell(
                onTap: () => Get.to(() => SuccesPage()),
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: mainColor,
                  ),
                  // padding: EdgeInsets.symmetric(vertical: 20),
                  alignment: Alignment.center,
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
