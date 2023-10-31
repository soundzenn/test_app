import 'package:flutter/material.dart';
import 'package:test_app/main.dart';
import 'package:test_app/widgets/app_bar.dart';
import 'package:test_app/widgets/date_selector.dart';
import 'package:test_app/widgets/divider_widget.dart';
import 'package:test_app/widgets/recipient_address.dart';
import 'package:test_app/widgets/searchbar.dart';
import 'package:test_app/widgets/selector_widget.dart';
import 'package:test_app/widgets/sender_details.dart';
import 'package:test_app/widgets/sender_info_button.dart';
import 'package:test_app/widgets/textfield.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  List<String> senderAddressLines = ['Address line 1'];
  List<String> recipientAddressLines = ['Address line 1'];

  void addSenderAddressLine() {
    setState(() {
      senderAddressLines.add('Address line ${senderAddressLines.length + 1}');
    });
  }

  void addRecipientAddressLine() {
    setState(() {
      recipientAddressLines
          .add('Address line ${recipientAddressLines.length + 1}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 240, 240, 240),
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Container(
          child: Column(children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'Step 1',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  SelectorWidget(
                    button1Text: 'Add address',
                    button2Text: 'Select address',
                    label: 'Sender Details',
                  ),
                  SenderDetails(),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: senderAddressLines.length,
                    itemBuilder: (context, index) {
                      return LabeledTextField(
                        icon: Icon(Icons.location_searching_sharp),
                        hintText: 'Derzhinskogo 3b',
                        label: 'Address line ${index + 1}*',
                      );
                    },
                  ),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.only(left: 20, bottom: 10, right: 20),
                    child: TextButton(
                        onPressed: addSenderAddressLine,
                        child: Text('Add address line +')),
                  ),
                  LabeledTextField(
                    label: 'Postcode*',
                    icon: Icon(Icons.post_add),
                    hintText: '220069',
                  ),
                  SizedBox(height: 15),
                  SelectorWidget(
                    button1Text: 'Add address',
                    button2Text: 'Select address',
                    label: 'Recipient Address',
                  ),
                  RecipientAddress(),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: recipientAddressLines.length,
                    itemBuilder: (context, index) {
                      return LabeledTextField(
                        icon: Icon(Icons.location_searching_sharp),
                        hintText: 'Derzhinskogo 3b',
                        label: 'Address line ${index + 1}*',
                      );
                    },
                  ),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.only(left: 20, bottom: 10, right: 20),
                    child: TextButton(
                        onPressed: addRecipientAddressLine,
                        child: Text('Add address line +')),
                  ),
                  LabeledTextField(
                    label: 'Postcode*',
                    icon: Icon(Icons.post_add),
                    hintText: '220069',
                  ),
                  Container(
                    color: Colors.white,
                    child: Center(
                      child: Expanded(
                          child: ElevatedButton(
                        child: Text('Next Step'),
                        onPressed: () {},
                      )),
                    ),
                  ),
                  AddressButton(),
                  CustomSearchBar(),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
