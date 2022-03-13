import 'package:flutter/material.dart';
import 'package:ichatapplication/modules/chat_room/widgets/chat_Room_bottom_text_box.dart';
import 'package:ichatapplication/modules/chat_room/widgets/chat_Room_header_widget.dart';
import 'package:ichatapplication/modules/chat_room/widgets/chat_message_box_widget.dart';
import 'package:ichatapplication/modules/group_chat_room.dart/widgets/group_chat_room_bottom_test_widget.dart';
import 'package:ichatapplication/modules/group_chat_room.dart/widgets/group_chat_room_message_widget.dart';
import 'package:ichatapplication/modules/group_chat_room.dart/widgets/group_chat_room_header_widget.dart';

class GroupChatRoomScreen extends StatelessWidget {
  const GroupChatRoomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            GroupChatRoomHeaderWidget(),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(children: const [
                  GroupChatBubble(
                    text: 'dfsadfsdfsdf',
                  ),
                  GroupChatBubble(
                    text: 'pawan',
                    isCurrentUser: true,
                  ),
                  GroupChatBubble(
                    text: 'bohora',
                    isCurrentUser: false,
                  ),
                  GroupChatBubble(
                    text: 'how are you',
                    isCurrentUser: true,
                  ),
                  GroupChatBubble(
                    text: 'im fine thank you for asking',
                    isCurrentUser: false,
                  ),
                  GroupChatBubble(
                    text: 'dfsadfsdfsdf',
                  ),
                  GroupChatBubble(
                    text: 'pawan',
                    isCurrentUser: true,
                  ),
                  GroupChatBubble(
                    text: 'bohora',
                    isCurrentUser: false,
                  ),
                  GroupChatBubble(
                    text: 'how are you',
                    isCurrentUser: true,
                  ),
                  GroupChatBubble(
                    text:
                        'im fine thank you for asking im fine thank you for asking im fine thank you for asking im fine thank you for asking',
                    isCurrentUser: false,
                  ),
                  GroupChatBubble(
                    text: 'dfsadfsdfsdf',
                  ),
                  GroupChatBubble(
                    text: 'pawan',
                    isCurrentUser: true,
                  ),
                  GroupChatBubble(
                    text: 'bohora',
                    isCurrentUser: false,
                  ),
                  GroupChatBubble(
                    text: 'how are you',
                    isCurrentUser: true,
                  ),
                  GroupChatBubble(
                    text: 'im fine thank you for asking',
                    isCurrentUser: false,
                  ),
                  GroupChatBubble(
                    text:
                        'im fine thank you for asking im fine thank you for asking im fine thank you for asking im fine thank you for asking',
                    isCurrentUser: false,
                  ),
                  GroupChatBubble(
                    text: 'dfsadfsdfsdf',
                  ),
                  GroupChatBubble(
                    text: 'pawan',
                    isCurrentUser: true,
                  ),
                  GroupChatBubble(
                    text: 'bohora',
                    isCurrentUser: false,
                  ),
                  GroupChatBubble(
                    text: 'how are you',
                    isCurrentUser: true,
                  ),
                  GroupChatBubble(
                    text: 'im fine thank you for asking',
                    isCurrentUser: false,
                  ),
                ]),
              ),
            ),
            GroupChatBottomTextBoxWidget(),
          ],
        ),
      ),
    );
  }
}
