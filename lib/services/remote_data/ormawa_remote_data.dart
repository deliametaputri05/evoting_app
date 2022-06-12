import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:evoting_mobile/models/general_response/response_message.dart';
import 'package:evoting_mobile/services/network/dio_service.dart';

import '../../constant/endpoint.dart';
import '../../models/ormawa_model/ormawa_model.dart';

class OrmawaRemoteData extends DioService {
  Future<Either<ResponseMessage, List<OrmawaModel>>> getOrmawa() async {
    try {
      final response = await dio.get(EndPoint.getOrmawa);
      final data = response.data['data'];
      final ormawa =
          (data as List).map((e) => OrmawaModel.fromJson(e)).toList();

      if (response.statusCode == 200) {
        return Right(ormawa);
      } else {
        return Left(ResponseMessage(
            code: response.statusCode!,
            message: response.data!['message']!.toString(),
            status: false,
            data: response.data));
      }
    } on DioError catch (e) {
      return Left(ResponseMessage(
          code: 600, message: "erorr", status: false, data: null));
    }
  }
}
