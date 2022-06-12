import 'dart:io';

import 'package:dio/dio.dart';
import 'package:evoting_mobile/constant/endpoint.dart';
import 'package:evoting_mobile/services/network/dio_service.dart';

class FacerecognitionRemoteData extends DioService {
  Future getFacecognition(File file, String nim) async {
    try {
      FormData data = FormData.fromMap({
        "image": await MultipartFile.fromFile(file.path, filename: "image.jpg"),
        "nim": nim,
      });
      final response = await dio.post(EndPoint.faceRecognition, data: data);
    } on DioError catch (e) {
      print(e);
    }
  }
}
