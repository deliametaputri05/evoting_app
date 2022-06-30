import 'dart:io';

import 'package:evoting_mobile/enum/loading_enum.dart';
import 'package:evoting_mobile/services/remote_data/facerecognition_remote_data.dart';
import 'package:evoting_mobile/view/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../models/mahasiswa_model/mahasiswa_model.dart';

class FacerecognitionProvider extends ChangeNotifier {
  GetStorage session = GetStorage();
  List<MahasiswaModel> mahasiswa = [];
  LoadingStatus loadingMahasiswa = LoadingStatus.initiazaiton;

  Future getFacecognition(File file, String nim) async {
    loadingMahasiswa = LoadingStatus.loading;
    notifyListeners();

    await FacerecognitionRemoteData().getFacecognition(file, nim).then((value) {
      value.fold((l) {
        loadingMahasiswa = LoadingStatus.error;
        notifyListeners();
      }, (r) {
        loadingMahasiswa = LoadingStatus.loaded;
        mahasiswa = r;

        notifyListeners();
      });
    });
  }

  void logout() {
    session.remove('id');
    session.remove('id_jurusan');
    session.remove('foto');
    session.remove('nama');
    session.remove('nim');
    session.remove('kelas');
    session.remove('angkatan');
    session.remove('sudah_vote');

    Get.offAll(FormLoginPage());
  }
}
