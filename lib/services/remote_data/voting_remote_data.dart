import 'package:dartz/dartz.dart';
import 'package:evoting_mobile/models/general_response/response_message.dart';
import 'package:evoting_mobile/models/voting_model/voting_model.dart';
import 'package:evoting_mobile/services/network/dio_service.dart';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:evoting_mobile/constant/endpoint.dart';
import 'package:evoting_mobile/services/network/dio_service.dart';

class VotingRemoteData extends DioService {
  Future<Either<ResponseMessage, ResponseMessage>> postVoting(
      int idKandidat, int idOrmawa, int idMhs, int idPemira) async {
    try {
      FormData data = FormData.fromMap({
        "id_kandidat": idKandidat,
        "id_ormawa": idOrmawa,
        "id_mhs": idMhs,
        "id_pemira": idPemira,
      });
      final response = await dio.post(EndPoint.voting, data: data);

      if (response.statusCode == 200) {
        return Right(ResponseMessage(
            code: response.statusCode!,
            message: response.data!['data']!.toString(),
            status: true,
            data: response.data));
      } else {
        return Left(ResponseMessage(
            code: response.statusCode!,
            message: response.data!['data']!.toString(),
            status: false,
            data: response.data));
      }
    } on DioError catch (e) {
      print(e);
      return Left(ResponseMessage(
          code: 600, message: "error", status: false, data: null));
    }
  }

  Future<Either<ResponseMessage, List<VotingModel>>> getVoting(
      int idJurusan) async {
    try {
      final response = await dio
          .get(EndPoint.voting, queryParameters: {"id_jurusan": idJurusan});
      final data = response.data['data'];
      final voting =
          (data as List).map((e) => VotingModel.fromJson(e)).toList();

      if (response.statusCode == 200) {
        return Right(voting);
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
