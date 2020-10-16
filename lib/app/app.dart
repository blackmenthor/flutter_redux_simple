import 'package:flutter/material.dart';
import 'package:flutter_devfest/core/redux/states/app_state/app_state.dart';
import 'package:flutter_devfest/core/redux/store.dart';
import 'package:flutter_devfest/ui/home/home_page.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

// ignore: must_be_immutable
class App extends StatelessWidget {

  Store<AppState> store = createStore();

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}
