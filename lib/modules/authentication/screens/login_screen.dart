import 'package:better_selection/better_selection.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ichatapplication/configs/app_routes.dart';
import 'package:ichatapplication/constants/custom_colors.dart';
import 'package:ichatapplication/global_widgets/input_widget.dart';

import '../../../main.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool onhover = false;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future signIn() async {
    // showDialog(
    //     context: context,
    //     barrierDismissible: false,
    //     builder: (context) => const Center(
    //           child: CircularProgressIndicator(),
    //         ));
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim());
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Please enter correct email or password')));
      // Navigator.push(
      //     context, MaterialPageRoute(builder: (context) => LoginScreen()));
      print(e);
    }
    navigatorKey.currentState!.popUntil((route) => route.isCurrent);
    // Navigator.of(context).
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SelectableScope(
        child: SafeArea(
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
                    TextSelectable.plain(
                      "Let's sign you in.",
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(fontSize: 30),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    TextSelectable.plain(
                      'Welcome back.',
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: CustomColors.greyLight, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "You've been missed!",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: CustomColors.greyLight, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    InputWidget(
                      hintText: 'Email',
                      controller: emailController,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InputWidget(
                      hintText: 'Password',
                      controller: passwordController,
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
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(
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
                    onTap: () {
                      // Navigator.pushNamed(context, CHATS_SCREEN);
                      signIn();
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
                          style: Theme.of(context).textTheme.button!.copyWith(
                              color: CustomColors.black, fontSize: 18),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }
}
