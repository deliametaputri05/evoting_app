import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:evoting_mobile/models/general_response/response_message.dart';
import 'package:evoting_mobile/models/kandidat_model/kandidat_model.dart';
import 'package:evoting_mobile/services/network/dio_service.dart';

import '../../constant/endpoint.dart';

class KandidatRemoteData extends DioService {
  Future<Either<ResponseMessage, List<KandidatModel>>> getKandidat(
      int idPemira) async {
    try {
      final response = await dio.get(EndPoint.getKandidat + "/$idPemira");
      final data = response.data['data'];
      final kandidat =
          (data as List).map((e) => KandidatModel.fromJson(e)).toList();

      if (response.statusCode == 200) {
        return Right(kandidat);
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
