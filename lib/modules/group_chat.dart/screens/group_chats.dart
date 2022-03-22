import 'package:flutter/material.dart';
import 'package:ichatapplication/global_widgets/header_widget.dart';
import 'package:ichatapplication/modules/chats/widgets/chats_listing_widget.dart';
import 'package:ichatapplication/modules/chats/widgets/chats_search_widget.dart';
import 'package:ichatapplication/modules/group_chat.dart/widgets/group_chat_listing_widgets.dart';
import 'package:ichatapplication/modules/group_chat.dart/widgets/group_chats_header_widget.dart';
import 'package:ichatapplication/modules/group_chat.dart/widgets/group_chats_widgets.dart';

class GroupChatsScreen extends StatelessWidget {
  const GroupChatsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HeaderWidget(title: 'Group Chat', isSearch: true, isGroupChat: false),
            Expanded(child: GroupChatListingWidget()),
          ],
        ),
      ),
    );
  }
}
