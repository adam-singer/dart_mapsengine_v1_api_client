library hop_runner;

import 'package:hop/hop.dart';
import 'package:hop/hop_tasks.dart';
import 'package:hop_docgen/hop_docgen.dart';

void main(List<String> args) {

  List pathList = [
    'lib/mapsengine_v1_api_browser.dart',
    'lib/mapsengine_v1_api_console.dart',
    'lib/mapsengine_v1_api_client.dart'
  ];

  addTask('docs', createDocGenTask(pathList, linkApi: true));

  addTask('analyze', createAnalyzerTask(pathList));

  runHop(args);
}
