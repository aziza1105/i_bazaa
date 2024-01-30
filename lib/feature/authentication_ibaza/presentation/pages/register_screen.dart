import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../../../assets/constants/colors.dart';
import '../../../../assets/constants/icons.dart';
import '../../../../core/widgets/w_button.dart';



class RegisterScreen extends StatefulWidget {
  static Route route() => MaterialPageRoute(
    builder: (_) => const RegisterScreen(),
  );

  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final phoneTextEditingController = TextEditingController();
  final passwordTextEditingController = TextEditingController();

  final phoneFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();

  final textFieldContentStyle = const TextStyle(
    color: Colors.black,
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
                "Ro'yxatdan o'tish",
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
                "Ma'lumotlarni kiriting",
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
                  'F.I.SH',
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
              decoration: decoration(hintText: "To'liq ismingizni kiriting" ),
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
              cursorColor: black,
              focusNode: passwordFocusNode,
              controller: passwordTextEditingController,
              decoration: decoration(
                hintText: '+998 99 123 45 67',
              ),
              onEditingComplete: () {
              },
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.visiblePassword,
              obscureText: isObscure,
            ),
            const Gap(20),

            WButton(
              onTap: () {
                Navigator.of(context).pushNamed("/verificationPage");
              },
              text: 'Davom etish',
            ),
            const Gap(253),
            const Align(
              alignment: Alignment.center,
              child: Text(
                "Ro'yxatdan o'tganmisiz?",
                style: TextStyle(
                  color: dark_grey,
                  fontSize: 16.0,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,

                ),
              ),
            ),
            const Gap(16),
            WButton(
              onTap: () {},
              text: "Kirish",
            ),

          ],
        ),
      ),
    );
  }
}
