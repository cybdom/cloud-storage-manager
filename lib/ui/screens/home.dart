import 'package:flutter/material.dart';
import 'package:storage_manager/global.dart';

import 'details.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black54),
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            )
          ],
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Good Morning",
                          style: Theme.of(context).textTheme.body1,
                        ),
                        Text(
                          "Cybdom Tech",
                          style: Theme.of(context).textTheme.headline,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 45,
                    width: 45,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(9),
                      child: Image.asset(
                        "assets/profile_pic.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: storageBoxes.length,
                itemBuilder: (context, i) {
                  return GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(id: i),
                      ),
                    ),
                    child: Container(
                      margin: const EdgeInsets.all(15),
                      padding: const EdgeInsets.all(25),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: storageBoxes[i].color,
                      ),
                      child: Row(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(9),
                            child: Image.asset(
                              "${storageBoxes[i].icon}",
                              height: 51,
                              width: 51,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "${storageBoxes[i].name}",
                                  style: Theme.of(context)
                                      .textTheme
                                      .title
                                      .copyWith(color: Colors.black),
                                ),
                                SizedBox(height: 9),
                                Text(
                                  "${storageBoxes[i].expiryDate}",
                                  style: Theme.of(context)
                                      .textTheme
                                      .overline
                                      .copyWith(
                                        color: Colors.black.withOpacity(.75),
                                      ),
                                ),
                                SizedBox(height: 9),
                                Text(
                                  "${storageBoxes[i].usedSpace} GB of ${storageBoxes[i].availableSpace} Gb used",
                                  style: Theme.of(context)
                                      .textTheme
                                      .body1
                                      .copyWith(
                                        color: Colors.black.withOpacity(.75),
                                      ),
                                ),
                                SizedBox(height: 5),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(5.0),
                                  child: LinearProgressIndicator(
                                    value: storageBoxes[i].usedSpace /
                                        storageBoxes[i].availableSpace,
                                    backgroundColor: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
