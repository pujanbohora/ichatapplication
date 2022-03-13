import 'package:flutter/material.dart';
import 'package:ichatapplication/configs/app_routes.dart';
import 'package:ichatapplication/constants/assets_constants.dart';
import 'package:ichatapplication/constants/custom_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigatetologinscreen();
  }

  _navigatetologinscreen() async {
    await Future.delayed(const Duration(milliseconds: 4000), () {});
    Navigator.pushNamed(context, LOGIN_SCREEN);
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
