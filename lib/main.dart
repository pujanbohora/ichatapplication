import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ichatapplication/configs/app_routes.dart';
import 'package:ichatapplication/configs/custom_theme.dart';
import 'package:ichatapplication/firebase_options.dart';
import 'package:ichatapplication/global_widgets/search_widget.dart';
import 'package:ichatapplication/modules/authentication/screens/login_screen.dart';
import 'package:ichatapplication/modules/authentication/screens/register_screen.dart';
import 'package:ichatapplication/modules/authentication/screens/splash_screen.dart';
import 'package:ichatapplication/modules/chats/screens/chats_screen.dart';
import 'package:ichatapplication/modules/chats/widgets/chats_listing_widget.dart';
import 'package:ichatapplication/modules/chats/widgets/chats_widget.dart';
import 'package:ichatapplication/modules/group_chat.dart/group_chat_room.dart/screens/group_chat_room_screen.dart';
import 'package:ichatapplication/modules/group_chat.dart/screens/group_chats.dart';
import 'package:ichatapplication/modules/notification/widgets/notification_listing_widgets.dart';
import 'package:ichatapplication/modules/notification/widgets/notification_widget.dart';
import 'package:ichatapplication/modules/profile/screen/profile_screen.dart';

import 'modules/bottom_nav/bottom_nav_widget.dart';
import 'modules/chats/chat_room/screens/chat_room_screen.dart';
import 'modules/notification/screens/notification_screen.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

//simmer

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey : navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'iChat',
      theme: CustomTheme.lightTheme,
      initialRoute: SPLASH_SCREEN,
      routes: {
        SPLASH_SCREEN: (context) => SplashScreen(),
        LOGIN_SCREEN: (context) => LoginScreen(),
        REGISTER_SCREEN: (context) => RegisterScreen(),
        MAIN_CHAT_SCREEN: (context) => MainScreen(),
        CHATS_SCREEN: (context) => ChatsScreen(),
        CHAT_ROOM_SCREEN: (context)=> ChatRoomScreen(),
        GROUP_CHAT_SCREEN: (context)=> GroupChatsScreen(),
        GROUP_CHAT_ROOM_SCREEN: (context)=> GroupChatRoomScreen(),
        PROFILE_SCREEN: (context)=> ProfileScreen(),
        CHAT_NOTIFICATION_SCREEN : (context) => NOtificationScreen(),
        SEARCH_SCREEN : ((context) => SearchWidget())
      },
    );
  }
}

// FOR WIDGET TESTING
class TestWidget extends StatelessWidget {
  const TestWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: NotificationWidget(),);
  }
}
