import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

import '../constants.dart';

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
              ),
            ),
          ],
        ),
        Row(
          children: [
            Flexible(
              child: _createTF(
                  context, "inquiry".tr(), ContactUsFields2.textFields[0]),
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
                style: const TextStyle(color: Colors.red, fontSize: 13),
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
              ),
            ),
            //isAr ? const SizedBox(width: 250) : const SizedBox(width: 210),
            const Icon(Icons.arrow_drop_down),
          ],
        ),
        Flexible(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: TextField(
              onTap: () => {
                showModalBottomSheet(
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
                                            tileColor: const Color.fromARGB(
                                                255, 207, 215, 241),
                                            leading: Text(
                                              _inquiryType[0],
                                              style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 20,
                                              ),
                                            ),
                                            shape: const RoundedRectangleBorder(
                                              side: BorderSide(
                                                  color: Color(0xFF0F1737),
                                                  width: 1),
                                            ),
                                            trailing: const Icon(Icons.circle,
                                                color: mainColor),
                                          )
                                        : ListTile(
                                            onTap: () => setState(
                                                () => _inquiryIndex = 0),
                                            leading: Text(
                                              _inquiryType[0],
                                              style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 20,
                                              ),
                                            ),
                                            shape: const RoundedRectangleBorder(
                                              side: BorderSide(
                                                  color: Colors.grey, width: 1),
                                            ),
                                            trailing: Icon(Icons.circle,
                                                color: Colors.grey[200]),
                                          ),
                                    const SizedBox(height: 20),
                                    _inquiryIndex == 1
                                        ? ListTile(
                                            tileColor: const Color.fromARGB(
                                                255, 207, 215, 241),
                                            leading: Text(
                                              _inquiryType[1],
                                              style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 20,
                                              ),
                                            ),
                                            shape: const RoundedRectangleBorder(
                                              side: BorderSide(
                                                  color: Color(0xFF0F1737),
                                                  width: 1),
                                            ),
                                            trailing: const Icon(Icons.circle,
                                                color: mainColor),
                                          )
                                        : ListTile(
                                            onTap: () => setState(
                                                () => _inquiryIndex = 1),
                                            leading: Text(
                                              _inquiryType[1],
                                              style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 20,
                                              ),
                                            ),
                                            shape: const RoundedRectangleBorder(
                                              side: BorderSide(
                                                  color: Colors.grey, width: 1),
                                            ),
                                            trailing: Icon(Icons.circle,
                                                color: Colors.grey[200]),
                                          ),
                                    const SizedBox(height: 20),
                                    _inquiryIndex == 2
                                        ? ListTile(
                                            tileColor: const Color.fromARGB(
                                                255, 207, 215, 241),
                                            leading: Text(
                                              _inquiryType[2],
                                              style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 20,
                                              ),
                                            ),
                                            shape: const RoundedRectangleBorder(
                                              side: BorderSide(
                                                  color: Color(0xFF0F1737),
                                                  width: 1),
                                            ),
                                            trailing: const Icon(Icons.circle,
                                                color: mainColor),
                                          )
                                        : ListTile(
                                            onTap: () => setState(
                                                () => _inquiryIndex = 2),
                                            leading: Text(
                                              _inquiryType[2],
                                              style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 20,
                                              ),
                                            ),
                                            shape: const RoundedRectangleBorder(
                                              side: BorderSide(
                                                  color: Colors.grey, width: 1),
                                            ),
                                            trailing: Icon(Icons.circle,
                                                color: Colors.grey[200]),
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
                                      ),
                                    ),
                                    style: ButtonStyle(
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      )),
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              mainColor),
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
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(30)),
                  ),
                ),
              },
              readOnly: true,
              style: const TextStyle(
                color: mainColor,
                fontSize: 15,
              ),
              controller: ContactUsFields2.textFields[1],
              decoration: InputDecoration(
                fillColor: Colors.transparent,
                hintText: "inquiry".tr(),
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
                style: const TextStyle(color: Colors.red, fontSize: 13),
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
              ),
            ),
          ],
        ),
        Row(
          children: [
            Flexible(
              child: _createTF(
                  context, "write".tr(), ContactUsFields2.textFields[2]),
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
                style: const TextStyle(color: Colors.red, fontSize: 13),
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
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ]),
    );
  }

  Widget _createTF(
    context,
    String lable,
    var controller,
  ) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: TextField(
          style: const TextStyle(
            color: mainColor,
            fontSize: 15,
          ),
          controller: controller,
          decoration: InputDecoration(
            fillColor: Colors.transparent,
            hintText: lable,
          ),
          cursorColor: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
