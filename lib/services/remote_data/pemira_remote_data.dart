import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:evoting_mobile/models/general_response/response_message.dart';
import 'package:evoting_mobile/models/pemira_model/pemira_model.dart';
import 'package:evoting_mobile/services/network/dio_service.dart';
import 'package:get_storage/get_storage.dart';

import '../../constant/endpoint.dart';

class PemiraRemoteData extends DioService {
  GetStorage session = GetStorage();
  Future<Either<ResponseMessage, List<PemiraModel>>> getPemira(
      int idJurusan) async {
    try {
      final response = await dio.get(EndPoint.getPemira, queryParameters: {
        "id_jurusan": idJurusan,
        "id_mhs": session.read('id')
      });
      final data = response.data['data'];
      final pemira =
          (data as List).map((e) => PemiraModel.fromJson(e)).toList();

      if (response.statusCode == 200) {
        return Right(pemira);
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
