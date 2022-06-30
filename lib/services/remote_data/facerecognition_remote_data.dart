import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:evoting_mobile/constant/endpoint.dart';
import 'package:evoting_mobile/services/network/dio_service.dart';

class FacerecognitionRemoteData extends DioService {
  Future getFacecognition(File file, String nim) async {
    Options(
      headers: {
        'content-type': 'multipart/form-data',
      },
    );
    try {
      FormData data = FormData.fromMap({
        "face_image": await MultipartFile.fromFile(file.path,
            filename: file.path.split('/').last),
        "nim": nim,
      });
      final response = await dio.post(EndPoint.faceRecognition, data: data);
      return response.data;
    } on DioError catch (e) {
      print(e);
    }
  }
}
