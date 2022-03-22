import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ichatapplication/global_widgets/header_widget.dart';
import 'package:ichatapplication/modules/chats/widgets/chats_listing_widget.dart';
import 'package:ichatapplication/modules/chats/widgets/chats_search_widget.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HeaderWidget(title: 'Private Chat', isSearch: true, isGroupChat: true),
            // ChatSearch(),
            Expanded(child: ChatListingWidget()),
          ],
        ),
      ),
    );
  }
}
