import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

import '../../constants.dart';
import 'contact_us2_attach.dart';
import 'contact_us_button.dart';

class ContactUsFields2 extends StatefulWidget {
  const ContactUsFields2({Key? key}) : super(key: key);

  static List<TextEditingController> textFields = [
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
  ];
  static List<String> errors = ['', '', ''];

  @override
  State<ContactUsFields2> createState() => _ContactUsFields2State();
}

class _ContactUsFields2State extends State<ContactUsFields2> {
  final List<String> _inquiryType = [
    "complaint".tr(),
    "suggestion".tr(),
    "inquiry".tr()
  ];
  int _inquiryIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: ListView(children: [
        Row(
          children: [
            const SizedBox(
              width: 30,
            ),
            Text(
              "title".tr(),
              style: const TextStyle(
                  color: mainColor,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'JannaLT'),
            ),
          ],
        ),
        ContactUsFields2.errors[0] == ''
            ? Row(
                children: [
                  Flexible(
                    child: _createTF(context, "inquiry".tr(),
                        ContactUsFields2.textFields[0]),
                  ),
                ],
              )
            : Row(
                children: [
                  Flexible(
                    child: _createTF(
                        context, "inquiry".tr(), ContactUsFields2.textFields[0],
                        correct: false),
                  ),
                ],
              ),
        SizedBox(
          height: 35,
          child: Row(
            children: [
              const SizedBox(
                width: 30,
              ),
              Text(
                ContactUsFields2.errors[0],
                style: const TextStyle(
                  color: Colors.red,
                  fontSize: 13,
                  fontFamily: 'JannaLT',
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            const SizedBox(
              width: 30,
            ),
            Text(
              "messageType".tr(),
              style: const TextStyle(
                color: mainColor,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                fontFamily: 'JannaLT',
              ),
            ),
          ],
        ),
        Flexible(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: TextField(
              // function for selecting message type - bottom sheet -
              onTap: () => messageTypeSheet(context),
              readOnly: true,
              style: const TextStyle(
                color: mainColor,
                fontSize: 15,
              ),
              controller: ContactUsFields2.textFields[1],
              decoration: InputDecoration(
                suffixIcon: const Icon(
                  Icons.keyboard_arrow_down_outlined,
                  size: 45,
                  color: mainColor,
                ),
                fillColor: Colors.transparent,
                hintText: "inquiry".tr(),
                enabledBorder: UnderlineInputBorder(
                  borderSide: ContactUsFields2.errors[1] == ''
                      ? const BorderSide(color: Color(0xFFE6E6E6))
                      : const BorderSide(color: Colors.red),
                ),
              ),
              cursorColor: Theme.of(context).primaryColor,
            ),
          ),
        ),
        SizedBox(
          height: 35,
          child: Row(
            children: [
              const SizedBox(
                width: 30,
              ),
              Text(
                ContactUsFields2.errors[1],
                style: const TextStyle(
                  color: Colors.red,
                  fontSize: 13,
                  fontFamily: 'JannaLT',
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            const SizedBox(
              width: 30,
            ),
            Text(
              "messageContent".tr(),
              style: const TextStyle(
                color: mainColor,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                fontFamily: 'JannaLT',
              ),
            ),
          ],
        ),
        ContactUsFields2.errors[2] == ''
            ? Row(
                children: [
                  Flexible(
                    child: _createTF(
                        context, "write".tr(), ContactUsFields2.textFields[2],
                        lines: 4),
                  ),
                ],
              )
            : Row(
                children: [
                  Flexible(
                    child: _createTF(
                        context, "write".tr(), ContactUsFields2.textFields[2],
                        lines: 4, correct: false),
                  ),
                ],
              ),
        SizedBox(
          height: 25,
          child: Row(
            children: [
              const SizedBox(
                width: 30,
              ),
              Text(
                ContactUsFields2.errors[2],
                style: const TextStyle(
                  color: Colors.red,
                  fontSize: 13,
                  fontFamily: 'JannaLT',
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            const SizedBox(
              width: 30,
            ),
            Text(
              "attachments".tr(),
              style: const TextStyle(
                color: mainColor,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                fontFamily: 'JannaLT',
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              "optional".tr(),
              style: const TextStyle(
                fontSize: 10,
                color: Color(0xFF707070),
                fontWeight: FontWeight.bold,
                fontFamily: 'JannaLT',
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Flexible(
              child: ContactUsAttach(),
            ),
          ],
        ),
        const SizedBox(height: 45),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: ContactUsButton(
                btnText: "send".tr(),
                ContactStep: 2,
                callBack: () => setState(() {}),
              ),
            ),
          ],
        ),
      ]),
    );
  }

  Future<dynamic> messageTypeSheet(BuildContext context) {
    return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          return Wrap(
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ListTile(
                      horizontalTitleGap: -50,
                      leading: TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text(
                          "close".tr(),
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            fontFamily: 'JannaLT',
                          ),
                        ),
                      ),
                      title: Center(
                        child: Text(
                          "choose".tr(),
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: 'JannaLT',
                          ),
                        ),
                      ),
                    ),
                    Container(
                        height: 1.2,
                        width: double.infinity,
                        color: Colors.grey[300]),
                    const SizedBox(height: 40),
                    Column(
                      children: [
                        _inquiryIndex == 0
                            ? ListTile(
                                tileColor:
                                    const Color.fromARGB(255, 207, 215, 241),
                                leading: Text(
                                  _inquiryType[0],
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: 'JannaLT',
                                  ),
                                ),
                                shape: const RoundedRectangleBorder(
                                  side: BorderSide(
                                      color: Color(0xFF0F1737), width: 1),
                                ),
                                trailing:
                                    const Icon(Icons.circle, color: mainColor),
                              )
                            : ListTile(
                                onTap: () => setState(() => _inquiryIndex = 0),
                                leading: Text(
                                  _inquiryType[0],
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: 'JannaLT',
                                  ),
                                ),
                                shape: const RoundedRectangleBorder(
                                  side:
                                      BorderSide(color: Colors.grey, width: 1),
                                ),
                                trailing:
                                    Icon(Icons.circle, color: Colors.grey[200]),
                              ),
                        const SizedBox(height: 20),
                        _inquiryIndex == 1
                            ? ListTile(
                                tileColor:
                                    const Color.fromARGB(255, 207, 215, 241),
                                leading: Text(
                                  _inquiryType[1],
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: 'JannaLT',
                                  ),
                                ),
                                shape: const RoundedRectangleBorder(
                                  side: BorderSide(
                                      color: Color(0xFF0F1737), width: 1),
                                ),
                                trailing:
                                    const Icon(Icons.circle, color: mainColor),
                              )
                            : ListTile(
                                onTap: () => setState(() => _inquiryIndex = 1),
                                leading: Text(
                                  _inquiryType[1],
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: 'JannaLT',
                                  ),
                                ),
                                shape: const RoundedRectangleBorder(
                                  side:
                                      BorderSide(color: Colors.grey, width: 1),
                                ),
                                trailing:
                                    Icon(Icons.circle, color: Colors.grey[200]),
                              ),
                        const SizedBox(height: 20),
                        _inquiryIndex == 2
                            ? ListTile(
                                tileColor:
                                    const Color.fromARGB(255, 207, 215, 241),
                                leading: Text(
                                  _inquiryType[2],
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: 'JannaLT',
                                  ),
                                ),
                                shape: const RoundedRectangleBorder(
                                  side: BorderSide(
                                      color: Color(0xFF0F1737), width: 1),
                                ),
                                trailing:
                                    const Icon(Icons.circle, color: mainColor),
                              )
                            : ListTile(
                                onTap: () => setState(() => _inquiryIndex = 2),
                                leading: Text(
                                  _inquiryType[2],
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontFamily: 'JannaLT',
                                  ),
                                ),
                                shape: const RoundedRectangleBorder(
                                  side:
                                      BorderSide(color: Colors.grey, width: 1),
                                ),
                                trailing:
                                    Icon(Icons.circle, color: Colors.grey[200]),
                              ),
                      ],
                    ),
                    const SizedBox(height: 50),
                    SizedBox(
                      height: 45,
                      width: 319,
                      child: ElevatedButton(
                        onPressed: () {
                          try {
                            ContactUsFields2.textFields[1].text =
                                _inquiryType[_inquiryIndex];
                            Navigator.pop(context);
                          } catch (_) {
                            /* do nothing when pressed before selection since index = -1 */
                          }
                        },
                        child: Text(
                          "chooseType".tr(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            fontFamily: 'JannaLT',
                          ),
                        ),
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          )),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(mainColor),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          );
        },
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      ),
    );
  }

  Widget _createTF(context, String hint, var controller,
      {int? lines = 1, bool correct = true}) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: TextField(
          maxLines: lines,
          style: const TextStyle(
            color: mainColor,
            fontSize: 15,
          ),
          controller: controller,
          decoration: InputDecoration(
            fillColor: Colors.transparent,
            hintText: hint,
            enabledBorder: UnderlineInputBorder(
              borderSide: correct
                  ? const BorderSide(color: Color(0xFFE6E6E6))
                  : const BorderSide(color: Colors.red),
            ),
          ),
          cursorColor: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
