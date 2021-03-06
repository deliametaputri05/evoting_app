import 'package:evoting_mobile/enum/loading_enum.dart';
import 'package:evoting_mobile/models/kandidat_model/kandidat_model.dart';
import 'package:evoting_mobile/services/remote_data/kandidat_remote_data.dart';
import 'package:flutter/foundation.dart';

class KandidatProvider extends ChangeNotifier {
  List<KandidatModel> kandidat = [];
  LoadingStatus loadingKandidat = LoadingStatus.initiazaiton;

  Future getKandidat(int idPemira) async {
    loadingKandidat = LoadingStatus.loading;
    notifyListeners();

    await KandidatRemoteData().getKandidat(idPemira).then((value) {
      value.fold((l) {
        loadingKandidat = LoadingStatus.error;
        notifyListeners();
      }, (r) {
        loadingKandidat = LoadingStatus.loaded;
        kandidat = r;

        notifyListeners();
      });
    });
  }
}
