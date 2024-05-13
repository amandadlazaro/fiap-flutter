import 'package:get/get.dart';
import 'package:fiap_flutter/model/repo_general.dart';
import 'package:fiap_flutter/rest/rest_client.dart';

class GeneralController extends GetxController with StateMixin <List<RepoGeneral>> {
  final RestClient _apiProvider = Get.find<RestClient>();

  void getRepoGeneral() {
    change(null, status: RxStatus.loading());
    _apiProvider.getRepoGeneral().then((response) {
      change(response, status: RxStatus.success());
    }, onError: (err) {
      change(null, status: RxStatus.error(err.toString()));
    });
  }
}