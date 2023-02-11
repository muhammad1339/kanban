import 'package:flutter/material.dart';

Route createRoute(Widget page) {
  return PageRouteBuilder(
    fullscreenDialog: true,
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionDuration: const Duration(milliseconds: 400),
    transitionsBuilder: (_, anim, __, child) {
      return SlideTransition(
        position: Tween(begin: const Offset(1, 0), end: const Offset(0, 0)).animate(anim),
        child: child,
      );
    },
  );
}
