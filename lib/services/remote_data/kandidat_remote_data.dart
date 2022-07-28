import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:evoting_mobile/models/general_response/response_message.dart';
import 'package:evoting_mobile/models/kandidat_model/kandidat_model.dart';
import 'package:evoting_mobile/services/network/dio_service.dart';
import 'package:get_storage/get_storage.dart';

import '../../constant/endpoint.dart';

class KandidatRemoteData extends DioService {
  GetStorage session = GetStorage();
  Future<Either<ResponseMessage, KandidatModel>> getKandidat(
      int idOrmawa) async {
    try {
      final response = await dio.get(EndPoint.getKandidat, queryParameters: {
        "id_ormawa": idOrmawa,
        "id_mhs": session.read('id')
      });

      if (response.statusCode == 200) {
        return Right(KandidatModel.fromJson(response.data["data"]));
      } else {
        return Left(ResponseMessage(
            code: response.statusCode!,
            message: response.data!['message']!.toString(),
            status: false,
            data: response.data));
      }
    } on DioError {
      return Left(ResponseMessage(
          code: 600, message: "erorr", status: false, data: null));
    }
  }
}
