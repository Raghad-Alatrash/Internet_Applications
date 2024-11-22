import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:just_the_tooltip/just_the_tooltip.dart';

class ToolTipWidget extends StatelessWidget {
  const ToolTipWidget({super.key, required this.childWidget, required this.contentText});
 final Widget childWidget;
 final String contentText;

  @override
  Widget build(BuildContext context) {
    return JustTheTooltip(
      child:childWidget,
      content: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
            contentText),
      )
    );
  }
}
