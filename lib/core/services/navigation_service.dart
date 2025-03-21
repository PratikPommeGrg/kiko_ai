import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Pops the current route off the stack.
void back(BuildContext context, [dynamic result]) {
  GoRouter.of(context).pop(result);
}

/// Pushes a new route onto the stack.
void navigatePush(BuildContext context, String routeName, {Object? extra}) {
  GoRouter.of(context).push(routeName, extra: extra);
}

/// Pushes a named route onto the stack.
void navigatePushNamed(
  BuildContext context,
  String routeName, {
  Map<String, String> params = const {},
  Map<String, dynamic> queryParams = const {},
  Object? extra,
}) {
  GoRouter.of(context).pushNamed(
    routeName,
    pathParameters: params,
    queryParameters: queryParams,
    extra: extra,
  );
}

/// Replaces the current route with a new one.
void navigatePushReplacement(
  BuildContext context,
  String routeName, {
  Object? extra,
}) {
  GoRouter.of(context).pushReplacement(routeName, extra: extra);
}

/// Replaces the current route with a named route.
void navigatePushReplacementNamed(
  BuildContext context,
  String routeName, {
  Map<String, String> params = const {},
  Map<String, dynamic> queryParams = const {},
  Object? extra,
}) {
  GoRouter.of(context).pushReplacementNamed(
    routeName,
    pathParameters: params,
    queryParameters: queryParams,
    extra: extra,
  );
}

/// Removes all previous routes and navigates to a new route.
void navigateGo(BuildContext context, String routeName, {Object? extra}) {
  GoRouter.of(context).go(routeName, extra: extra);
}

/// Removes all previous routes and navigates to a named route.
void navigateGoNamed(
  BuildContext context,
  String routeName, {
  Map<String, String> params = const {},
  Map<String, dynamic> queryParams = const {},
  Object? extra,
}) {
  GoRouter.of(context).goNamed(
    routeName,
    pathParameters: params,
    queryParameters: queryParams,
    extra: extra,
  );
}
