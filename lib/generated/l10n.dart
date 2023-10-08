// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  String get appBar1 {
    return Intl.message(
      'This is App',
      name: 'appBar1',
      desc: '',
      args: [],
    );
  }

  String get appBar2 {
    return Intl.message(
      'More',
      name: 'appBar2',
      desc: '',
      args: [],
    );
  }

  String get title1 {
    return Intl.message(
      'Top Likes',
      name: 'title1',
      desc: '',
      args: [],
    );
  }

  String get title2 {
    return Intl.message(
      'Listen Audios',
      name: 'title2',
      desc: '',
      args: [],
    );
  }
  String get title3 {
    return Intl.message(
      'Setting',
      name: 'title3',
      desc: '',
      args: [],
    );
  }
  String get txt1 {
    return Intl.message(
      'Text Sample 1',
      name: 'txt1',
      desc: '',
      args: [],
    );
  }
  String get txt2 {
    return Intl.message(
      'Text Sample 2',
      name: 'txt2',
      desc: '',
      args: [],
    );
  }
  String get txt3 {
    return Intl.message(
      'Text Sample 3',
      name: 'txt3',
      desc: '',
      args: [],
    );
  }
  String get txt4 {
    return Intl.message(
      'Text Sample 4',
      name: 'txt4',
      desc: '',
      args: [],
    );
  }
  String get txt5 {
    return Intl.message(
      'Text Sample 5',
      name: 'txt5',
      desc: '',
      args: [],
    );
  }
  String get txt6 {
    return Intl.message(
      'Text Sample 6',
      name: 'txt6',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
