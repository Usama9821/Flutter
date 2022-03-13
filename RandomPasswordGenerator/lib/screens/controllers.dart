import 'package:get/get.dart';

class CondContrller extends GetxController {
  final caps = false.obs;
  final smalls = false.obs;
  final numbs = false.obs;
  final symbs = false.obs;
  final passwordlen = 4.obs;
  //var password.obs;
  var char = ''.obs;
  var generatedPass = ''.obs;

  static CondContrller get to => Get.find<CondContrller>();

  capsState(bool cap) {
    caps(cap);
  }

  smallsState(bool small) {
    smalls(small);
  }

  numbsState(bool numb) {
    numbs(numb);
  }

  symbsState(bool symb) {
    symbs(symb);
  }

  lenState(dynamic len) {
    passwordlen(len);
  }

  charsState(String ch) {
    char(ch);
  }

  passwordState(pass) {
    generatedPass(pass);
  }
}
