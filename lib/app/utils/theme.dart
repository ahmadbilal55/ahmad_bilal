import 'package:flutter/material.dart';

class AppLabelsTheme {
  final Color primary;
  final Color secondary;
  final Color tertiary;
  final Color quarternary;

  const AppLabelsTheme({
    required this.primary,
    required this.secondary,
    required this.tertiary,
    required this.quarternary,
  });
}

class AppBigTitlesTextTheme {
  final TextStyle hugeTitle;
  final TextStyle hugeTitleBold;
  final TextStyle largeTitle;
  final TextStyle largeTitleBold;

  const AppBigTitlesTextTheme({
    required this.hugeTitle,
    required this.hugeTitleBold,
    required this.largeTitle,
    required this.largeTitleBold,
  });
}

class AppTitlesTextTheme {
  final TextStyle title1;
  final TextStyle title1Bold;
  final TextStyle title2;
  final TextStyle title2SemiBold;
  final TextStyle title2Bold;
  final TextStyle title3;
  final TextStyle title3SemiBold;

  const AppTitlesTextTheme({
    required this.title1,
    required this.title1Bold,
    required this.title2,
    required this.title2SemiBold,
    required this.title2Bold,
    required this.title3,
    required this.title3SemiBold,
  });
}

class AppHeadlinesTextTheme {
  final TextStyle headline;
  final TextStyle headlineBold;

  const AppHeadlinesTextTheme({
    required this.headline,
    required this.headlineBold,
  });
}

class AppBodyTextTheme {
  final TextStyle body;
  final TextStyle bodySemiBold;
  final TextStyle bodyItalic;
  final TextStyle bodyItalicSemiBold;

  const AppBodyTextTheme({
    required this.body,
    required this.bodySemiBold,
    required this.bodyItalic,
    required this.bodyItalicSemiBold,
  });
}

class AppCalloutsTextTheme {
  final TextStyle callout;
  final TextStyle calloutSemiBold;
  final TextStyle calloutItalic;
  final TextStyle calloutItalicSemiBold;

  const AppCalloutsTextTheme({
    required this.callout,
    required this.calloutSemiBold,
    required this.calloutItalic,
    required this.calloutItalicSemiBold,
  });
}

class AppSubHLTextTheme {
  final TextStyle subHeadline;
  final TextStyle subHeadlineSemiBold;
  final TextStyle subHeadlineItalic;
  final TextStyle subHeadlineItalicSemiBold;
  final TextStyle subHeadlineItalicLightBold;

  const AppSubHLTextTheme({
    required this.subHeadline,
    required this.subHeadlineSemiBold,
    required this.subHeadlineItalic,
    required this.subHeadlineItalicSemiBold,
    required this.subHeadlineItalicLightBold,
  });
}

class AppFootnoteTextTheme {
  final TextStyle footnote;
  final TextStyle footnoteSemiBold;
  final TextStyle footnoteItalic;
  final TextStyle footnoteItalicSemiBold;

  const AppFootnoteTextTheme({
    required this.footnote,
    required this.footnoteSemiBold,
    required this.footnoteItalic,
    required this.footnoteItalicSemiBold,
  });
}

class AppCaptionTextTheme {
  final TextStyle caption1;
  final TextStyle caption1SemiBold;
  final TextStyle caption1Italic;
  final TextStyle caption1ItalicSemiBold;
  final TextStyle caption2;
  final TextStyle caption2SemiBold;
  final TextStyle caption2Italic;
  final TextStyle caption2ItalicSemiBold;
  final TextStyle caption3;

  const AppCaptionTextTheme({
    required this.caption1,
    required this.caption1SemiBold,
    required this.caption1Italic,
    required this.caption1ItalicSemiBold,
    required this.caption2,
    required this.caption2SemiBold,
    required this.caption2Italic,
    required this.caption2ItalicSemiBold,
    required this.caption3,
  });
}

