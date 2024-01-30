import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:pinput/pinput.dart';

import '../../../../../assets/constants/colors.dart';
import '../../../../../assets/constants/images.dart';
import '../../../../assets/constants/icons.dart';
import '../../../../core/widgets/w_button.dart';

class ResetPassword extends StatefulWidget {
  static Route route() => MaterialPageRoute(
      builder: (_) => const ResetPassword(),
  );
  const ResetPassword({super.key});


  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  PinTheme defaultPinTheme = PinTheme(
    width: 43,
    height: 43,
    textStyle: const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w500,
    ),
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(
        color: grey.withOpacity(1),
      ),
      borderRadius: BorderRadius.circular(8),
    ),
  );
  final TextEditingController pinPutController = TextEditingController();
  bool isPinPutValid = false;
  bool isError = false;
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
                      "Tasdiqlash kodini kiriting",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: dark_grey,
                      ),
                    ),
                  ),
                  const Gap(22),


                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      children: [
                        const Text(
                          "Parolni qayta tiklash uchun tasdiqlash kodi \n telefon raqamingizga yuborildi",
                          style: TextStyle(
                            fontSize: 14,
                            color: dark_grey,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const Gap(8.5),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("+998 99 144 34 29",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Colors.black

                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                },
                                child: SvgPicture.asset(AppIcons.edit, height: 24, width: 24,),

                              ),
                            ]
                        ),
                        const Gap(26.5),

                        Pinput(
                          length: 6,
                          forceErrorState: isError,
                          controller: pinPutController,
                          enableSuggestions: isPinPutValid,
                          defaultPinTheme: isPinPutValid
                              ? defaultPinTheme.copyBorderWith(
                              border: Border.all(
                                color: Colors.grey,
                              ))
                              : defaultPinTheme,
                          focusedPinTheme: defaultPinTheme.copyBorderWith(
                            border: Border.all(
                              color: Colors.black,
                            ),
                          ),
                          errorPinTheme: defaultPinTheme.copyBorderWith(
                            border: Border.all(
                              color: !isPinPutValid ? errorColor : Colors.white,
                            ),
                          ),
                          onChanged: (value) {
                            if (value.length == 6) {
                              if (value == '777777') {
                                isPinPutValid = true;
                              } else {
                                isError = true;
                              }

                              setState(() {});
                            } else {
                              isPinPutValid = false;
                              isError = false;
                            }
                          },
                          onCompleted: (value) {
                            if (isPinPutValid) {

                            }
                          },
                        ),
                        const Gap(24),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Kod kelmadimi?.",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: dark_grey
                              ),
                            ),
                            GestureDetector(
                              onTap: () {

                              },
                              child: const Text("Qaytadan yuborish",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),

                          ],
                        ),
                        const Gap(24),
                        WButton(
                          onTap: () {
                           Navigator.of(context).pushNamed("/resetPasswordNew");
                          },
                          text: 'Davom etish',
                        ),
                      ],
                    ),
                  )

                ]
            )
        )
    );
  }
}
