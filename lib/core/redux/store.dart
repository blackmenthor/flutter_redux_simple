import 'package:flutter_devfest/core/redux/states/app_state/app_state.dart';
import 'reducers/reducer.dart' as Reducer;
import 'package:redux/redux.dart';

Store<AppState> createStore() {
  return Store<AppState>(
    Reducer.reduce,
    initialState: AppState(),
  );
}