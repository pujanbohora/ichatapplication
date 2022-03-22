import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ichatapplication/configs/app_routes.dart';
import 'package:ichatapplication/constants/custom_colors.dart';
import 'package:ichatapplication/modules/group_chat.dart/screens/group_chats.dart';
import 'package:ichatapplication/modules/notification/screens/notification_screen.dart';

import '../chats/screens/chats_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  

  List<Widget> navigationPages = [
    ChatsScreen(),
    GroupChatsScreen(),
    NOtificationScreen(),
    Container(),
    Container(),
  ];

  changePageIndex(int changedIndex) {
    setState(() {
      currentIndex = changedIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationPages[currentIndex],
      bottomNavigationBar: Container(
        height: 60,
        decoration: const BoxDecoration(
          color: CustomColors.blue,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: 400),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    setState(
                      () {
                        changePageIndex(0);
                      },
                    );
                  },
                  icon: currentIndex == 0
                      ? const Icon(
                          EvaIcons.messageCircle,
                          color: Colors.black,
                          size: 30,
                        )
                      : const Icon(
                          EvaIcons.messageCircleOutline,
                          color: Color(0xffbfbfbf),
                          size: 30,
                        ),
                ),
                IconButton(
                  onPressed: () {
                    setState(
                      () {
                        changePageIndex(1);
                      },
                    );
                  },
                  icon: currentIndex == 1
                      ? const Icon(
                          EvaIcons.people,
                          color: Colors.black,
                          size: 30,
                        )
                      : const Icon(
                          EvaIcons.peopleOutline,
                          color: Color(0xffbfbfbf),
                          size: 30,
                        ),
                ),
                Center(
                  child: IconButton(
                    onPressed: () {
                      changePageIndex(2);
                    },
                    icon: currentIndex == 2
                        ? const Icon(
                            EvaIcons.bell,
                            color: Colors.black,
                            size: 30,
                          )
                        : const Icon(
                            EvaIcons.bellOutline,
                            color: Color(0xffbfbfbf),
                            size: 30,
                          ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    changePageIndex(3);
                  },
                  icon: currentIndex == 3
                      ? const Icon(
                          EvaIcons.grid,
                          color: Colors.black,
                          size: 30,
                        )
                      : const Icon(
                          EvaIcons.gridOutline,
                          color: Color(0xffbfbfbf),
                          size: 30,
                        ),
                ),
                IconButton(
                  onPressed: () {
                    FirebaseAuth.instance.signOut();
                    Navigator.pushNamed(context, LOGIN_SCREEN);
                    changePageIndex(4);
                  },
                  icon: currentIndex == 4
                      ? const Icon(
                          EvaIcons.logOut,
                          color: Colors.black,
                          size: 30,
                        )
                      : const Icon(
                          EvaIcons.logOutOutline,
                          color: Color(0xffbfbfbf),
                          size: 30,
                        ),
                ),
                // IconButton(
                //   onPressed: () {
                //     FirebaseAuth.instance.signOut();
                //     Navigator.pushNamed(context, LOGIN_SCREEN);
                //     changePageIndex(4);
                //   },
                //   icon: currentIndex == 4
                //       ? const Icon(
                //           EvaIcons.logOut,
                //           color: Colors.black,
                //           size: 30,
                //         )
                //       : const Icon(
                //           EvaIcons.logOutOutline,
                //           color: Color(0xffbfbfbf),
                //           size: 30,
                //         ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