class AppRubricsTextTheme {
  final TextStyle rubric1;
  final TextStyle rubric1SemiBold;
  final TextStyle rubric1Bold;
  final TextStyle rubric2;
  final TextStyle rubric2SemiBold;
  final TextStyle rubric2Bold;
  final TextStyle rubric3bold;
  final TextStyle rubric4bold;
  final TextStyle rubric5bold;

  const AppRubricsTextTheme({
    required this.rubric1,
    required this.rubric1SemiBold,
    required this.rubric1Bold,
    required this.rubric2,
    required this.rubric2SemiBold,
    required this.rubric2Bold,
    required this.rubric3bold,
    required this.rubric4bold,
    required this.rubric5bold,
  });
}

class AppTextTheme {
  final AppBigTitlesTextTheme bigTitles;
  final AppTitlesTextTheme titles;
  final AppHeadlinesTextTheme headlines;
  final AppBodyTextTheme body;
  final AppCalloutsTextTheme callouts;
  final AppSubHLTextTheme subHeadlines;
  final AppFootnoteTextTheme footnote;
  final AppCaptionTextTheme caption;
  final AppRubricsTextTheme rubrics;

  const AppTextTheme({
    required this.bigTitles,
    required this.titles,
    required this.headlines,
    required this.body,
    required this.callouts,
    required this.subHeadlines,
    required this.footnote,
    required this.caption,
    required this.rubrics,
  });
}

class AppTintsTheme {
  final Color blue;
  final Color green;
  final Color indigo;
  final Color orange;
  final Color pink;
  final Color purple;
  final Color red;
  final Color teal;
  final Color yellow;

  const AppTintsTheme({
    required this.blue,
    required this.green,
    required this.indigo,
    required this.orange,
    required this.pink,
    required this.purple,
    required this.red,
    required this.teal,
    required this.yellow,
  });
}

class AppBackgroundTheme {
  final Color primary;
  final Color secondary;
  final Color tertiary;
  final Color primaryElevated;
  final Color secondaryElevated;
  final Color tertiaryElevated;
  final Color quartenary;
  final Color quinary;

  const AppBackgroundTheme(
      {required this.primary,
      required this.secondary,
      required this.tertiary,
      required this.primaryElevated,
      required this.secondaryElevated,
      required this.tertiaryElevated,
      required this.quartenary,
      required this.quinary});
}

class AppFillsTheme {
  final Color primary;
  final Color secondary;
  final Color tertiary;
  final Color quartenary;
  final Color quinary;

  const AppFillsTheme(
      {required this.primary,
      required this.secondary,
      required this.tertiary,
      required this.quartenary,
      required this.quinary});
}

class AppOverlaysTheme {
  final Color thick;
  final Color regular;
  final Color thin;
  final Color ultraThin;
  final Color darkener;

  const AppOverlaysTheme({
    required this.thick,
    required this.regular,
    required this.thin,
    required this.ultraThin,
    required this.darkener,
  });
}

class AppSeparatorsTheme {
  final Color opaque;
  final Color nonOpaque;

  const AppSeparatorsTheme({
    required this.opaque,
    required this.nonOpaque,
  });
}

class AppGraysTheme {
  final Color gray1;
  final Color gray2;
  final Color gray3;
  final Color gray4;
  final Color gray5;
  final Color gray6;
  final Color gray7;

  const AppGraysTheme({
    required this.gray1,
    required this.gray2,
    required this.gray3,
    required this.gray4,
    required this.gray5,
    required this.gray6,
    required this.gray7,
  });
}

@immutable
class AppCupertinoTheme extends ThemeExtension<AppCupertinoTheme> {
  const AppCupertinoTheme({
    required this.base,
    required this.disabled,
    required this.picker,
    required this.keyGray,
    required this.tints,
    required this.labels,
    required this.backgrounds,
    required this.fills,
    required this.grays,
    required this.separators,
    required this.overlays,
    required this.textTheme,
  });

  final Color base;
  final Color disabled;
  final Color picker;
  final Color keyGray;
  final AppLabelsTheme labels;
  final AppTintsTheme tints;
  final AppGraysTheme grays;
  final AppBackgroundTheme backgrounds;
  final AppFillsTheme fills;
  final AppSeparatorsTheme separators;
  final AppOverlaysTheme overlays;
  final AppTextTheme textTheme;

