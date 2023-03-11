import 'package:csv/csv.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:get_it/get_it.dart';

Future<String> loadAsset(String fileName) async {
  return await rootBundle.loadString('assets/$fileName');
}

Future<List<List>> csvToList(String fileName) async {
  final fileText = await loadAsset(fileName);
  return const CsvToListConverter(eol: '\r\n', fieldDelimiter: ',')
      .convert(fileText);
}

const csvNameList = [
  'pokemon.csv',
  'type.csv',
  'ability.csv',
  'move.csv',
  'item.csv',
];

Future<Map<String, List<List>>> initCsvMap() async {
  Map<String, List<List>> csvMap = {};
  for (String csvName in csvNameList) {
    csvMap[csvName] = await csvToList(csvName);
  }
  return csvMap;
}

String translate(
    String csvName, String inputLocale, String inputText, String outputLocale) {
  final csvMap = GetIt.I<Map<String, List<List>>>();
  return searchCsv(csvMap[csvName]!, inputLocale, inputText, outputLocale);
}

String searchCsv(
    List<List> csv, String inputLocale, String inputText, String outputLocale) {
  final inputLocaleIndex = csv[0].indexWhere((column) => column == inputLocale);
  final outputLocaleIndex =
      csv[0].indexWhere((column) => column == outputLocale);
  for (List row in csv) {
    if (inputText == row[inputLocaleIndex]) {
      return row[outputLocaleIndex];
    }
  }
  return '';
}
