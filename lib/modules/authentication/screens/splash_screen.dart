import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ichatapplication/configs/app_routes.dart';
import 'package:ichatapplication/constants/assets_constants.dart';
import 'package:ichatapplication/constants/custom_colors.dart';
import 'package:ichatapplication/modules/authentication/screens/firebase_auth.dart';
import 'package:ichatapplication/modules/authentication/screens/login_screen.dart';
import 'package:ichatapplication/modules/chats/screens/chats_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatetoFireBaseScreen();
  }

  _navigatetoFireBaseScreen() async {
    await Future.delayed(const Duration(milliseconds: 4000), () {});
    // Navigator.pushNamed(context, LOGIN_SCREEN);
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => FirebaseAuthScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(AssetConstants.appLogo,
                  height: 100, fit: BoxFit.contain),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'iChat',
              style: Theme.of(context)
                  .textTheme
                  .headline3!
                  .copyWith(color: CustomColors.white),
            ),
          ],
        ),
      ),
    );
  }
}
