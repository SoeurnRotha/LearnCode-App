import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class PDFApi{

  static Future<File?> loadFirebase(String url) async{
    try{
      final CproPDF= FirebaseStorage.instance.ref().child(url);
      final bytes = await CproPDF.getData();
      return _storageFile(url,bytes!);
    }catch(e){
      return null;
    }

  }
  static Future<File> _storageFile(String url, List<int> bytes) async{
    final filename = basename(url);
    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/${filename}');
    await file.writeAsBytes(bytes, flush:  true);
    return file;

  }
}