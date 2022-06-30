class EndPoint {
  static String baseUrl = "http://192.168.43.86:8000/api";
  static String get faceRecognition =>
      "http://192.168.43.86:5000/mahasiswa/facerecognition";
  static String get getPemira => "$baseUrl/pemira";
  static String get voting => "$baseUrl/voting";
  // static String get getVoting => "$baseUrl/"
  static String get getOrmawa => "$baseUrl/ormawa";
  static String get getKandidat => "$baseUrl/kandidats";
}
