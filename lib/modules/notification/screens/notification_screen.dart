import 'package:flutter/material.dart';
import 'package:ichatapplication/modules/notification/widgets/notification_header_widgets.dart';
import 'package:ichatapplication/modules/notification/widgets/notification_listing_widgets.dart';

class NOtificationScreen extends StatelessWidget {
  const NOtificationScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          NotificationHeader(),
          NotificationListingWidget()
        ],
      ),
    );
  }
}