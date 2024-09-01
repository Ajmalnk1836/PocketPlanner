import 'package:flutter/material.dart';
import 'package:moneymanagementapp/Utils/mediaquery.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: ScreenSize.screenHeight(context, 30),
              color: const Color.fromARGB(255, 160, 218, 162),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Recent Transactions",
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                      Text(
                        "View All",
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    child: Row(
                      children: [
                        ...List.generate(
                          6,
                          (index) {
                            return const SizedBox(
                              height: 160,
                              width: 150,
                              child: Card(
                                color: Colors.grey,
                              ),
                            );
                          },
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text("Filter By Categories"),
                  const SizedBox(
                    height: 20,
                  ),
                  ...List.generate(
                    10,
                    (index) {
                      return Container(
                        margin: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            color: Colors.grey[50],
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(6)),
                        child: const ListTile(
                          minTileHeight: 60,
                          leading: CircleAvatar(),
                          title: Text("Name"),
                          trailing: Icon(Icons.monetization_on),
                        ),
                      );
                    },
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
