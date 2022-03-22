import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:ichatapplication/constants/custom_colors.dart';
import 'package:ichatapplication/global_widgets/header_widget.dart';

class SearchWidget extends StatelessWidget {
  SearchWidget({
    Key? key,
  }) : super(key: key);

  TextEditingController name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Expanded(
              child: TextField(
                key: const Key('Search'),
                controller: name,
                style: const TextStyle(color: Colors.black),
                cursorColor: Colors.black,
                decoration: const InputDecoration(
                  hintText: 'Search',
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black)),
                ),
              ),
            ),
            InkWell(
                onTap: () {
                  // isLoading =! isLoading;
                },
                child: const Icon(EvaIcons.search))
          ],
        ),
      ),
      body: ListView.builder(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemCount: 20,
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                constraints: const BoxConstraints(maxHeight: 60),
                decoration: BoxDecoration(
                    color: CustomColors.blackShade,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 42,
                            height: 42,
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(99),
                                image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        "assets/images/profile1.jfif"))),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Pujan Bohora',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(color: CustomColors.whiteShade),
                          ),
                        ],
                      ),
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(color: CustomColors.white)),
                          child: const Icon(
                            EvaIcons.plus,
                            color: CustomColors.white,
                          ))
                    ]),
              ),
            );
          }),
    );
  }
}
