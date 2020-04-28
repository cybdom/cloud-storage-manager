import 'package:flutter/material.dart';
import 'package:storage_manager/global.dart';


class StatsByDateWidget extends StatefulWidget {
  final int storageBoxId;

  const StatsByDateWidget({Key key, this.storageBoxId}) : super(key: key);
  @override
  _StatsByDateWidgetState createState() => _StatsByDateWidgetState();
}

class _StatsByDateWidgetState extends State<StatsByDateWidget> {
  int _active = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: storageBoxes[widget.storageBoxId].stats.length,
      itemBuilder: (context, i) {
        return GestureDetector(
          onTap: () {
            setState(() {
              _active = i;
            });
          },
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 9),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    child: FractionallySizedBox(
                      heightFactor: storageBoxes[widget.storageBoxId]
                              .stats[i]
                              .bandwidthUsage /
                          storageBoxes[widget.storageBoxId].availableSpace,
                      child: Container(
                        width: 51,
                        decoration: BoxDecoration(
                          color:
                              _active == i ? MyColors.blue : MyColors.lightBlue,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                ),
                Text("$i"),
                Text("Feb")
              ],
            ),
          ),
        );
      },
    );
  }
}
