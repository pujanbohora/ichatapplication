import 'package:flutter/material.dart';
import 'package:ichatapplication/modules/chats/widgets/chats_widget.dart';

class ChatListingWidget extends StatelessWidget {
  const ChatListingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 20,
          itemBuilder: (context, index) {
            return Container(child: const ChatsWidget());
          }),
    );
  }
}
