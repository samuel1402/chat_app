import 'package:chat_app/pages/contact/index.dart';
import 'package:chat_app/pages/message/msg_controller.dart';
import 'package:chat_app/pages/profile/index.dart';
import 'package:get/get.dart';
import 'index.dart';

class ApplicationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ApplicationController>(() => ApplicationController());
    Get.lazyPut<ContactController>(() => ContactController());
    Get.lazyPut<MessageController>(() => MessageController());
    Get.lazyPut<ProfileController>(() => ProfileController());
  }
}
