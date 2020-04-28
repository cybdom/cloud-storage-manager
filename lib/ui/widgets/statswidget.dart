import 'package:flutter/material.dart';
import 'package:storage_manager/global.dart';


class StatsWidget extends StatelessWidget {
  final String title, value, percentage;
  final Color color;
  final Icon icon;
  const StatsWidget({
    Key key,
    this.title,
    this.value,
    this.icon,
    this.color,
    this.percentage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text("$title"),
        Text(
          "$value",
          style: Theme.of(context)
              .textTheme
              .title
              .copyWith(fontWeight: FontWeight.bold),
        ),
        Row(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(color: color, shape: BoxShape.circle),
              child: icon,
            ),
            SizedBox(width: 3),
            Text(
              "$percentage",
              style: TextStyle(fontSize: 9, color: MyColors.blue),
            )
          ],
        )
      ],
    );
  }
}
