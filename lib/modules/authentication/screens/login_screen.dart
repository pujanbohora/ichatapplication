import 'package:flutter/material.dart';
import 'package:ichatapplication/configs/app_routes.dart';
import 'package:ichatapplication/constants/custom_colors.dart';
import 'package:ichatapplication/global_widgets/input_widget.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool onhover = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Let's sign you in.",
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(fontSize: 30),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Welcome back.',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: CustomColors.greyLight, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "You've been missed!",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: CustomColors.greyLight, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  InputWidget(
                    hintText: 'Email',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InputWidget(
                    hintText: 'Password',
                    isPassword: true,
                    obscureValue: true,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(color: CustomColors.greyDark),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, REGISTER_SCREEN);
                      },
                      child: Text(
                        'Reigster',
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: CustomColors.whiteShade,
                            decoration: TextDecoration.underline),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, CHATS_SCREEN);
                  },
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: CustomColors.white),
                    child: Center(
                      child: Text(
                        'Sign in',
                        style: Theme.of(context)
                            .textTheme
                            .button!
                            .copyWith(color: CustomColors.black, fontSize: 18),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      )),
    );
  }
}
