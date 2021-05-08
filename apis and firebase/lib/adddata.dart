import 'package:dummy/flutterfire.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AddForm extends StatefulWidget {
  @override
  _AddFormState createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
  TextEditingController nameC = TextEditingController();
  TextEditingController genderC = TextEditingController();
  TextEditingController descriptionC = TextEditingController();
  TextEditingController phoneC = TextEditingController();
  TextEditingController _dateC = TextEditingController();
  String data = "save address";
  String initValue = "Select your Birth Date";
  bool isDateSelected = false;
  String birthDateInString;
  DateTime datePick = DateTime(1900);
  DateTime birthDate;
  final _formKey = GlobalKey<FormState>();

  submit() {
    bool isValid = _formKey.currentState.validate();
    if (isValid) {
      _formKey.currentState.save();
      addDate(nameC.text, genderC.text, phoneC.text, descriptionC.text,
          _dateC.text);
      print(nameC.text);
      print(phoneC.text);
      print(genderC.text);
      print(descriptionC.text);
      print(_dateC.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    final style = TextStyle(fontSize: 25, fontWeight: FontWeight.bold);
    var genderlist = ['Male', 'Female'];
    var genderDefaultValue = 'Male';
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Card(
              margin: EdgeInsets.all(20),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Text(
                        "ADD DATA",
                        style: style,
                      ),
                      TextFormField(
                        onFieldSubmitted: (v) {
                          nameC.text = v;
                        },
                        controller: nameC,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "First and last name"),
                      ),
                      SizedBox(height: 20),
                      DropdownButtonFormField(
                        onSaved: (v) {
                          genderC.text = v;
                        },
                        onChanged: (value) {
                          setState(() {
                            genderC.text = value;
                          });
                        },
                        value: genderDefaultValue,
                        items: genderlist
                            .map((e) => DropdownMenuItem(
                                value: e, child: Text(e.toString())))
                            .toList(),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Select your Gender"),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        onFieldSubmitted: (v) {
                          phoneC.text = v;
                        },
                        controller: phoneC,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Enter phone number"),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        onFieldSubmitted: (v) {
                          descriptionC.text = v;
                        },
                        controller: descriptionC,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "description"),
                        maxLines: 3,
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: 'enter date ',
                            border: OutlineInputBorder()),
                        controller: _dateC,
                        onFieldSubmitted: (v) {
                          _dateC.text = v;
                        },
                        onTap: () async {
                          datePick = DateTime(1900);
                          FocusScope.of(context).requestFocus(FocusNode());
                          datePick = await showDatePicker(
                              errorFormatText: 'Enter valid date',
                              errorInvalidText: 'Enter date in valid range',
                              initialEntryMode: DatePickerEntryMode.input,
                              context: context,
                              initialDate: new DateTime.now(),
                              firstDate: new DateTime(1900),
                              lastDate: new DateTime(2100));
                          if (datePick != null && datePick != birthDate) {
                            setState(() {
                              birthDate = datePick;
                              isDateSelected = true;
                              birthDateInString =
                                  "${birthDate.month}/${birthDate.day}/${birthDate.year}";
                              _dateC.text =
                                  DateFormat.yMMMMd().format(birthDate);
                            });
                          }
                        },
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                          onPressed: () {
                            submit();
                          },
                          child: Text('add')),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
