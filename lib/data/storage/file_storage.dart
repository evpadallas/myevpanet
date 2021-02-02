import 'dart:io';
import 'package:path_provider/path_provider.dart';

class FileStorage {
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/guids.json');
  }

  Future<String> readFile() async {
    final file = await _localFile;
    // Read the file
    String contents = await file.readAsString();
    return contents;
  }
}