  @override
  AppCupertinoTheme copyWith({
    Color? success,
    Color? info,
    Color? warning,
    Color? danger,
    AppTintsTheme? tints,
    AppGraysTheme? grays,
    AppLabelsTheme? labels,
    AppBackgroundTheme? backgrounds,
    AppFillsTheme? fills,
    AppOverlaysTheme? overlays,
    AppSeparatorsTheme? separators,
    AppTextTheme? appTextTheme,
  }) {
    return AppCupertinoTheme(
      base: success ?? this.base,
      disabled: info ?? this.disabled,
      picker: warning ?? this.picker,
      keyGray: danger ?? this.keyGray,
      labels: labels ?? this.labels,
      tints: tints ?? this.tints,
      fills: fills ?? this.fills,
      grays: grays ?? this.grays,
      separators: separators ?? this.separators,
      backgrounds: backgrounds ?? this.backgrounds,
      overlays: overlays ?? this.overlays,
      textTheme: appTextTheme ?? this.textTheme,
    );
  }

  // Controls how the properties change on theme changes
  @override
  AppCupertinoTheme lerp(ThemeExtension<AppCupertinoTheme>? other, double t) {
    return this;
  }

  static const _textTheme = AppTextTheme(
    bigTitles: AppBigTitlesTextTheme(
      hugeTitle: TextStyle(
        fontFamily: 'quicksand',
        fontSize: 60,
        height: 70 / 60,
        letterSpacing: 0.25,
      ),
      hugeTitleBold: TextStyle(
        fontFamily: 'quicksand',
        fontSize: 60,
        height: 70 / 60,
        letterSpacing: 0.25,
        fontWeight: FontWeight.bold,
      ),
      largeTitle: TextStyle(
        fontFamily: 'quicksand',
        fontSize: 34,
        height: 41 / 34,
        letterSpacing: 0.37,
      ),
      largeTitleBold: TextStyle(
        fontFamily: 'quicksand',
        fontSize: 34,
        height: 41 / 34,
        letterSpacing: 0.37,
        fontWeight: FontWeight.bold,
      ),
    ),
    titles: AppTitlesTextTheme(
      title1: TextStyle(
        fontFamily: 'quicksand',
        fontSize: 28,
        height: 34 / 28,
        letterSpacing: 0.36,
      ),
      title1Bold: TextStyle(
        fontFamily: 'quicksand',
        fontSize: 28,
        height: 34 / 28,
        letterSpacing: 0.36,
        fontWeight: FontWeight.bold,
      ),
      title2: TextStyle(
        fontFamily: 'quicksand',
        fontSize: 22,
        height: 28 / 22,
        letterSpacing: 0.35,
      ),
      title2SemiBold: TextStyle(
        fontFamily: 'quicksand',
        fontSize: 22,
        height: 28 / 22,
        letterSpacing: 0.35,
        fontWeight: FontWeight.w700,
      ),
      title2Bold: TextStyle(
        fontFamily: 'quicksand',
        fontSize: 22,
        height: 28 / 22,
        letterSpacing: 0.35,
        fontWeight: FontWeight.bold,
      ),
      title3: TextStyle(
        fontFamily: 'quicksand',
        fontSize: 20,
        height: 22 / 20,
        letterSpacing: 0.38,
      ),
      title3SemiBold: TextStyle(
        fontFamily: 'quicksand',
        fontSize: 20,
        height: 24 / 20,
        letterSpacing: 0.38,
        fontWeight: FontWeight.w600,
      ),
    ),
    headlines: AppHeadlinesTextTheme(
      headline: TextStyle(
        fontFamily: 'quicksand',
        fontSize: 17,
        height: 22 / 17,
        letterSpacing: -0.41,
        fontWeight: FontWeight.w600,
      ),
      headlineBold: TextStyle(
        fontFamily: 'quicksand',
        fontSize: 17,
        height: 22 / 17,
        letterSpacing: -0.41,
        fontWeight: FontWeight.bold,
      ),
    ),
    body: AppBodyTextTheme(
      body: TextStyle(
        fontFamily: 'quicksand',
        fontSize: 17,
        height: 22 / 17,
        letterSpacing: -0.41,
      ),
      bodySemiBold: TextStyle(
        fontFamily: 'quicksand',
        fontSize: 17,
        height: 22 / 17,
        letterSpacing: -0.41,
        fontWeight: FontWeight.w600,
      ),
      bodyItalic: TextStyle(
        fontFamily: 'quicksand',
        fontSize: 17,
        height: 22 / 17,
        letterSpacing: -0.41,
        fontStyle: FontStyle.italic,
      ),
      bodyItalicSemiBold: TextStyle(
        fontFamily: 'quicksand',
        fontSize: 17,
        height: 22 / 17,
        letterSpacing: -0.41,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
      ),
    ),
    callouts: AppCalloutsTextTheme(
      callout: TextStyle(
        fontFamily: 'quicksand',
        fontSize: 16,
        height: 21 / 16,
        letterSpacing: -0.32,
      ),
      calloutSemiBold: TextStyle(
          fontFamily: 'quicksand',
          fontSize: 16,
          height: 21 / 16,
          letterSpacing: -0.32,
          fontWeight: FontWeight.w600),
      calloutItalic: TextStyle(
        fontFamily: 'quicksand',
        fontSize: 16,
        height: 21 / 16,
        letterSpacing: -0.32,
        fontStyle: FontStyle.italic,
      ),
      calloutItalicSemiBold: TextStyle(
        fontFamily: 'quicksand',
        fontSize: 16,
        height: 21 / 16,
        letterSpacing: -0.32,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.w600,
      ),
    ),
    subHeadlines: AppSubHLTextTheme(
      subHeadline: TextStyle(
        fontFamily: 'quicksand',
        fontSize: 15,
        height: 20 / 15,
        letterSpacing: -0.24,
      ),
      subHeadlineSemiBold: TextStyle(
        fontFamily: 'quicksand',
        fontSize: 15,
        height: 20 / 15,
        letterSpacing: -0.24,
        fontWeight: FontWeight.w600,
      ),
      subHeadlineItalic: TextStyle(
        fontFamily: 'quicksand',
        fontSize: 15,
        height: 20 / 15,
        letterSpacing: -0.24,
        fontStyle: FontStyle.italic,
      ),
      subHeadlineItalicSemiBold: TextStyle(
        fontFamily: 'quicksand',
        fontSize: 15,
        height: 20 / 15,
        letterSpacing: -0.24,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.w600,
      ),
      subHeadlineItalicLightBold: TextStyle(
        fontFamily: 'quicksand',
        fontSize: 15,
        height: 20 / 15,
        letterSpacing: -0.24,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.w400,
      ),
    ),
    footnote: AppFootnoteTextTheme(
      footnote: TextStyle(
        fontFamily: 'quicksand',
        fontSize: 13,
        height: 16 / 13,
        letterSpacing: -0.08,
      ),
      footnoteSemiBold: TextStyle(
        fontFamily: 'quicksand',
        fontSize: 13,
        height: 16 / 13,
        letterSpacing: -0.08,
        fontWeight: FontWeight.w600,
      ),
      footnoteItalic: TextStyle(
        fontFamily: 'quicksand',
        fontSize: 13,
        height: 16 / 13,
        letterSpacing: -0.08,
        fontStyle: FontStyle.italic,
      ),
      footnoteItalicSemiBold: TextStyle(
        fontFamily: 'quicksand',
        fontSize: 13,
        height: 16 / 14,
        letterSpacing: -0.08,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.w600,
      ),
    ),
    caption: AppCaptionTextTheme(
      caption1: TextStyle(
        fontFamily: 'quicksand',
        fontSize: 12,
        height: 16 / 12,
      ),
      caption1SemiBold: TextStyle(
        fontFamily: 'quicksand',
        fontSize: 12,
        height: 16 / 12,
        fontWeight: FontWeight.w600,
      ),
      caption1Italic: TextStyle(
        fontFamily: 'quicksand',
        fontSize: 12,
        height: 16 / 12,
        fontStyle: FontStyle.italic,
      ),
      caption1ItalicSemiBold: TextStyle(
        fontFamily: 'quicksand',
        fontSize: 12,
        height: 16 / 12,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.w600,
      ),
      caption2: TextStyle(
        fontFamily: 'quicksand',
        fontSize: 11,
        height: 12 / 11,
      ),
      caption2SemiBold: TextStyle(
        fontFamily: 'quicksand',
        fontSize: 11,
        height: 13 / 11,
        fontWeight: FontWeight.w600,
      ),
      caption2Italic: TextStyle(
        fontFamily: 'quicksand',
        fontSize: 11,
        height: 13 / 11,
        fontStyle: FontStyle.italic,
      ),
      caption2ItalicSemiBold: TextStyle(
        fontFamily: 'quicksand',
        fontSize: 11,
        height: 13 / 11,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.w600,
      ),
      caption3: TextStyle(
        fontFamily: 'quicksand',
        fontSize: 10,
        height: 12 / 10,
      ),
    ),
    rubrics: AppRubricsTextTheme(
      rubric1: TextStyle(
        fontFamily: 'quicksand',
        fontSize: 15,
        height: 22 / 15,
        letterSpacing: -0.21,
      ),
      rubric1SemiBold: TextStyle(
        fontFamily: 'quicksand',
        fontSize: 15,
        height: 22 / 15,
        letterSpacing: -0.21,
        fontWeight: FontWeight.w600,
      ),
      rubric1Bold: TextStyle(
        fontFamily: 'quicksand',
        fontSize: 15,
        height: 22 / 15,
        letterSpacing: -0.21,
        fontWeight: FontWeight.bold,
      ),
      rubric2: TextStyle(
        fontFamily: 'quicksand',
        fontSize: 13,
        height: 18 / 13,
        letterSpacing: -0.13,
      ),
      rubric2SemiBold: TextStyle(
        fontFamily: 'quicksand',
        fontSize: 13,
        height: 18 / 13,
        letterSpacing: -0.13,
        fontWeight: FontWeight.w600,
      ),
      rubric2Bold: TextStyle(
        fontFamily: 'quicksand',
        fontSize: 13,
        height: 18 / 13,
        letterSpacing: -0.13,
        fontWeight: FontWeight.bold,
      ),
      rubric3bold: TextStyle(
        fontFamily: 'quicksand',
        fontSize: 17,
        height: 22 / 17,
        letterSpacing: -0.41,
        fontWeight: FontWeight.bold,
      ),
      rubric4bold: TextStyle(
        fontFamily: 'quicksand',
        fontSize: 11,
        height: 16 / 11,
        letterSpacing: -0.41,
        fontWeight: FontWeight.bold,
      ),
      rubric5bold: TextStyle(
        fontFamily: 'quicksand',
        fontSize: 9,
        height: 22 / 9,
        letterSpacing: 0,
        fontWeight: FontWeight.bold,
      ),
    ),
  );

