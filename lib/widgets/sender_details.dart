import 'package:flutter/material.dart';
import 'package:test_app/widgets/date_selector.dart';
import 'package:test_app/widgets/divider_widget.dart';
import 'package:test_app/widgets/selector_widget.dart';
import 'package:test_app/widgets/textfield.dart';

class SenderDetails extends StatelessWidget {
  const SenderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LabeledDateField(label: 'Start Date'),
        SizedBox(height: 15),
        SelectorWidget(
          button1Text: 'Add address',
          button2Text: 'Select address',
          label: 'Sender Details',
        ),
        LabeledTextField(
          label: 'Full name*',
          icon: Icon(Icons.person),
          hintText: 'Danilev Egor',
        ),
        LabeledTextField(
          label: 'Email*',
          icon: Icon(Icons.mail),
          hintText: 'egor_zu@email.com',
        ),
        LabeledTextField(
          label: 'Phone number*',
          icon: Icon(Icons.phone),
          hintText: '+375726014690',
        ),
        CustomDivider(),
        LabeledTextField(
          label: 'Country*',
          icon: Icon(Icons.location_on),
          hintText: 'Belarus',
        ),
        LabeledTextField(
          label: 'City*',
          icon: Icon(Icons.location_city_rounded),
          hintText: 'Minsk',
        ),
      ],
    );
    ;
  }
}
