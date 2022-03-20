import 'package:flutter/material.dart';
import 'package:ichatapplication/modules/chats/widgets/chats_widget.dart';
import 'package:ichatapplication/modules/group_chat.dart/screens/group_chats.dart';
import 'package:ichatapplication/modules/group_chat.dart/widgets/group_chats_widgets.dart';
import 'package:ichatapplication/modules/notification/widgets/notification_widget.dart';

class NotificationListingWidget extends StatelessWidget {
  const NotificationListingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
      shrinkWrap: true,
       physics: BouncingScrollPhysics(),
      itemCount: 20,
      itemBuilder: (context, index) {
        return Container(child: const NotificationWidget());
      }),
    );
  }
}
