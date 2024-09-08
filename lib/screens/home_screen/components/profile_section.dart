import 'package:flutter/material.dart';
import 'package:pocketplanner/Utils/Colors.dart';
import 'package:pocketplanner/Utils/mediaquery.dart';
import 'package:pocketplanner/Utils/text_style.dart';

class Profile extends StatelessWidget {
  const Profile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenSize.screenHeight(context, 30),
      width: double.infinity,
      color: PocketPlannerColors.defaultGreenColor,
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              maxRadius: ScreenSize.screenHeight(context, 5),
              child: const Icon(Icons.person_2),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Total Expenses",
              style: PocketPlannerStyle.normalTextSize,
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "10000",
              style: PocketPlannerStyle.amount,
            )
          ],
        ),
      ),
    );
  }
}
