import 'package:flutter/material.dart';
import 'package:pocketplanner/Utils/Colors.dart';
import 'package:pocketplanner/Utils/text_style.dart';
import 'package:pocketplanner/screens/home_screen/components/add_transaction.dart';
import 'package:pocketplanner/screens/home_screen/components/profile_section.dart';
import 'package:pocketplanner/screens/home_screen/components/recent_transations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet<void>(
              isScrollControlled: true,
              context: context,
              builder: (BuildContext context) {
                return transactionAdd();
              },
            );
          },
          backgroundColor: PocketPlannerColors.defaultGreenColor,
          child: const Icon(
            Icons.add,
            color: Colors.white,
          )),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Profile(),
            const SizedBox(
              height: 8,
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Recent Transactions",
                          style: PocketPlannerStyle.normalBlackText),
                      Text(
                        "View All",
                        style: PocketPlannerStyle.normalBlackText,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const RecentTransactions(),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text("Filter By Categories"),
                  const SizedBox(
                    height: 20,
                  ),
                  ...filterWidget()
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }

  List<Widget> filterWidget() {
    return List.generate(
      10,
      (index) {
        return Container(
          height: 60,
          margin: const EdgeInsets.all(4),
          decoration: BoxDecoration(
              color: Colors.grey[50],
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(6)),
          child: const ListTile(
            leading: CircleAvatar(),
            title: Text("Name"),
            trailing: Icon(Icons.monetization_on),
          ),
        );
      },
    );
  }
}
