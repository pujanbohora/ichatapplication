import 'package:flutter/material.dart';
import 'package:ichatapplication/modules/profile/widget/bottomsheet_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BottomSheeteWidget(),
    );
  }
}