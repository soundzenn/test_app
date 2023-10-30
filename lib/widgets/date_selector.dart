import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class LabeledDateField extends StatelessWidget {
  final String label;

  const LabeledDateField({
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20, top: 5, bottom: 5),
            child: Text(label),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
            child: DateTimeField(
              decoration: InputDecoration(
                  suffixIcon: Padding(
                    padding: EdgeInsets.only(top: 0.0),
                    child: Icon(
                      Icons.date_range,
                      color: Color.fromARGB(0, 12, 12, 12),
                    ),
                  ),
                  prefixIcon: Icon(Icons.calendar_today_rounded),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
              format: DateFormat("MMM d, yyyy"),
              onShowPicker: (context, currentValue) async {
                final date = await showDatePicker(
                    context: context,
                    firstDate: DateTime(1900),
                    initialDate: currentValue ?? DateTime.now(),
                    lastDate: DateTime(2100));
                if (date != null) {
                  return date;
                } else {
                  return currentValue;
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
