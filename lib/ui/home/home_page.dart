import 'package:flutter/material.dart';
import 'package:flutter_devfest/core/redux/actions/general_actions.dart';
import 'package:flutter_devfest/core/redux/states/app_state/app_state.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, int>(
      converter: (Store<AppState> store) => store.state.counter,
      builder: (context, counter) {
        Store<AppState> store = StoreProvider.of<AppState>(context);
        return Scaffold(
          appBar: AppBar(
            title: Text(title),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  '$counter',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
          ),
          floatingActionButton: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: FloatingActionButton(
                  onPressed: () => store.dispatch(SubAction()),
                  tooltip: 'Increment',
                  child: Icon(Icons.remove),
                ),
              ),
              FloatingActionButton(
                onPressed: () => store.dispatch(AddAction()),
                tooltip: 'Decrement',
                child: Icon(Icons.add),
              ),
            ],
          ),
        );
      },
    );
  }
}
