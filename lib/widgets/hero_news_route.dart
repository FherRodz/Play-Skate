import 'package:flutter/material.dart';

class HeroNewsRoute<T> extends PageRoute<T>{
  final WidgetBuilder _builder;

  HeroNewsRoute({required WidgetBuilder builder,
    RouteSettings? settings,
    bool fullscreenDialogue = false,
  }) : _builder = builder,
        super(settings: settings, fullscreenDialog: fullscreenDialogue);

  @override
  bool get opaque => false;

  @override
  bool get barrierDismissible => true;

  @override
  Color? get barrierColor => Colors.black54;

  @override
  String? get barrierLabel => 'Pop up menu';

  @override
  bool get maintainState => true;

  @override
  Duration get transitionDuration => const Duration(microseconds: 300);

  @override
  Widget buildTransition(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child){
    return child;
  }

  @override
  Widget buildPage(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
    return _builder(context);
  }

}
