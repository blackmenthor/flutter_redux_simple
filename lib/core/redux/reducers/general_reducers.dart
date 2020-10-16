import 'package:flutter_devfest/core/redux/actions/general_actions.dart';
import 'package:flutter_devfest/core/redux/states/app_state/app_state.dart';

const Map<Type, Function> generalReducers = {
  //AddAction
  AddAction: _addReducer,

  //SubAction
  SubAction: _subReducer,

  //StartRefreshAction
  StartRefreshAction: _startRefreshReducer,

  //DoneRefreshAction
  DoneRefreshAction: _doneRefreshReducer,
};

AppState _addReducer(
    AddAction action,
    AppState state,
    ) {
  return state.copyWith(
    counter: state.counter + 1,
  );
}

AppState _subReducer(
    SubAction action,
    AppState state,
    ) {
  return state.copyWith(
    counter: state.counter - 1,
  );
}

AppState _startRefreshReducer(
    StartRefreshAction action,
    AppState state,
    ) {
  return state.copyWith(
    isRefreshing: true,
  );
}

AppState _doneRefreshReducer(
    DoneRefreshAction action,
    AppState state,
    ) {
  return state.copyWith(
    isRefreshing: false,
    counter: 0
  );
}