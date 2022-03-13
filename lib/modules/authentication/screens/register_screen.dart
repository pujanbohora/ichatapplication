import 'dart:io';

import 'package:flutter/material.dart';
import 'package:ichatapplication/configs/app_routes.dart';
import 'package:ichatapplication/constants/custom_colors.dart';
import 'package:ichatapplication/global_widgets/input_widget.dart';
import 'package:image_picker/image_picker.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  File? profile;
  pickImage() async {
    print('inside camerdsfsdfsdf');
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        profile = File(image.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
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
                        'START FOR FREE',
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: CustomColors.greyLight, fontSize: 10),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Create new account.",
                        style: Theme.of(context)
                            .textTheme
                            .headline4!
                            .copyWith(fontSize: 30),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      InkWell(
                        onTap: () {
                          pickImage();
                        },
                        child: Center(
                          child: Stack(
                            children: [
                              CircleAvatar(
                                radius: 35,
                                backgroundImage: (profile != null)
                                    ? FileImage(profile!) as ImageProvider
                                    : const NetworkImage(
                                        'https://i.pinimg.com/564x/e1/49/2f/e1492ff2dcc2e4f435759285dbe59bc7.jpg'),
                              ),
                              Container(
                                  padding: const EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.white, width: 2),
                                      borderRadius: BorderRadius.circular(25),
                                      color: Colors.blue),
                                  child: const Icon(
                                    Icons.add_a_photo,
                                    color: Colors.white,
                                    size: 15,
                                  ))
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      InputWidget(
                        hintText: 'Username',
                      ),
                      const SizedBox(
                        height: 20,
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
                      const SizedBox(
                        height: 20,
                      ),
                      InputWidget(
                        hintText: 'Confirm Password',
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
                          "Already a member? ",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(color: CustomColors.greyDark),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, LOGIN_SCREEN);
                          },
                          child: Text(
                            'Log in',
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
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: CustomColors.white),
                      child: Center(
                        child: Text(
                          'Sign up',
                          style: Theme.of(context).textTheme.button!.copyWith(
                              color: CustomColors.black, fontSize: 18),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
