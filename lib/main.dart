import 'package:flutter/material.dart';
import 'package:form_example/view_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const FormScreen(),
    );
  }
}

class FormScreen extends StatefulWidget {
  const FormScreen({Key? key}) : super(key: key);
  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final _nameController = TextEditingController();
  final _identityNumberController = TextEditingController();
  final _birthDateController = TextEditingController();
  final _genderController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _lastEducationController = TextEditingController();
  final _religionController = TextEditingController();
  final _jobController = TextEditingController();
  final _addressController = TextEditingController();
  final _accountTypeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(3),
                child: TextField(
                  key: const Key('nameField'),
                  controller: _nameController,
                  decoration:
                      const InputDecoration(labelText: 'Enter Your Name'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3),
                child: TextField(
                  key: const Key('identityNumberField'),
                  controller: _identityNumberController,
                  decoration: const InputDecoration(
                      labelText: 'Enter Your Identity Number'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3),
                child: TextField(
                  key: const Key('birthDateField'),
                  controller: _birthDateController,
                  decoration:
                      const InputDecoration(labelText: 'Enter Your Birth Date'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3),
                child: TextField(
                  key: const Key('genderField'),
                  controller: _genderController,
                  decoration:
                      const InputDecoration(labelText: 'Enter Your Gender'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3),
                child: TextField(
                  key: const Key('phoneNumberField'),
                  controller: _phoneNumberController,
                  decoration: const InputDecoration(
                      labelText: 'Enter Your Phone Number'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3),
                child: TextField(
                  key: const Key('lastEducationField'),
                  controller: _lastEducationController,
                  decoration: const InputDecoration(
                      labelText: 'Enter Your Last Education'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3),
                child: TextField(
                  key: const Key('religionField'),
                  controller: _religionController,
                  decoration:
                      const InputDecoration(labelText: 'Enter Your Religion'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3),
                child: TextField(
                  key: const Key('jobField'),
                  controller: _jobController,
                  decoration:
                      const InputDecoration(labelText: 'Enter Your Job'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3),
                child: TextField(
                  key: const Key('addressField'),
                  controller: _addressController,
                  decoration:
                      const InputDecoration(labelText: 'Enter Your Address'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3),
                child: TextField(
                  key: const Key('accountTypeField'),
                  controller: _accountTypeController,
                  decoration: const InputDecoration(
                      labelText: 'Enter Your Account Type'),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  if (_nameController.text.isEmpty ||
                      _identityNumberController.text.isEmpty ||
                      _birthDateController.text.isEmpty ||
                      _genderController.text.isEmpty ||
                      _phoneNumberController.text.isEmpty ||
                      _lastEducationController.text.isEmpty ||
                      _religionController.text.isEmpty ||
                      _jobController.text.isEmpty ||
                      _addressController.text.isEmpty ||
                      _accountTypeController.text.isEmpty) {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Warning !!'),
                          content: const Text(
                              'Please, input all your data needed...'),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Text('OK'),
                            ),
                          ],
                        );
                      },
                    );
                  } else {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ViewPage(
                        name: _nameController.text,
                        identitynumber: _identityNumberController.text,
                        birthdate: _birthDateController.text,
                        gender: _genderController.text,
                        phonenumber: _phoneNumberController.text,
                        lasteducation: _lastEducationController.text,
                        religion: _religionController.text,
                        job: _jobController.text,
                        address: _addressController.text,
                        accounttype: _accountTypeController.text,
                      ),
                    ));
                  }
                },
                child: const Text('Submit Data'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}