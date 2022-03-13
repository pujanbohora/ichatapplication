import 'package:flutter/material.dart';
import 'package:ichatapplication/constants/custom_colors.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          // height: MediaQuery.of(context).size.height,
          constraints: BoxConstraints(maxHeight: 60),
          decoration: BoxDecoration(
              color: CustomColors.blackShade,
              borderRadius: BorderRadius.circular(10)),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              width: 42,
              height: 42,
              decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(99),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/profile1.jfif"))),
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Pujan Bohora',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: CustomColors.whiteShade),
                ),
                Text('hello pawan')
              ],
            )
          ]),
        ),
      ),
    );
  }
}