  // the dark theme
  static const dark = AppCupertinoTheme(
    base: Color(0xFFFFFFFF),
    disabled: Color(0xFF757575),
    picker: Color(0xFF222222),
    keyGray: Color(0xFF2E2E2E),
    labels: AppLabelsTheme(
      primary: Color(0xFFFFFFFF),
      secondary: Color(0x99EBEBF5),
      tertiary: Color(0x4DEBEBF5),
      quarternary: Color(0x31EBEBF5),
    ),
    tints: AppTintsTheme(
      blue: Color(0xFF0A84FF),
      green: Color(0xFF32D74B),
      indigo: Color(0xFF5E5CE6),
      orange: Color(0xFFFF9F0A),
      pink: Color(0xFFFF375F),
      purple: Color(0xFFBF5AF2),
      red: Color(0xFFFF453A),
      teal: Color(0xFF64D2FF),
      yellow: Color(0xFFFFD60A),
    ),
    grays: AppGraysTheme(
      gray1: Color(0xFF8E8E93),
      gray2: Color(0xFF636366),
      gray3: Color(0xFF48484A),
      gray4: Color(0xFF3A3A3C),
      gray5: Color(0xFF2C2C2E),
      gray6: Color(0xFF1C1C1E),
      gray7: Color(0xFF383838),
    ),
    backgrounds: AppBackgroundTheme(
        primary: Color(0xFF000000),
        secondary: Color(0xFF1C1C1E),
        tertiary: Color(0xFF2C2C2E),
        primaryElevated: Color(0xFF1C1C1E),
        secondaryElevated: Color(0xFF2C2C2E),
        tertiaryElevated: Color(0xFF3A3A3C),
        quartenary: Color(0xFF89B4E3),
        quinary: Color(0xFFC6D9EC)),
    fills: AppFillsTheme(
        primary: Color(0x80787880),
        secondary: Color(0x52787880),
        tertiary: Color(0x3D6F7278),
        quartenary: Color(0x2E747480),
        quinary: Color(0xFF007AFF)),
    separators: AppSeparatorsTheme(
      opaque: Color(0xFF252627),
      nonOpaque: Color(0xB3545458),
    ),
    overlays: AppOverlaysTheme(
      thick: Color(0xEB202020),
      regular: Color(0xC7202122),
      thin: Color(0x99303030),
      ultraThin: Color(0x80464646),
      darkener: Color(0x12000000),
    ),
    textTheme: _textTheme,
  );

