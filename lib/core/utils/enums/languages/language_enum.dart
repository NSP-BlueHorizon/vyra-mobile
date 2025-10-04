import '../../constants/constants.dart';

enum Languages {
  en(name: 'English', flag: AssetConstants.englishFlag, code: 'en'),
  tr(name: 'Turkish', flag: AssetConstants.turkishFlag, code: 'tr'),
  fr(name: 'French', flag: AssetConstants.frenchFlag, code: 'fr'),
  de(name: 'German', flag: AssetConstants.germanFlag, code: 'de'),
  es(name: 'Spanish', flag: AssetConstants.spanishFlag, code: 'es'),
  pt(name: 'Portuguese', flag: AssetConstants.portugueseFlag, code: 'pt'),
  ru(name: 'Russian', flag: AssetConstants.russianFlag, code: 'ru'),
  it(name: 'Italian', flag: AssetConstants.italianFlag, code: 'it');

  const Languages({required this.name, required this.flag, required this.code});

  final String name;
  final String flag;
  final String code;

  static List<Languages> get all => Languages.values;
}
