import 'package:flutter/material.dart';
import 'package:ichatapplication/configs/app_routes.dart';
import 'package:ichatapplication/constants/custom_colors.dart';

class ChatsWidget extends StatelessWidget {
  const ChatsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: (){
      Navigator.pushNamed(context, CHAT_ROOM_SCREEN);
    },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(99),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image:
                                  AssetImage("assets/images/profile1.jfif"))),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Alex Brooker',
                            style: Theme.of(context).textTheme.headline4,
                          ),
                          Text(
                            'Hello... how are you? sdfadsfsafsdfasfsdfsdfasdfsaf',
                            style: Theme.of(context).textTheme.bodyText2,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Text(
                '12:11',
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
