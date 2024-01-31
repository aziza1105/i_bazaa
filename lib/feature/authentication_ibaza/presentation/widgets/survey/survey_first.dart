
//     //___________________________________________________________________________________________________//
//     bottomNavigationBar: Row(
//     mainAxisAlignment: MainAxisAlignment.end,
//     children: [
//     thisPage == 1
//     ? GestureDetector(
//     onTap: () {
//     controller.previousPage(
//     duration: const Duration(milliseconds: 300),
//     curve: Curves.ease);
//     },
//     child: Container(
//     height: 44,
//     width: 44,
//     margin: EdgeInsets.only(
//     bottom: MediaQuery.of(context).padding.bottom + 24,
//     left: 24),
//     padding: EdgeInsets.all(10),
//     decoration: BoxDecoration(
//     borderRadius: BorderRadius.circular(12),
//     color: onBordingComponet,
//     ),
//     child: SvgPicture.asset(AppIcons.left),
//     ),
//     )
//         : const SizedBox(
//     height: 44,
//     width: 66,
//     ),
//     const Spacer(),
//     AnimatedContainer(
//     duration: const Duration(milliseconds: 250),
//     height: 8,
//     width: thisPage == 0 ? 24 : 8,
//     margin: EdgeInsets.only(
//     bottom: MediaQuery.of(context).padding.bottom + 30, right: 4),
//     decoration: BoxDecoration(
//     color:thisPage==0? onBordingComponet:onBoarding,
//     borderRadius: BorderRadius.circular(12),
//     ),
//     ),
//     AnimatedContainer(
//     duration: const Duration(milliseconds: 250),
//     height: 8,
//     width: thisPage == 1 ? 24 : 8,
//     margin: EdgeInsets.only(
//     bottom: MediaQuery.of(context).padding.bottom + 30,
//     ),
//     decoration: BoxDecoration(
//     color: thisPage==1? onBordingComponet:onBoarding,
//     borderRadius: BorderRadius.circular(12),
//     ),
//     ),
//     const Spacer(),
//     GestureDetector(
//     onTap: () {
//     if (thisPage == 0) {
//     controller.nextPage(
//     duration: const Duration(milliseconds: 300),
//     curve: Curves.ease);
//     } else {
//     Navigator.of(context).pushNamed("/login");
//     }
//     },
//     child: Container(
//     height: 44,
//     width: 44,
//     margin: EdgeInsets.only(
//     bottom: MediaQuery.of(context).padding.bottom + 24,
//     right: 24),
//     padding: const EdgeInsets.all(10),
//     decoration: BoxDecoration(
//     borderRadius: BorderRadius.circular(12),
//     color: onBordingComponet,
//     ),
//     child: SvgPicture.asset(AppIcons.right),
//     )
//     },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   buildSecondPage() {}
// }



import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../../../../assets/constants/colors.dart';
import '../../../../../assets/constants/icons.dart';
import '../../../../../assets/constants/images.dart';
import '../../pages/login.dart';

class SurveyPage extends StatefulWidget {
  const SurveyPage({Key? key}) : super(key: key);

  @override
  State<SurveyPage> createState() => _SurveyPageState();
}

class _SurveyPageState extends State<SurveyPage> {
  final controller = PageController();
  int thisPage = 0;

  @override
  void initState() {
    controller.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: surveyColour,
        body: PageView(
          onPageChanged: (value) {
            thisPage = value;
          },
          controller: controller,
          children: [
            buildFirstPage(),
            buildSecondPage(),
            buildThirdPage(),
          ],
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            thisPage == 1
                ? GestureDetector(
              onTap: () {
                controller.previousPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.ease);
              },
              child: Container(
                height: 44,
                width: 44,
                margin: EdgeInsets.only(
                    bottom:
                    MediaQuery
                        .of(context)
                        .padding
                        .bottom + 24,
                    left: 24),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: onBordingComponet,
                ),
                child: SvgPicture.asset(AppIcons.left),
              ),
            )
                : const SizedBox(
              height: 44,
              width: 66,
            ),
            const Spacer(),
            AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              height: 8,
              width: thisPage == 0 ? 24 : 8,
              margin: EdgeInsets.only(
                  bottom: MediaQuery
                      .of(context)
                      .padding
                      .bottom + 30,
                  right: 4),
              decoration: BoxDecoration(
                color: thisPage == 0 ? onBordingComponet : onBoarding,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              height: 8,
              width: thisPage == 1 ? 24 : 8,
              margin: EdgeInsets.only(
                bottom: MediaQuery
                    .of(context)
                    .padding
                    .bottom + 30,
              ),
              decoration: BoxDecoration(
                color: thisPage == 1 ? onBordingComponet : onBoarding,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                if (thisPage == 0) {
                  controller.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.ease);
                } else {
                  Navigator.of(context).pushNamed("/login");
                }
              },
              child: Container(
                height: 44,
                width: 44,
                margin: EdgeInsets.only(
                    bottom: MediaQuery
                        .of(context)
                        .padding
                        .bottom + 24,
                    right: 24),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: onBordingComponet,
                ),
                child: SvgPicture.asset(AppIcons.right),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildAnimatedContainer(bool isSelected, double height) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      height: height,
      width: isSelected ? 24 : 8,
      margin: EdgeInsets.only(
        bottom: MediaQuery.of(context).padding.bottom + 30,
      ),
      decoration: BoxDecoration(
        color: isSelected ? onBordingComponet : onBoarding,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }


