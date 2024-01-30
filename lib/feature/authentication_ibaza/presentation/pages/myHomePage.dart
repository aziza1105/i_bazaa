import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/injector/set_up_locator.dart';
import '../../../../core/injector/storage_repository.dart';
import '../../../authentication/data/models/authenticated_user.dart';

class MyHomePage extends StatefulWidget {


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() async {
    await HiveSingleton.setAuthStatus(true);
    await box?.put('is_hive', 'aziza');
    await box?.put(
        'auth_user',
        AuthenticatedUserModel(
            id: '12345678', firstName: 'Aziza', lastName: 'Narziyeva'));
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //  title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Is Authenticated : ${HiveSingleton.getAutStatus()}',
            ),
            Text(
              'Is Hive  : ${box?.get('is_hive', defaultValue: 'incorrect')}',
            ),
            Text(
              '  ${box?.get('auth_user')}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}