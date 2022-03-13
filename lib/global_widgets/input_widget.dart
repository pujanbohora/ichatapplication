import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:ichatapplication/constants/custom_colors.dart';

class InputWidget extends StatefulWidget {
  final String hintText;
  bool? obscureValue;
  final bool? isPassword;
  final TextEditingController? controller;
  InputWidget(
      {Key? key,
      required this.hintText,
      this.controller,
      this.obscureValue = false,
      this.isPassword = false})
      : super(key: key);

  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
          border: Border.all(color: CustomColors.grey, width: 1),
          color: CustomColors.lightBlack,
          borderRadius: BorderRadius.circular(14)),
      constraints: BoxConstraints(maxWidth: 350),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: widget.controller,
              obscureText: widget.obscureValue!,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(color: Colors.grey),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 8),
                  border: InputBorder.none,
                  hintText: widget.hintText,
                  hintStyle: Theme.of(context).textTheme.bodyText2),
            ),
          ),
          (widget.isPassword!)
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      widget.obscureValue = !widget.obscureValue!;
                    });
                  },
                  icon: Icon(
                    widget.obscureValue! ? EvaIcons.eyeOff : EvaIcons.eye,
                    color: CustomColors.grey,
                    size: 18,
                  ))
              : Container()
        ],
      ),
    );
  }
}
