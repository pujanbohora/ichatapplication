import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:ichatapplication/configs/app_routes.dart';
import 'package:ichatapplication/constants/assets_constants.dart';
import 'package:ichatapplication/constants/custom_colors.dart';
import 'package:ichatapplication/constants/custom_fonts.dart';

class BottomSheeteWidget extends StatefulWidget {
  BottomSheeteWidget({Key? key}) : super(key: key);

  @override
  State<BottomSheeteWidget> createState() => _BottomSheeteWidgetState();
}

class _BottomSheeteWidgetState extends State<BottomSheeteWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.lightBlack,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Image.asset(AssetConstants.appLogo,
                      height: 38, fit: BoxFit.contain)),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Done',
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: CustomColors.blue,
                        fontSize: 16),
                  ),
                ),
              )
            ],
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, CHATS_SCREEN);
            },
            child: BottomSheetButtonWidget(
              title: 'Private Chat',
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, GROUP_CHAT_SCREEN);
            },
            child: BottomSheetButtonWidget(
              title: 'Group Chat',
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, LOGIN_SCREEN);
            },
            child: BottomSheetButtonWidget(
              title: 'Log Out',
              color: CustomColors.redAccent,
            ),
          )
        ],
      ),
    );
  }
}

class BottomSheetButtonWidget extends StatelessWidget {
  BottomSheetButtonWidget({Key? key, required this.title, this.color})
      : super(key: key);
  String title;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color:
              color != null ? CustomColors.redAccent : CustomColors.greyShade,
          borderRadius: BorderRadius.circular(6)),
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Center(
            child: Text(
              title,
              style: const TextStyle(
                  fontFamily: CustomFonts.GilroyMedium,
                  color: CustomColors.white),
            ),
          )),
    );
  }
}
