import 'package:flutter/material.dart';
import 'package:pocketplanner/Utils/Colors.dart';
import 'package:pocketplanner/Utils/mediaquery.dart';
import 'package:pocketplanner/Utils/text_style.dart';

class transactionAdd extends StatefulWidget {
  const transactionAdd({
    super.key,
  });

  @override
  State<transactionAdd> createState() => _transactionAddState();
}

// ignore: camel_case_types
class _transactionAddState extends State<transactionAdd> {
  // Initial Selected Value
  String dropdownvalue = 'Item 1';

  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenSize.screenHeight(context, 80),
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 10,
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                'ADD TRANSACTION',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            const Text(
              "Type",
              style: PocketPlannerStyle.AddTransactionHeadingTextSize,
            ),
            const SizedBox(
              height: 6,
            ),
            Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 229, 226, 226),
                  borderRadius: BorderRadius.circular(6)),
              height: 50,
              width: double.infinity,
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  value: dropdownvalue,

                  icon: const Icon(
                    Icons.keyboard_arrow_down,
                  ),

                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Text(
                          items,
                        ),
                      ),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Name",
              style: PocketPlannerStyle.AddTransactionHeadingTextSize,
            ),
            const SizedBox(height: 5),
            Container(
                padding: const EdgeInsets.only(left: 10),
                height: 50,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 229, 226, 226),
                    borderRadius: BorderRadius.circular(6)),
                child: const TextField(
                  decoration: InputDecoration(border: InputBorder.none),
                )),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Date",
              style: PocketPlannerStyle.AddTransactionHeadingTextSize,
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 229, 226, 226),
                  borderRadius: BorderRadius.circular(6)),
              width: double.infinity,
              child: const Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15.0, horizontal: 12),
                child: Text(
                  "Select Date",
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Amount",
              style: PocketPlannerStyle.AddTransactionHeadingTextSize,
            ),
            const SizedBox(height: 5),
            Container(
                padding: const EdgeInsets.only(left: 10),
                height: 50,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 229, 226, 226),
                    borderRadius: BorderRadius.circular(6)),
                child: const TextField(
                  decoration: InputDecoration(border: InputBorder.none),
                )),
            const Spacer(),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              ElevatedButton(
                  style: ButtonStyle(
                      // foregroundColor:
                      //     WidgetStateProperty.all<Color>(Colors.white),
                      // backgroundColor: WidgetStateProperty.all<Color>(
                      //     PocketPlannerColors.defaultGreenColor),
                      // shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                      //   const RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.zero,
                      //     side: BorderSide(
                      //         color: PocketPlannerColors.defaultGreenColor),
                      //   ),
                      //  ),
                      ),
                  onPressed: () => null,
                  child: Text("Save".toUpperCase(),
                      style: const TextStyle(fontSize: 14))),
              const SizedBox(width: 10),
              TextButton(
                  style: const ButtonStyle(
                      // padding: WidgetStateProperty.all<EdgeInsets>(
                      //     const EdgeInsets.all(12)),
                      // foregroundColor:
                      //     WidgetStateProperty.all<Color>(Colors.red),
                      // shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                      //     RoundedRectangleBorder(
                      //         borderRadius: BorderRadius.circular(18.0),
                      //         side: const BorderSide(color: Colors.red)))
                      ),
                  onPressed: () => null,
                  child: Text("Cancel".toUpperCase(),
                      style: const TextStyle(fontSize: 14))),
            ]),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
