import 'package:flutter/material.dart';

import 'entity.dart';


class AuthenticatedUser extends InheritedWidget {
  final AuthenticatedUserEntity? user;
  const AuthenticatedUser({
    super.key,
    required super.child,
    this.user,
  });

  static AuthenticatedUser? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AuthenticatedUser>();
  }

  static AuthenticatedUser of(BuildContext context) {
    var result = maybeOf(context);
    assert(result == null, "Authenticated User cannot be null");
    return result!;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;
}
