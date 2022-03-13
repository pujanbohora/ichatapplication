import 'package:flutter/material.dart';
import 'package:ichatapplication/modules/chats/widgets/chats_header_widget.dart';
import 'package:ichatapplication/modules/chats/widgets/chats_listing_widget.dart';
import 'package:ichatapplication/modules/chats/widgets/chats_search_widget.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      body: SafeArea(
        child: Column(
          children: [
            ChatsHeaderWidget(),
            // ChatSearch(),
            Expanded(child: ChatListingWidget()),
          ],
        ),
      ),
    );
  }
}
