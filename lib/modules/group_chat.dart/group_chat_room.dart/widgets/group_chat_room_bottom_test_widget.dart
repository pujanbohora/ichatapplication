import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:ichatapplication/constants/custom_colors.dart';

class GroupChatBottomTextBoxWidget extends StatelessWidget {
  const GroupChatBottomTextBoxWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        children: <Widget>[
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: CustomColors.blackShade,
              ),
              padding: const EdgeInsets.only(left: 20),
              constraints: const BoxConstraints(minHeight: 30),
              child: TextField(
                maxLines: 6,
                minLines: 1,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(color: CustomColors.whiteShade),
                decoration: InputDecoration(
                    hintText: "Aaa",
                    hintStyle: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: CustomColors.whiteShade),
                    border: InputBorder.none),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            height: 40,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: const Icon(
              EvaIcons.navigation2,
              color: CustomColors.blue,
              size: 28,
            ),
          )
        ],
      ),
    );
  }
}
