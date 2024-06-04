import 'package:flutter/material.dart';

class ViewPage extends StatelessWidget {
  final String name,
      identitynumber,
      birthdate,
      gender,
      phonenumber,
      lasteducation,
      religion,
      job,
      address,
      accounttype;
  
  const ViewPage({
    Key? key,
    required this.name,
    required this.identitynumber,
    required this.birthdate,
    required this.gender,
    required this.phonenumber,
    required this.lasteducation,
    required this.religion,
    required this.job,
    required this.address,
    required this.accounttype,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Name: $name'),
            Text('Identity Number: $identitynumber'),
            Text('Birth Date: $birthdate'),
            Text('Gender: $gender'),
            Text('Phone Number: $phonenumber'),
            Text('Last Education: $lasteducation'),
            Text('Religion: $religion'),
            Text('Job: $job'),
            Text('Address: $address'),
            Text('Account Type: $accounttype'),
          ],
        ),
      ),
    );
  }
}
