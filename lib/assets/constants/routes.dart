import 'package:flutter/material.dart';
import 'package:i_bazaa/feature/authentication/data/models/authenticated_user.dart';
import 'package:i_bazaa/feature/authentication_ibaza/presentation/pages/create_password.dart';
import 'package:i_bazaa/feature/authentication_ibaza/presentation/pages/forgot_password.dart';
import 'package:i_bazaa/feature/authentication_ibaza/presentation/pages/register_screen.dart';
import 'package:i_bazaa/feature/authentication_ibaza/presentation/pages/reset_password.dart';
import 'package:i_bazaa/feature/authentication_ibaza/presentation/pages/reset_password_new.dart';
import 'package:i_bazaa/feature/authentication_ibaza/presentation/pages/verification.dart';
import 'package:i_bazaa/feature/profile_ibaza/presentation/pages/profile_screen.dart';

import '../../core/pages/splash_screen.dart';

import '../../feature/authentication_ibaza/presentation/pages/login.dart';
import '../../feature/authentication_ibaza/presentation/widgets/survey/survey_first.dart';
import 'errorPage.dart';



class RouteGenerator {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {

    var args = settings.arguments;

    switch (settings.name) {
    case '/':
    return MaterialPageRoute(
    builder: (context) => const SplashScreen(),
    );

    case "/survey":
    return MaterialPageRoute(builder: (context) => const SurveyPage());
    // case '/home':
    // return MaterialPageRoute(
    // builder: (context) =>  MyHomePage(),
    // );
    case '/login':
    return MaterialPageRoute(
    builder: (context) => const LoginScreen(),);
    case '/profile':
        return MaterialPageRoute(
          builder: (context) =>  ProfileScreen(),
        );
    case "/forgotPassword":
    return MaterialPageRoute(
    builder: (context) => const ForgotPassword());
    case "/registerScreen":
    return MaterialPageRoute(builder: (context) => const RegisterScreen());
    case "/verificationPage":
    return MaterialPageRoute(
    builder: (context) => const VerificationPage());
    case "/createPassword":
    return MaterialPageRoute(builder: (context) => const CreatePassword());
    case "/resetPassword":
    return MaterialPageRoute(builder: (context) => const ResetPassword());
    case "/resetPasswordNew":
    return MaterialPageRoute(builder: (context) => const ResetPasswordNew());
    default:
    return MaterialPageRoute(
    builder: (context) => const ErrorPage(),
    );


    }
  }
}