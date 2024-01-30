import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../../../assets/constants/colors.dart';
import '../../../../assets/constants/icons.dart';
import '../../../../core/widgets/w_button.dart';



class ResetPasswordNew extends StatefulWidget {


  const ResetPasswordNew({super.key});

  @override
  State<ResetPasswordNew> createState() => _ResetPasswordNewState();
}

class _ResetPasswordNewState extends State<ResetPasswordNew> {
  final phoneTextEditingController = TextEditingController();
  final passwordTextEditingController = TextEditingController();

  final phoneFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();

  final textFieldContentStyle = const TextStyle(
    color: hintTextColor,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  bool isObscure = true;

  InputDecoration decoration({
    required String hintText,
    Widget? suffixIcon,

  }) =>
      InputDecoration(
        hintText: hintText,
        suffixIcon: suffixIcon,
        contentPadding:
        const EdgeInsets.symmetric(horizontal: 12, vertical: 13.5),
        hintStyle: TextStyle(
          color: grey.withOpacity(.6),
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        fillColor: backgroundcolour,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            width: 1,
            color: borderColour.withOpacity(.2),
            style: BorderStyle.solid,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            width: 1,
            color: borderColour.withOpacity(.2),
            style: BorderStyle.solid,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            width: 1,
            color: Colors.black.withOpacity(.2),
            style: BorderStyle.solid,
          ),
        ),
      );

  @override
  void dispose() {
    phoneTextEditingController.dispose();
    passwordTextEditingController.dispose();
    phoneFocusNode.dispose();
    passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const Gap(96),
            SvgPicture.asset(AppIcons.ibaza, height: 32, width: 99,),
            const Gap(48),

            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Parolni qayta tiklash',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ),

            const Gap(5),

            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Parol o‘rnating",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: dark_grey,
                ),
              ),
            ),
            const Gap(22),


            Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: () {},
                child: const Text(
                  'Yangi parol',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const Gap(8),
            TextField(
              style: textFieldContentStyle,
              cursorColor: Colors.black,
              focusNode: phoneFocusNode,
              controller: phoneTextEditingController,
              decoration: decoration(hintText: 'Parolni kiriting' ),
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
              onEditingComplete: () {
                passwordFocusNode.requestFocus();
              },
            ),
            const Gap(16),
            Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: () {},
                child: const Text(
                  'Yangi parolni tasdiqlash',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const Gap(8),
            TextField(
              style: textFieldContentStyle,
              cursorColor: black,
              focusNode: passwordFocusNode,
              controller: passwordTextEditingController,
              decoration: decoration(
                hintText: 'Parolni qaytadan kiriting',
              ),
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
              onEditingComplete: () {
                phoneFocusNode.requestFocus();
              },
            ),

            const Gap(20),

            WButton(
              onTap: () {},
              text: "Parolni qayta tiklash",
            ),

          ],
        ),
      ),
    );
  }
}
