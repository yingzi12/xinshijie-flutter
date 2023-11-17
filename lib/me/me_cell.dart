import 'package:flutter/material.dart';
import 'package:xinshijie_flutter/common/je_kit/lib/widget/default_cell.dart';

import 'package:xinshijie_flutter/public.dart';

class MeCell extends StatelessWidget {
  final VoidCallback? onPressed;
  final String iconName;
  final String title;

  MeCell({required this.title, required this.iconName, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return DefaultCell(
      title: title,
      leftWidget: Image.asset(iconName),
      isSeparatorVisible: true,
      isArrowVisible: true,
      onPressed: onPressed,
    );
  }
}