  // the light theme
  static const light = AppCupertinoTheme(
    base: Color(0xFF000000),
    disabled: Color(0xFF979592),
    picker: Color(0xFFD5D9DF),
    keyGray: Color(0xFFB4BBC6),
    labels: AppLabelsTheme(
      primary: Color(0xFF000000),
      secondary: Color(0xFF8A8A8E),
      tertiary: Color(0xFFBFBFC1),
      quarternary: Color(0xFFDCDCDD),
    ),
    tints: AppTintsTheme(
      blue: Color(0xFF007AFF),
      green: Color(0xFF34C759),
      indigo: Color(0xFF5856D6),
      orange: Color(0xFFFF9F0A),
      pink: Color(0xFFFF2D55),
      purple: Color(0xFFAF52DE),
      red: Color(0xFFFF3B30),
      teal: Color(0xFF5AC8FA),
      yellow: Color(0xFFFFCC00),
    ),
    grays: AppGraysTheme(
      gray1: Color(0xFF8E8E93),
      gray2: Color(0xFFAEAEB2),
      gray3: Color(0xFFC7C7CC),
      gray4: Color(0xFFD1D1D6),
      gray5: Color(0xFFE5E5EA),
      gray6: Color(0xFFF2F2F7),
      gray7: Color(0xFFF2F2F2),
    ),
    backgrounds: AppBackgroundTheme(
        primary: Color(0xFFFFFFFF),
        secondary: Color(0xFFF2F2F7),
        tertiary: Color(0xFFFAFAFA),
        primaryElevated: Color(0xFF1C1C1E),
        secondaryElevated: Color(0xFF2C2C2E),
        tertiaryElevated: Color(0xFF3A3A3C),
        quartenary: Color(0xFF89B4E3),
        quinary: Color(0xFFC6D9EC)),
    fills: AppFillsTheme(
        primary: Color(0xFFE4E4E6),
        secondary: Color(0xFFD5D5D5),
        tertiary: Color(0xFFEFEFF0),
        quartenary: Color(0xFFF4F4F5),
        quinary: Color(0xFF007AFF)),
    textTheme: _textTheme,
    separators: AppSeparatorsTheme(
      opaque: Color(0xFFC6C6C8),
      nonOpaque: Color(0xFFBFBFC1),
    ),
    overlays: AppOverlaysTheme(
      thick: Color(0xFFFDFDFD),
      regular: Color(0xFFFAFAFA),
      thin: Color(0xFFF4F4F4),
      ultraThin: Color(0xFFF7F7F7),
      darkener: Color(0xFFE6E6E6),
    ),
  );
}
