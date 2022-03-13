import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:ichatapplication/constants/custom_colors.dart';
import 'package:ichatapplication/modules/profile/widget/bottomsheet_widget.dart';

class GroupChatsHeaderWidget extends StatelessWidget {
  const GroupChatsHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {},
                child: const Icon(
                  EvaIcons.checkmarkSquare,
                  color: CustomColors.blue,
                  size: 28,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                'Group Chats',
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(fontSize: 25, fontWeight: FontWeight.bold),
              )
            ],
          ),
          Row(
            children: [
              const SizedBox(width: 15),
              InkWell(
                onTap: () {
                  showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return BottomSheeteWidget();
                    },
                  );
                },
                child: const Icon(
                  EvaIcons.menu2,
                  color: CustomColors.white,
                  size: 28,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
