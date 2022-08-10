import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:trainee_task/constants.dart';

class ContactUsAttach extends StatefulWidget {
  const ContactUsAttach({Key? key}) : super(key: key);

  @override
  State<ContactUsAttach> createState() => _ContactUsAttachState();
}

class _ContactUsAttachState extends State<ContactUsAttach> {
  bool _isSelected = false;
  static FilePickerResult? resultFinal;
  String fileName = '';

  void _pickFile() async {
    // opens storage to pick files and the picked file or files
    // are assigned into result and if no file is chosen result is null.
    // you can also toggle "allowMultiple" true or false depending on your need
    final result = await FilePicker.platform.pickFiles(allowMultiple: false);

    // if no file is picked
    if (result == null) return;

    // we will log the name, size and path of the
    // first picked file (if multiple are selected)
    fileName = result.files.first.name.toString();
    resultFinal = result;
    setState(() {
      _isSelected = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: 319,
      child: _isSelected
          ? ElevatedButton(
              onPressed: () {
                setState(() {
                  _isSelected = false;
                });
                resultFinal = null;
              },
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: const BorderSide(color: mainColor, width: 1))),
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xFFF3F3F3)),
                elevation: MaterialStateProperty.all<double>(0.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    fileName,
                    style: const TextStyle(
                      color: mainColor,
                      fontSize: 17,
                      fontFamily: 'JannaLT',
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(
                    Icons.clear,
                    color: Color(0xFF930808),
                  )
                ],
              ),
            )
          : ElevatedButton(
              onPressed: () {
                _pickFile();
              },
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: const BorderSide(color: mainColor, width: 1))),
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xFFF3F3F3)),
                elevation: MaterialStateProperty.all<double>(0.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "attach".tr(),
                    style: const TextStyle(
                      color: mainColor,
                      fontSize: 17,
                      fontFamily: 'JannaLT',
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(
                    Icons.add,
                    color: mainColor,
                  )
                ],
              ),
            ),
    );
  }
}
