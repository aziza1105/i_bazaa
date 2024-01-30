import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../../../assets/constants/colors.dart';
import '../../../../assets/constants/icons.dart';
import '../../../../core/widgets/w_button.dart';



class ForgotPassword extends StatefulWidget {

  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final phoneTextEditingController = TextEditingController();
  final passwordTextEditingController = TextEditingController();

  final phoneFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();

  final textFieldContentStyle = const TextStyle(
    color: black,
    fontSize: 16,
    fontWeight: FontWeight.w500,
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
                "Parolni qayta tiklash",
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
                "Ma’lumotlarni kiriting",
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
                  'Telefon raqam',
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
              decoration: decoration(hintText: '+998 99 123 45 67' ),
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
              onEditingComplete: () {
                passwordFocusNode.requestFocus();
              },
            ),


            const Gap(20),

            WButton(
              onTap: () {},
              text: "Davom etish",
            ),

          ],
        ),
      ),
    );
  }
}
