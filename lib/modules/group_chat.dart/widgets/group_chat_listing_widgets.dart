import 'package:flutter/material.dart';
import 'package:ichatapplication/modules/chats/widgets/chats_widget.dart';
import 'package:ichatapplication/modules/group_chat.dart/screens/group_chats.dart';
import 'package:ichatapplication/modules/group_chat.dart/widgets/group_chats_widgets.dart';

class GroupChatListingWidget extends StatelessWidget {
  const GroupChatListingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 20,
          itemBuilder: (context, index) {
            return Container(child: const GroupChatsWidget());
          }),
    );
  }
}
