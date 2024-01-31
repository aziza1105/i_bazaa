// import 'dart:io';
//
// import 'package:file_picker/file_picker.dart';
// import 'package:flutter/material.dart';
//
// import 'package:image_picker/image_picker.dart';
// import 'package:open_file/open_file.dart';
// import 'package:pinput/pinput.dart';
// import 'package:share_plus/share_plus.dart';
//
//
// import 'core/adapter/hive_type_adapter.dart';
// import 'core/database/objectbox.dart';
// import 'core/injector/set_up_locator.dart';
// import 'core/injector/storage_repository.dart';
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
//         home: MyHomePage(
//           title: '12',
//         ));
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
//   Future<void> pickAvatar() async {
//     ImagePicker imagePicker = ImagePicker();
//     final file = await imagePicker.pickImage(source: ImageSource.camera);
//     if (file != null) {
//       setState(() {
//         avatar = File.fromUri(Uri.file(file.path));
//       });
//     }
//   }
//
//   List<File> files = [];
//
//   Future<void> pickFile() async {
//     final result = await FilePicker.platform.pickFiles();
//     if (result != null && result.files.isNotEmpty) {
//       files.addAll(
//         result.files
//             .map((file) => File.fromUri(
//                   Uri.file(file.path ?? ''),
//                 ))
//             .toList(),
//       );
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
//         body: Column(children: [
//           const SizedBox(
//             height: 20,
//           ),
//           Align(
//             child: Container(
//                 width: 150,
//                 height: 150,
//                 clipBehavior: Clip.hardEdge,
//                 decoration: BoxDecoration(
//                   shape: BoxShape.circle,
//                   border: Border.all(width: 1, color: Colors.grey),
//                 ),
//                 child: avatar == null
//                     ? const Icon(
//                         Icons.person,
//                         size: 100,
//                         color: Colors.grey,
//                       )
//                     : Image.file(
//                         avatar!,
//                         fit: BoxFit.cover,
//                       )),
//           ),
//           const SizedBox(),
//           Wrap(
//               spacing: 20,
//               runSpacing: 20,
//               children: List.generate(
//                   files.length,
//                   (index) => GestureDetector(
//                         onTap: () async {
//                           await OpenFile.open(files[index].path);
//                         },
//                       onLongPress: () async {
//                          // await Share.share("Hi, my name is Aziza");
//                          await Share.shareXFiles([XFile(files[index].path)]);
//                       },
//                         child: Container(
//                           padding: const EdgeInsets.all(10),
//                           decoration: BoxDecoration(
//                             color: Colors.brown,
//                             borderRadius: BorderRadius.circular(8),
//                           ),
//                           child: Text(
//                             files[index].path.split(Platform.pathSeparator)
//                                 .last,
//                             style: const TextStyle(
//                               fontSize: 14,
//                               color: Colors.white,
//                               fontWeight: FontWeight.w600,
//                             ),
//                           ),
//                         ),
//                       )))
//         ]),
//         floatingActionButton: Row(
//           children: [
//             FloatingActionButton(
//               onPressed: pickAvatar,
//               tooltip: 'Choose avatar',
//               child: const Icon(Icons.add),
//             ),
//             FloatingActionButton(
//               onPressed: pickFile,
//               tooltip: 'Choose avatar',
//               child: const Icon(Icons.add),
//             )
//           ],
//         )
//     );
//   }
// }
//



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

import 'assets/constants/routes.dart';
import 'core/adapter/hive_type_adapter.dart';
import 'core/database/objectbox.dart';
import 'core/injector/set_up_locator.dart';
import 'core/injector/storage_repository.dart';


void main() async {


  registerAdapters();
  WidgetsFlutterBinding.ensureInitialized();
  await StorageRepository.getInstance();
  await HiveSingleton.getInstance();
  await LocalDatabase.getInstance();
  await Hive.initFlutter();
  var boxname = await Hive.openBox("name");
  var boxlocation = await Hive.openBox("location");
  var boxavatar = await Hive.openBox("avatar");

  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

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