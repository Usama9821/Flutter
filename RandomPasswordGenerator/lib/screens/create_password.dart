import 'package:flutter/material.dart';
import 'package:fluid_slider/fluid_slider.dart';
import 'package:clipboard/clipboard.dart';
import 'package:get/get.dart';
import 'controllers.dart';
import 'password_generator.dart';

const String alphaCap = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
const String alphaSmall = 'abcdefghijklmnopqrstuvwxyz';
const String numbers = '0123456789';
const String symbols = '@#&*?!.+_%';

class PasswordScreen extends StatefulWidget {
  @override
  _PasswordScreenState createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  final CondContrller statechecker = CondContrller.to;

  //double len = 4;

  var password = PasswordGen();
  var generated;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Password Generator'),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      backgroundColor: Colors.purple[50],
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    icon: Icon(Icons.copy),
                    onPressed: () {
                      FlutterClipboard.copy(
                          statechecker.generatedPass.value.toString());
                      // ScaffoldMessenger.of(context).showSnackBar(
                      //   _snackBar,
                      // );
                      Get.snackbar('copied', '',
                          titleText: Text(
                            'password copied',
                            textAlign: TextAlign.center,
                          ),
                          snackPosition: SnackPosition.TOP,
                          duration: Duration(seconds: 2));
                      //Get.isOverlaysClosed;
                      //ScaffoldMessengerState().showSnackBar(_snackBar);
                    },
                  ),
                ),
                Obx(
                  () => statechecker.generatedPass.value.isEmpty == true
                      ? Text('select below options to generate password')
                      : Card(
                          color: Colors.blueGrey[50],
                          child: SelectableText(
                            statechecker.generatedPass.value.toString(),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.bold),
                          ),
                        ),
                ),
                SizedBox(height: 100),

                Obx(
                  () => CustomTile(
                    typeof: 'ABCD',
                    value: statechecker.caps.value,
                    func: (val) {
                      statechecker.capsState(val);
                      if (statechecker.caps.value) {
                        statechecker.char.value =
                            statechecker.char.value + alphaCap;
                      } else {
                        return statechecker.char.value =
                            statechecker.char.value.replaceAllMapped(
                                RegExp(
                                  r'([ABCDEFGHIJKLMNOPQRSTUVWXYZ])',
                                  caseSensitive: true,
                                ),
                                (Match m) => '');
                      }
                    },
                  ),
                ),
                Obx(
                  () => CustomTile(
                    typeof: 'abcd',
                    value: statechecker.smalls.value,
                    func: (val) {
                      statechecker.smallsState(val);
                      if (statechecker.smalls.value) {
                        statechecker.char.value =
                            statechecker.char.value + alphaSmall;
                      } else {
                        return statechecker.char.value = statechecker.char.value
                            .replaceAllMapped(
                                RegExp(r'([abcdefghijklmnopqrstuvwxyz])',
                                    caseSensitive: true),
                                (Match m) => '');
                      }
                    },
                  ),
                ),
                Obx(
                  () => CustomTile(
                    typeof: '1234',
                    value: statechecker.numbs.value,
                    func: (val) {
                      statechecker.numbsState(val);
                      if (statechecker.numbs.value) {
                        statechecker.char.value =
                            statechecker.char.value + numbers;
                      } else {
                        return statechecker.char.value = statechecker.char.value
                            .replaceAllMapped(
                                RegExp(r'\d([0123456789])',
                                    caseSensitive: true),
                                (Match m) => '');
                      }
                    },
                  ),
                ),
                Obx(
                  () => CustomTile(
                    typeof: '@*&%#',
                    value: statechecker.symbs.value,
                    func: (val) {
                      statechecker.symbsState(val);
                      if (statechecker.symbs.value) {
                        statechecker.char.value =
                            statechecker.char.value + symbols;
                      } else {
                        statechecker.char.value = statechecker.char.value
                            .replaceAllMapped(
                                RegExp(r'([@#&*?!.+_%])', caseSensitive: true),
                                (Match m) => '');
                      }
                    },
                  ),
                ),
                //Text('Password Length'),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: FluidSlider(
                    min: 4,
                    max: 40,
                    onValue: (newVal) =>
                        statechecker.passwordlen.value = newVal,
                    sliderColor: Colors.indigo,
                  ),
                ),

                Text(
                  'Password Length',
                  style: TextStyle(color: Colors.indigo[200]),
                ),
                SizedBox(
                  height: 20,
                ),
                FlatButton(
                  child: Text(
                    'Generate',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  color: Colors.indigo,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  onPressed: () {
                    setState(() {
                      statechecker.generatedPass.value = password.generateNew(
                          len: statechecker.passwordlen.value,
                          charset: statechecker.char.value.isNotEmpty
                              ? statechecker.char.value
                              : '0123456789');
                      print(statechecker.generatedPass.value);
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*SnackBar _snackBar = SnackBar(
  behavior: SnackBarBehavior.floating,
  content: Text(
    'password copied',
  ),
  backgroundColor: Colors.lightBlueAccent[100],
);
*/
class CustomTile extends StatelessWidget {
  const CustomTile({
    Key key,
    @required this.typeof,
    @required this.value,
    @required this.func,
  }) : super(key: key);

  final String typeof;
  final bool value;
  final Function func;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: Text(typeof),
      value: value,
      onChanged: func,
    );
  }
}
