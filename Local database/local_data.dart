import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AppLocalData{

  final storage = FlutterSecureStorage();

  dataInsertfun({required String key, required String value})async{
    await storage.write(key: key, value: value);
  }
  dataGetfun({required String key})async{
    await storage.read(key: key);

  }
  dataDeletfun({required String key})async{
    await storage.delete(key: key);
  }
  dataDeletAllfun()async{
    await storage.deleteAll();

  }
}
