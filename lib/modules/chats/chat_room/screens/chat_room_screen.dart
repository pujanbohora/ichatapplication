import 'package:flutter/material.dart';
import 'package:ichatapplication/modules/chats/chat_room/widgets/chat_Room_bottom_text_box.dart';
import 'package:ichatapplication/modules/chats/chat_room/widgets/chat_Room_header_widget.dart';


import '../widgets/chat_message_box_widget.dart';

class ChatRoomScreen extends StatelessWidget {
  const ChatRoomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ChatRoomHeaderWidget(),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(children: const [
                  ChatBubble(
                    text: 'dfsadfsdfsdf',
                  ),
                  ChatBubble(
                    text: 'pawan',
                    isCurrentUser: true,
                  ),
                  ChatBubble(
                    text: 'bohora',
                    isCurrentUser: false,
                  ),
                  ChatBubble(
                    text: 'how are you',
                    isCurrentUser: true,
                  ),
                  ChatBubble(
                    text: 'im fine thank you for asking',
                    isCurrentUser: false,
                  ),
                  ChatBubble(
                    text: 'dfsadfsdfsdf',
                  ),
                  ChatBubble(
                    text: 'pawan',
                    isCurrentUser: true,
                  ),
                  ChatBubble(
                    text: 'bohora',
                    isCurrentUser: false,
                  ),
                  ChatBubble(
                    text: 'how are you',
                    isCurrentUser: true,
                  ),
                  ChatBubble(
                    text:
                        'im fine thank you for asking im fine thank you for asking im fine thank you for asking im fine thank you for asking',
                    isCurrentUser: false,
                  ),
                  ChatBubble(
                    text: 'dfsadfsdfsdf',
                  ),
                  ChatBubble(
                    text: 'pawan',
                    isCurrentUser: true,
                  ),
                  ChatBubble(
                    text: 'bohora',
                    isCurrentUser: false,
                  ),
                  ChatBubble(
                    text: 'how are you',
                    isCurrentUser: true,
                  ),
                  ChatBubble(
                    text: 'im fine thank you for asking',
                    isCurrentUser: false,
                  ),
                  ChatBubble(
                    text:
                        'im fine thank you for asking im fine thank you for asking im fine thank you for asking im fine thank you for asking',
                    isCurrentUser: false,
                  ),
                  ChatBubble(
                    text: 'dfsadfsdfsdf',
                  ),
                  ChatBubble(
                    text: 'pawan',
                    isCurrentUser: true,
                  ),
                  ChatBubble(
                    text: 'bohora',
                    isCurrentUser: false,
                  ),
                  ChatBubble(
                    text: 'how are you',
                    isCurrentUser: true,
                  ),
                  ChatBubble(
                    text: 'im fine thank you for asking',
                    isCurrentUser: false,
                  ),
                ]),
              ),
            ),
            ChatBottomTextBoxWidget(),
          ],
        ),
      ),
    );
  }
}
