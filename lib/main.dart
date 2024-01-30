// import 'package:flutter/material.dart';
// import 'core/adapter/hive_type_adapter.dart';
// import 'core/database/objectbox.dart';
// import 'core/injector/set_up_locator.dart';
// import 'core/injector/storage_repository.dart';
// import 'feature/authentication/data/models/authenticated_user.dart';
//
// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   registerAdapters();
//
//   await HiveSingleton.getInstance();
//   await LocalDatabase.getInstance();
//   await initHive();
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
//


//
//
// import 'package:flutter/material.dart';
// import 'package:i_bazaa/core/pages/splash_screen.dart';
// import 'package:i_bazaa/feature/authentication_ibaza/presentation/pages/create_password.dart';
// import 'package:i_bazaa/feature/authentication_ibaza/presentation/pages/myHomePage.dart';
// import 'package:i_bazaa/feature/authentication_ibaza/presentation/pages/register_screen.dart';
// import 'package:i_bazaa/feature/authentication_ibaza/presentation/pages/verification.dart';
// import 'package:i_bazaa/feature/authentication_ibaza/presentation/widgets/survey/survey_first.dart';
// import 'feature/authentication_ibaza/data/authenticated_user.dart';
// import 'feature/authentication_ibaza/presentation/pages/forgot_password.dart';
// import 'feature/authentication_ibaza/presentation/pages/login.dart';
// import 'feature/authentication_ibaza/presentation/pages/reset_password.dart';
// import 'feature/authentication_ibaza/presentation/pages/reset_password_new.dart';
//
// void main() {
//   runApp(const App());
// }
//
// class App extends StatefulWidget {
//   const App({Key? key}) : super(key: key);
//
//   @override
//   State<App> createState() => _AppState();
// }
//
// class _AppState extends State<App> {
//   final _navigatorKey = GlobalKey<NavigatorState>();
//
//   NavigatorState get _navigator => _navigatorKey.currentState!;
//
//   @override
//   Widget build(BuildContext context) => MaterialApp(
//     debugShowCheckedModeBanner: false,
//     title: 'Ibaza',
//
//     navigatorKey: _navigatorKey,
//     onGenerateRoute: (settings) => MaterialPageRoute(
//       builder: (_) => const SizedBox(),
//     ),
//     home:  AuthenticatedUser(
//       child: Builder(builder: (context) {
//         print("Came here");
//
//         if (AuthenticatedUser.maybeOf(context)
//             ?.user == null) {
//           return const SurveyPage();
//         } else {
//           return SplashScreen();
//         }
//       }),
//     ),
//   );



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'assets/constants/routes.dart';

void main() {
  runApp(const App());
}
class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);
  @override
  State<App> createState() => _AppState();
}
class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'IBaza',

    onGenerateRoute: RouteGenerator.onGenerateRoute,

  );
}


