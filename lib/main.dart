// import 'dart:io';
//
// import 'package:flutter/material.dart';
//
// import 'package:image_picker/image_picker.dart';
//
// import 'core/adapter/hive_type_adapter.dart';
// import 'core/database/objectbox.dart';
// import 'core/injector/set_up_locator.dart';
// import 'core/injector/storage_repository.dart';
//
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
//         title: 'Flutter Demo',
//         theme: ThemeData(
//           colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//           useMaterial3: true,
//         ),
//         home: MyHomePage(title: '12',)
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   File? avatar;
//
//   Future<void> pickAvatar()async{
//     ImagePicker imagePicker = ImagePicker();
//     final file = await imagePicker.pickImage(source: ImageSource.gallery);
//     if(file != null){
//       setState(() {
//         avatar = File.fromUri(Uri.file(file.path));
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//           title: Text(widget.title),
//         ),
//         body: Column(
//           children: [
//             const SizedBox(height: 20,),
//             Align(
//               child: Container(
//                   width: 150,
//                   height: 150,
//                   clipBehavior: Clip.hardEdge,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     border: Border.all(width: 1,color: Colors.grey),
//                   ),
//                   child: avatar == null ? const Icon(
//                     Icons.person,size: 100,
//                     color: Colors.grey,
//                   ) : Image.file(avatar!,fit: BoxFit.cover,)
//               ),
//             )
//
//           ],
//         ),
//         // Center(
//         //   child: Column(
//         //     mainAxisAlignment: MainAxisAlignment.center,
//         //     children: <Widget>[
//         //       Text(
//         //         'Is Authenticated : ${HiveSingleton.getAutStatus()}',
//         //       ),
//         //       Text(
//         //         'Is Hive  : ${box?.get('is_hive', defaultValue: 'incorrect')}',
//         //       ),
//         //       Text(
//         //         '  ${box?.get('auth_user')}',
//         //         style: Theme.of(context).textTheme.headlineMedium,
//         //       ),
//         //     ],
//         //   ),
//         // ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: pickAvatar,
//           tooltip: 'Choose avatar',
//           child: const Icon(Icons.add),
//         )
//     );
//   }
// }
//
//
//
//
//
//
//
//








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


