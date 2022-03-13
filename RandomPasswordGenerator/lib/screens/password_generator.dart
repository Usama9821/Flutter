import 'dart:math';

class PasswordGen {
  generateNew({int len = 4, String charset = '0123456789'}) {
    var _rand = Random.secure();
    String pass = '';
    //rand.nextInt(10);
    for (var i = 0; i < len; ++i) {
      int random = _rand.nextInt(charset.length);
      pass += charset[random];
    }
    return pass;
  }
}
/*
generateNew({int len = 4, String charset = '0123456789'}) {
  var _rand = Random.secure();
  String pass = '';
  //rand.nextInt(10);
  for (var i = 0; i < len; ++i) {
    int random = _rand.nextInt(charset.length);
    pass += charset[random];
  }
  return pass;
} */