  Widget buildFirstPage() {
    return Column(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20, right: 20),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed("/login");
                      },
                      child: const Text(
                        "O‘tkazib yuborish",
                        style: TextStyle(
                          fontSize: 14,
                          color: black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 0, left: 20),
                  child: const Text(
                    "O‘zbekcha",
                    style: TextStyle(
                      fontSize: 14,
                      color: black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            const Gap(32),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "10 000 dan ortiq \n mahsulotlar va qulay \n interfeys",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: black,
                  ),
                ),
              ),
            ),
            const Gap(10),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "iBaza ilovasida 10 000 dan ortiq mahsulotlar joy  \n olgan",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: black,
                  ),
                ),
              ),
            ),
            const Gap(96),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Image.asset(AppImages.picture_first),
            ),
          ],
        )
      ],
    );
  }

  Widget buildSecondPage() {
    return Column(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20, right: 20),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed("/login");
                      },
                      child: const Text(
                        "O‘tkazib yuborish",
                        style: TextStyle(
                          fontSize: 14,
                          color: black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 0, left: 20),
                  child: const Text(
                    "O‘zbekcha",
                    style: TextStyle(
                      fontSize: 14,
                      color: black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            const Gap(32),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Maxsus chegirmalar!",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: black,
                  ),
                ),
              ),
            ),
            const Gap(10),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Ilova orqali maxsus chegirma va kuponlardan baxramand bo‘ling!",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: black,
                  ),
                ),
              ),
            ),
            const Gap(81),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Image.asset(AppImages.picture_second),
            ),
          ],
        )
      ],
    );
  }


  Widget buildThirdPage() {
    return Column(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20, right: 20),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed("/login");
                        },
                        child: const Text(
                          "O‘tkazib yuborish",
                          style: TextStyle(
                            fontSize: 14,
                            color: black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 0, left: 20),
                    child: const Text(
                      "O‘zbekcha",
                      style: TextStyle(
                        fontSize: 14,
                        color: black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              const Gap(32),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Hoziroq ro‘yxatdan o‘ting!",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: black,
                    ),
                  ),
                ),
              ),
              const Gap(10),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Ro‘yxatdan o‘tib, ilova imkoniyatlaridan to‘liq foydalaning",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: black,
                    ),
                  ),

                ),
              ),
              const Gap(168),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Image.asset(AppImages.picture_third),
              ),
            ],

          ),


          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  if (thisPage == 0) {
                    controller.previousPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.ease,
                    );
                  }
                },
                child: Container(
                  height: 44,
                  width: 44,
                  margin: EdgeInsets.only(
                    bottom: MediaQuery
                        .of(context)
                        .padding
                        .bottom + 30,
                  ),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: onBordingComponet,
                  ),
                  child: SvgPicture.asset(AppIcons.left),
                ),
              ),
              const Spacer(),
              buildAnimatedContainer(thisPage == 0, 24),
              buildAnimatedContainer(thisPage == 1, 16),
              buildAnimatedContainer(thisPage == 2, 8),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  if (thisPage == 2) {
                    // Navigate to the next screen or perform the desired action
                    Navigator.of(context).pushNamed("/next_screen");
                  } else {
                    // Move to the next page within the same screen
                    controller.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.ease,
                    );
                  }
                },
                child: Container(
                  height: 44,
                  width: 44,
                  margin: EdgeInsets.only(
                    bottom: MediaQuery
                        .of(context)
                        .padding
                        .bottom + 30,
                  ),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: onBordingComponet,
                  ),
                  child: SvgPicture.asset(AppIcons.right),
                ),
              ),
            ],
          )

        ]
    );
  }}