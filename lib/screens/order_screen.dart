import 'package:flutter/material.dart';
import 'package:test_app/main.dart';
import 'package:test_app/widgets/app_bar.dart';
import 'package:test_app/widgets/custom_elevated_button.dart';
import 'package:test_app/widgets/date_selector.dart';
import 'package:test_app/widgets/divider_widget.dart';
import 'package:test_app/widgets/recipient_address.dart';
import 'package:test_app/widgets/recipient_info_button.dart';
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
  bool isSelectAddress = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 240, 240, 240),
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Container(
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
              isSelectAddress
                  ? SizedBox()
                  : LabeledDateField(label: 'Start Date'),
              SelectorWidget(
                isSelectAddress: isSelectAddress,
                buttonTextOne: 'Add address',
                buttonTextTwo: 'Select address',
                label: 'Sender Details',
                callbackOne: () {
                  setState(() {
                    isSelectAddress = false;
                  });
                },
                callbackTwo: () {
                  setState(() {
                    isSelectAddress = true;
                  });
                },
              ),
              isSelectAddress ? SelectAddressBody() : AddAddressBody(),
            ],
          ),
        ),
      ),
    );
  }
}

class AddAddressBody extends StatefulWidget {
  const AddAddressBody({super.key});

  @override
  State<AddAddressBody> createState() => _AddAddressBodyState();
}

class _AddAddressBodyState extends State<AddAddressBody> {
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
    return Column(
      children: [
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
          width: double.infinity,
          color: Colors.white,
          alignment: AlignmentDirectional.topStart,
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
          isSelectAddress: false,
          buttonTextOne: 'Add address',
          buttonTextTwo: 'Select address',
          label: 'Recipient Address',
          callbackOne: () {},
          callbackTwo: () {},
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
          width: double.infinity,
          alignment: AlignmentDirectional.topStart,
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
            child: CustomElevatedButton(
              height: 50,
              margin: EdgeInsets.symmetric(horizontal: 20),
              text: 'Next Step',
              onPressed: () {},
              color: Color.fromRGBO(234, 86, 13, 1),
            ),
          ),
        ),
      ],
    );
  }
}

class SelectAddressBody extends StatelessWidget {
  const SelectAddressBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomSearchBar(),
        AddressButton(),
        CustomSearchBar(),
        RecepientButton()
      ],
    );
  }
}
