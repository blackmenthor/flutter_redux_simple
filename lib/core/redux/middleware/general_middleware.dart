import 'package:flutter/material.dart';
import 'package:flutter_devfest/core/redux/actions/general_actions.dart';
import 'package:flutter_devfest/core/redux/states/app_state/app_state.dart';
import 'package:redux/redux.dart';

/// This middleware will intercept every action related to the Authentication actions.
class GeneralMiddleware implements MiddlewareClass<AppState> {

  @override
  call(Store store, action, next) {
    if (action is StartRefreshAction) {
      _handleRefresh(store, action);
    }

    // Make sure to forward actions to the next middleware in the chain!
    next(action);
  }

  Future<void> _handleRefresh(
      Store<AppState> store, StartRefreshAction action) async {

    // TODO: DO COMPLEX OPERATION HERE (API, LOCAL DB, ETC)
    Future.delayed(
      Duration(seconds: 2),
        () {
          store.dispatch(DoneRefreshAction());
        }
    );
  }
}
