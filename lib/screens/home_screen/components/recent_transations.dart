import 'package:flutter/material.dart';
import 'package:pocketplanner/Utils/text_style.dart';

class RecentTransactions extends StatelessWidget {
  const RecentTransactions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Row(
        children: [
          ...List.generate(
            6,
            (index) {
              return SizedBox(
                height: 160,
                width: 150,
                child: Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 13.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        //
                        CircleAvatar(
                          child: Icon(
                            Icons.monetization_on,
                            color: Colors.blue,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Salary",
                          style: PocketPlannerStyle.incomeTextColor,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "12000",
                          style: PocketPlannerStyle.normalBlackText,
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
