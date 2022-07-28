import 'package:evoting_mobile/enum/loading_enum.dart';
import 'package:evoting_mobile/services/remote_data/voting_remote_data.dart';
import 'package:flutter/foundation.dart';
import 'package:nb_utils/nb_utils.dart';

import '../models/voting_model/voting_model.dart';

class VotingProvider extends ChangeNotifier {
  List<VotingModel> voting = [];
  LoadingStatus loadingVoting = LoadingStatus.initiazaiton;

  Future postVoting(
      int idKandidat, int idOrmawa, int idMhs, int idPemira) async {
    loadingVoting = LoadingStatus.loading;
    notifyListeners();

    await VotingRemoteData()
        .postVoting(idKandidat, idOrmawa, idMhs, idPemira)
        .then((value) {
      value.fold((l) {
        loadingVoting = LoadingStatus.error;
        notifyListeners();
        toast(l.message, gravity: ToastGravity.CENTER);
      }, (r) {
        loadingVoting = LoadingStatus.loaded;
        notifyListeners();
        // toast(r.message, gravity: ToastGravity.CENTER);
        // voting = r;

        notifyListeners();
      });
    });
  }

  Future getVoting(idJurusan) async {
    loadingVoting = LoadingStatus.loading;
    notifyListeners();

    await VotingRemoteData().getVoting(idJurusan).then((value) {
      value.fold((l) {
        loadingVoting = LoadingStatus.error;
        notifyListeners();
      }, (r) {
        loadingVoting = LoadingStatus.loaded;
        voting = r;

        notifyListeners();
      });
    });
  }
}
