import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class FormInputScreen extends StatefulWidget {
  const FormInputScreen({super.key});

  @override
  State<FormInputScreen> createState() => _FormInputScreenState();
}

class _FormInputScreenState extends State<FormInputScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade500,
        title: const Text('FORM INPUT FIELDS'),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            FormBuilderTextField(
              cursorColor: Colors.red,
              name: 'fname',
              decoration: InputDecoration(
                label: Text('Full name'),
                filled: true,
              ),
            ),
            FormBuilderTextField(
              cursorColor: Colors.red,
              name: 'username',
            ),
            FormBuilderTextField(
              cursorColor: Colors.red,
              name: 'email',
              keyboardType: TextInputType.emailAddress,
            ),
            FormBuilderTextField(
              cursorColor: Colors.red,
              name: 'phone',
              keyboardType: TextInputType.number,
            ),
            FormBuilderDateTimePicker(
              cursorColor: Colors.red,
              name: 'dob',
              keyboardType: TextInputType.datetime,
            ),
            FormBuilderCheckboxGroup<String>(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration:
                  const InputDecoration(labelText: 'The language of my people'),
              name: 'languages',
              // initialValue: const ['Dart'],
              options: const [
                FormBuilderFieldOption(value: 'Male'),
                FormBuilderFieldOption(value: 'Female'),
              ],
              separator: const VerticalDivider(
                width: 10,
                thickness: 5,
                color: Colors.red,
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: null,
                child: Text('SUBMIT'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
