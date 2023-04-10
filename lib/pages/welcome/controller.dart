import 'package:chat_app/common/routes/names.dart';
import 'package:chat_app/pages/welcome/state.dart';
import 'package:get/get.dart';

import '../../common/store/config.dart';

class WelcomeController extends GetxController {
  final state = WelcomeState();
  WelcomeController();
  changePage(int index) async {
    state.index.value = index;
  }

  handleSignIn() async {
    await ConfigStore.to.saveAlreadyOpen();
    Get.offAndToNamed(AppRoutes.SIGN_IN);
  }
}
