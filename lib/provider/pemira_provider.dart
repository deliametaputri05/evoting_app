import 'package:evoting_mobile/enum/loading_enum.dart';
import 'package:evoting_mobile/services/remote_data/pemira_remote_data.dart';
import 'package:flutter/foundation.dart';

import '../models/pemira_model/pemira_model.dart';

class PemiraProvider extends ChangeNotifier {
  List<PemiraModel> pemira = [];
  LoadingStatus loadingPemira = LoadingStatus.initiazaiton;

  Future getPemira(String idJurusan) async {
    loadingPemira = LoadingStatus.loading;
    notifyListeners();

    await PemiraRemoteData().getPemira('1').then((value) {
      value.fold((l) {
        loadingPemira = LoadingStatus.error;
        notifyListeners();
      }, (r) {
        loadingPemira = LoadingStatus.loaded;
        pemira = r;

        notifyListeners();
      });
    });
  }
}
