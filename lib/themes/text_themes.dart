// Flutter imports:
import 'package:deposit_app/themes/color_themes.dart';
import 'package:flutter/material.dart';

// Project imports:

abstract class TextThemes {
  static String get fontFamily => base.body1.fontFamily ?? '';

  static _ITextTheme get grey => _CTextTheme(color: ColorThemes.grey);

  static _ITextTheme get darkGrey => _CTextTheme(color: ColorThemes.darkGrey);

  static _ITextTheme get base => _CTextTheme(color: ColorThemes.dark);

  static _ITextTheme get light => _CTextTheme(color: ColorThemes.light);

  static _ITextTheme get white => _CTextTheme(color: Colors.white);
}

abstract class _ITextTheme {
  TextStyle get appBar;

  TextStyle get header1;

  TextStyle get boldHeader;

  TextStyle get smallBold;

  TextStyle get button;

  TextStyle get snackBar;

  TextStyle get body1;

  TextStyle get deposits;
}

class _CTextTheme implements _ITextTheme {
  _CTextTheme._(this._body1, this._deposits, this._button, this._snackBar,
      this._header1, this._boldHeader, this._smallBold, this._appBar);

  factory _CTextTheme({
    final FontWeight? weight,
    final Color? color,
  }) {
    final _base = TextStyle(
      fontFamily: 'Nunito',
      fontWeight: weight,
      color: color,
    );

    final body1 = _base.copyWith(
      fontSize: 16,
    );

    final deposits = _base.copyWith(
      fontWeight: FontWeight.w700,
      fontSize: 16,
    );

    final button = _base.copyWith(
      fontSize: 20,
    );

    final snackBar = _base.copyWith(
      fontWeight: FontWeight.w500,
      fontSize: 14,
    );

    final header1 = _base.copyWith(
      fontSize: 20,
    );

    final boldHeader =
        _base.copyWith(fontSize: 45, fontWeight: FontWeight.w800);

    final smallBold = _base.copyWith(fontSize: 14, fontWeight: FontWeight.bold);

    final appBar = _base.copyWith(fontSize: 16, fontWeight: FontWeight.bold);

    return _CTextTheme._(body1, deposits, button, snackBar, header1, boldHeader,
        smallBold, appBar);
  }

  final TextStyle _body1;
  final TextStyle _deposits;
  final TextStyle _button;
  final TextStyle _snackBar;
  final TextStyle _header1;
  final TextStyle _boldHeader;
  final TextStyle _smallBold;
  final TextStyle _appBar;

  @override
  TextStyle get body1 => _body1;

  @override
  TextStyle get deposits => _deposits;

  @override
  TextStyle get button => _button;

  @override
  TextStyle get appBar => _appBar;

  @override
  TextStyle get snackBar => _snackBar;

  @override
  TextStyle get header1 => _header1;

  @override
  TextStyle get boldHeader => _boldHeader;

  @override
  TextStyle get smallBold => _smallBold;
}
