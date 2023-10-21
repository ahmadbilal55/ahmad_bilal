import 'package:flutter/material.dart';

import 'utils/theme.dart';

extension BuildContextExt on BuildContext {
  
  AppCupertinoTheme get theme => Theme.of(this).extension<AppCupertinoTheme>()!;

  MediaQueryData get mediaQuery => MediaQuery.of(this);
}

