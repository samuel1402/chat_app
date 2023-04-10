import 'package:cached_network_image/cached_network_image.dart';
import 'package:chat_app/common/entities/entities.dart';
import 'package:chat_app/common/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

Widget ChatLeftItem(Msgcontent item) {
  return Container(
    padding: EdgeInsets.only(top: 10.w, left: 15.w, right: 15.w, bottom: 10.w),
    child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      ConstrainedBox(
        constraints: BoxConstraints(maxHeight: 40.w, maxWidth: 230.w),
        child: Container(
          margin: EdgeInsets.only(right: 10.w, top: 0.w),
          padding: EdgeInsets.only(
            top: 10.w,
            left: 10.w,
            right: 10.w,
            bottom: 10.w,
          ),
          decoration: BoxDecoration(
              gradient: const LinearGradient(colors: [
                Color.fromARGB(255, 127, 162, 250),
                Color.fromARGB(255, 107, 142, 228),
                Color.fromARGB(255, 161, 166, 235),
                Color.fromARGB(255, 96, 123, 192),
              ], transform: GradientRotation(90)),
              borderRadius: BorderRadius.all(Radius.circular(10.w))),
          child: item.type == "text"
              ? Text("${item.content}")
              : ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 90.w),
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed(AppRoutes.Photoimgview,
                          parameters: {"url": item.content ?? ""});
                    },
                    child: CachedNetworkImage(
                      imageUrl: "${item.content}",
                    ),
                  ),
                ),
        ),
      ),
    ]),
  );
}
