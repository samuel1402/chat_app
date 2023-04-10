import 'package:chat_app/common/entities/entities.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class MessageState {
  RxList<QueryDocumentSnapshot<Msg>> MsgcontentList =
      <QueryDocumentSnapshot<Msg>>[].obs;
}
