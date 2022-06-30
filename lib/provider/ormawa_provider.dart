import 'package:evoting_mobile/enum/loading_enum.dart';
import 'package:evoting_mobile/services/remote_data/ormawa_remote_data.dart';
import 'package:flutter/foundation.dart';
import '../models/ormawa_model/ormawa_model.dart';

class OrmawaProvider extends ChangeNotifier {
  List<OrmawaModel> ormawa = [];
  LoadingStatus loadingOrmawa = LoadingStatus.initiazaiton;

  Future getOrmawa() async {
    loadingOrmawa = LoadingStatus.loading;

    await OrmawaRemoteData().getOrmawa().then((value) {
      value.fold((l) {
        loadingOrmawa = LoadingStatus.error;
        notifyListeners();
      }, (r) {
        loadingOrmawa = LoadingStatus.loaded;
        ormawa = r;

        notifyListeners();
      });
    });
  }
}
