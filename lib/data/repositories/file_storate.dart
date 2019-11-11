import 'dart:async';
import 'dart:io';

class FileStorage {
  const FileStorage(
    this.tag,
    this.getDirectory,
  );

  final String tag;
  final Future<Directory> Function() getDirectory;

  Future<File> _getLocalFile() async {
    final dir = await getDirectory();

    return File('${dir.path}/raqet__$tag.json');
  }

  Future<dynamic> load() async {
    final file = await _getLocalFile();
    if (!await file.exists()) {
      return null;
    }
    final contents = await file.readAsString();

    return contents;
  }

  Future<File> save(String data) async {
    final file = await _getLocalFile();

    return file.writeAsString(data);
  }

  Future<FileSystemEntity> delete() async {
    final file = await _getLocalFile();

    return file.delete();
  }

  Future<bool> exists() async {
    final file = await _getLocalFile();

    return file.existsSync();
  }
}
