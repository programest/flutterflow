import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['ru', 'en'];

  String get languageCode => locale.toString();
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? ruText = '',
    String? enText = '',
  }) =>
      [ruText, enText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      FFLocalizations.languages().contains(locale.toString());

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // HomePage
  {
    '53ih23iy': {
      'ru': 'Питание,которое полюбит ваш питомец',
      'en': '',
    },
    '250wuqr6': {
      'ru': 'Натуральные рационы питания для собак\nпо системе BARF',
      'en': '',
    },
    'e7rahhth': {
      'ru': 'Выбрать рацион',
      'en': '',
    },
    '1difpry0': {
      'ru': 'ZOOOV',
      'en': '',
    },
    'ik2dn190': {
      'ru': 'Что такое BARF',
      'en': '',
    },
    'moqbxys5': {
      'ru':
          'BARF (Biologically Appropriate Raw Food) — система питания собак, основанная на сырых натуральных продуктах. Такой рацион максимально приближен к естественному пищевому поведению хищников, а значит биологически правилен. ',
      'en': '',
    },
    'dvruyiib': {
      'ru': 'После перехода на питание\nпо системе BARF у собак:',
      'en': '',
    },
    '5y6faok7': {
      'ru': 'Нормализуется пищеварение',
      'en': '',
    },
    'jn8qlyda': {
      'ru': 'Проходят аллергические реакции',
      'en': '',
    },
    'mh9logdi': {
      'ru': 'Прекращается образование зубного камня',
      'en': '',
    },
    'pzck871q': {
      'ru': 'Появляется больше энергии',
      'en': '',
    },
    '0gouc5lb': {
      'ru': 'Увеличивается продолжительность жизни',
      'en': '',
    },
    'umm5kwic': {
      'ru': 'Для щенков',
      'en': '',
    },
    '4c6heau4': {
      'ru': 'Мясо - 58%',
      'en': '',
    },
    '2g8rnvp5': {
      'ru': 'Hello World',
      'en': '',
    },
    '8knx1v7i': {
      'ru': 'Рационы ZOOOV',
      'en': '',
    },
    '3nfwpkfj': {
      'ru': 'Заказать',
      'en': '',
    },
    'cn1q3xdp': {
      'ru': 'Для взрослых собак ',
      'en': '',
    },
    'p3lirro0': {
      'ru': 'Индейка/Говядина',
      'en': '',
    },
    'ltci84t3': {
      'ru':
          'Подходит для ежедвеного кормления. Богат животными белками и Омега-3.',
      'en': '',
    },
    'an6kxvj9': {
      'ru': '700г / 500г / 300г / 150г / 100г',
      'en': '',
    },
    'yjiw60k6': {
      'ru': 'Заказать',
      'en': '',
    },
    '70r8g476': {
      'ru': 'Для взрослых собак ',
      'en': '',
    },
    '6kzw90gj': {
      'ru': 'Индейка/Говядина',
      'en': '',
    },
    '6nku4a05': {
      'ru':
          'Подходит для ежедвеного кормления. Богат животными белками и Омега-3.',
      'en': '',
    },
    'sxosuwzi': {
      'ru': '700г / 500г / 300г / 150г / 100г',
      'en': '',
    },
    'udnn3nkg': {
      'ru': 'Заказать',
      'en': '',
    },
    '6cmkaurf': {
      'ru': 'Частые вопросы',
      'en': '',
    },
    '5eb8nsec': {
      'ru': 'Не опасны ли бактерии, которые находятся в сыром мясе?',
      'en': '',
    },
    'kpvnhjjg': {
      'ru': 'Lorem ipsum dolor sit amet, consectetur adipiscing...',
      'en': '',
    },
    '2nipk4vc': {
      'ru':
          ' У здоровых собак отличная иммунная система, готовая ко всем видам бактерий. Рацион BARF как раз укрепит иммунитет вашей собаки и защитит ее от влияния бактерий, которые находятся на улице или даже в вашем доме.',
      'en': '',
    },
    'p1spdp76': {
      'ru': 'Надо ли давать дополнительно витамины к рациону BARF?',
      'en': '',
    },
    'o7elf64o': {
      'ru': 'Lorem ipsum dolor sit amet, consectetur adipiscing...',
      'en': '',
    },
    '80lkr2lz': {
      'ru':
          ' У здоровых собак отличная иммунная система, готовая ко всем видам бактерий. Рацион BARF как раз укрепит иммунитет вашей собаки и защитит ее от влияния бактерий, которые находятся на улице или даже в вашем доме.',
      'en': '',
    },
    'r4vukubl': {
      'ru':
          'А если моя собака уже давно питается промышленным кормом и у нее нет проблем со здоровьем?',
      'en': '',
    },
    'hdstmgjw': {
      'ru': 'Lorem ipsum dolor sit amet, consectetur adipiscing...',
      'en': '',
    },
    '37wak3f4': {
      'ru':
          ' У здоровых собак отличная иммунная система, готовая ко всем видам бактерий. Рацион BARF как раз укрепит иммунитет вашей собаки и защитит ее от влияния бактерий, которые находятся на улице или даже в вашем доме.',
      'en': '',
    },
    '4dxb3dyn': {
      'ru': 'Home',
      'en': '',
    },
  },
  // page2
  {
    'vu1f0cj0': {
      'ru': 'Page Title',
      'en': '',
    },
    '0ew6ww1f': {
      'ru': 'Home',
      'en': '',
    },
  },
  // product
  {
    'mvqkv0is': {
      'ru': 'Для взрослых собак ',
      'en': '',
    },
    'o7u2lgm1': {
      'ru': 'Баранина/Кролик',
      'en': '',
    },
    'zsxp4qgf': {
      'ru':
          'Подходит для ежедвеного кормления. Богат животными белками и Омега-3.',
      'en': '',
    },
    '79aho1jp': {
      'ru':
          'Состав: Мякоть баранины (46,5%), мясо кролика (23,5%), кости кролика (10%), печень баранины (5%), почки бараньи (2,5%), рубец бараний (2,5%), кабачок (3%), брокколи (3%), семена конопли (2%), шпинат (1%), яблоко (1%), льняное масло, конопляное масло.',
      'en': '',
    },
    'qivigu6v': {
      'ru': '500г/300г/100г',
      'en': '',
    },
    '42tjb4nw': {
      'ru': 'Заказать',
      'en': '',
    },
    '91u4jgsm': {
      'ru': 'Page Title',
      'en': '',
    },
    '16y82sn2': {
      'ru': 'Home',
      'en': '',
    },
  },
  // product_form
  {
    'hxy75k72': {
      'ru': 'Page Title',
      'en': '',
    },
    'nwsmvnhy': {
      'ru': 'Для взрослых собак ',
      'en': '',
    },
    'fhr2gav6': {
      'ru': 'Hello World',
      'en': '',
    },
    'qukolhvd': {
      'ru': 'Имя',
      'en': '',
    },
    'w7aor03j': {
      'ru': 'Телефон',
      'en': '',
    },
    'gwda2ec9': {
      'ru': 'Адрес',
      'en': '',
    },
    'p8f1b461': {
      'ru': '',
      'en': '',
    },
    'm8ulta07': {
      'ru': '700г',
      'en': '',
    },
    'twgrv2ch': {
      'ru': '800г',
      'en': '',
    },
    '9k1ewz02': {
      'ru': '900г',
      'en': '',
    },
    '7dn7ez1g': {
      'ru': '600г',
      'en': '',
    },
    'ue5oyayu': {
      'ru': '828₽',
      'en': '',
    },
    'd1bddh40': {
      'ru': 'Даю согласие на обработку персональных данных',
      'en': '',
    },
    '111ga1at': {
      'ru': 'Оформить заказ',
      'en': '',
    },
    'nh6l7udg': {
      'ru': 'Home',
      'en': '',
    },
  },
  // Miscellaneous
  {
    'unf9kn4o': {
      'ru': '',
      'en': '',
    },
    'makcwkse': {
      'ru': '',
      'en': '',
    },
    '69uswa42': {
      'ru': '',
      'en': '',
    },
    'iu66cp9t': {
      'ru': '',
      'en': '',
    },
    'nv6j0el3': {
      'ru': '',
      'en': '',
    },
    'w4vd200o': {
      'ru': '',
      'en': '',
    },
    'fmdpfgpz': {
      'ru': '',
      'en': '',
    },
    'qpnhlpex': {
      'ru': '',
      'en': '',
    },
    'sa43qmre': {
      'ru': '',
      'en': '',
    },
    '5pgud2cd': {
      'ru': '',
      'en': '',
    },
    'r3qmc8fs': {
      'ru': '',
      'en': '',
    },
    'wj11lgjc': {
      'ru': '',
      'en': '',
    },
    '0gv0uwjd': {
      'ru': '',
      'en': '',
    },
    'q17i7d3o': {
      'ru': '',
      'en': '',
    },
    't3u5qyjj': {
      'ru': '',
      'en': '',
    },
    'bcgjxjal': {
      'ru': '',
      'en': '',
    },
    '2nv3onif': {
      'ru': '',
      'en': '',
    },
    '6ard5tct': {
      'ru': '',
      'en': '',
    },
    'fq9ayezl': {
      'ru': '',
      'en': '',
    },
    'lqissep3': {
      'ru': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
