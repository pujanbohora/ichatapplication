import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:ichatapplication/configs/app_routes.dart';
import 'package:ichatapplication/constants/custom_colors.dart';

class HeaderWidget extends StatelessWidget {
  final String title;
  final bool? isSearch;
  bool? isGroupChat;
  HeaderWidget({Key? key, required this.title, this.isSearch, this.isGroupChat})
      : super(key: key);

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
                  child: isSearch!
                      ? isGroupChat!
                          ? Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(99),
                                  image: const DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          "assets/images/profile1.jfif"))),
                            )
                          : InkWell(
                              onTap: () {},
                              child: const Icon(
                                EvaIcons.checkmarkSquare,
                                color: CustomColors.blue,
                                size: 28,
                              ),
                            )
                      : InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            EvaIcons.arrowBack,
                            color: CustomColors.white,
                            size: 28,
                          ),
                        )),
              const SizedBox(
                width: 20,
              ),
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(fontSize: 25, fontWeight: FontWeight.bold),
              )
            ],
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  isSearch != isSearch;
                  Navigator.pushNamed(context, SEARCH_SCREEN);
                },
                child: isSearch!
                    ? const Icon(
                        EvaIcons.searchOutline,
                        color: CustomColors.white,
                        size: 28,
                      )
                    : Container(),
              ),
              const SizedBox(width: 15),
              // InkWell(
              //   onTap: () {
              //     showModalBottomSheet<void>(
              //       context: context,
              //       builder: (BuildContext context) {
              //         return BottomSheeteWidget();
              //       },
              //     );
              //   },
              //   child: const Icon(
              //     EvaIcons.menu2,
              //     color: CustomColors.white,
              //     size: 28,
              //   ),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
