import 'package:flutter/material.dart';
import 'package:storage_manager/global.dart';
import 'package:storage_manager/ui/widgets/widgets.dart';

class DetailsScreen extends StatelessWidget {
  final int id;

  const DetailsScreen({Key key, this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black54),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            )
          ],
        ),
        body: Stack(
          children: <Widget>[
            ListView(
              padding: const EdgeInsets.all(9),
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "${storageBoxes[id].name}",
                            style: Theme.of(context).textTheme.title,
                          ),
                          Text(
                            "${storageBoxes[id].expiryDate}",
                            style: Theme.of(context).textTheme.overline,
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
                          "${storageBoxes[id].icon}",
                          fit: BoxFit.cover,
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 9),
                  height: MediaQuery.of(context).size.height / 3,
                  child: Stack(
                    children: <Widget>[
                      Positioned.fill(
                        top: 35,
                        child: Container(
                          decoration: BoxDecoration(
                            color: MyColors.lightBlue,
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "Need more space?",
                                      style: Theme.of(context).textTheme.title,
                                    ),
                                    RaisedButton(
                                      child: Text(
                                        "Buy Storage",
                                        style: Theme.of(context)
                                            .textTheme
                                            .button
                                            .copyWith(
                                              color: Colors.white,
                                            ),
                                      ),
                                      onPressed: () {},
                                      color: MyColors.blue,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(9),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Expanded(child: Image.asset('assets/person2.png')),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Text("My Storage", style: Theme.of(context).textTheme.title),
                SizedBox(height: 9),
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                  ),
                  itemCount: storageBoxes[id].storageFolders.length,
                  itemBuilder: (context, i) {
                    return Container(
                      padding: const EdgeInsets.all(9),
                      decoration: BoxDecoration(
                        color: MyColors.lightGrey,
                        borderRadius: BorderRadius.circular(9),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Image.asset(
                            "${storageBoxes[id].storageFolders[i].icon}",
                            height: 51,
                            width: 51,
                          ),
                          SizedBox(height: 9),
                          Text(
                            "${storageBoxes[id].storageFolders[i].name}",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "${storageBoxes[id].storageFolders[i].creationDate}",
                            style: TextStyle(
                              color: Colors.black.withOpacity(.5),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 10,
                ),
              ],
            ),
            Positioned.fill(
              child: DraggableScrollableSheet(
                initialChildSize: .1,
                minChildSize: .1,
                builder: (context, controller) => Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, -5),
                          color: Colors.grey.withOpacity(.3),
                          blurRadius: 5),
                    ],
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      topLeft: Radius.circular(15),
                    ),
                    color: Colors.white,
                  ),
                  child: ListView(
                    controller: controller,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            "23,742",
                            style: Theme.of(context).textTheme.headline.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Interaction from 1 Feb - 6 Feb",
                            style: Theme.of(context).textTheme.overline,
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 15),
                        height: MediaQuery.of(context).size.height / 4,
                        child: StatsByDateWidget(storageBoxId: id),
                      ),
                      GridView(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1.5
                        ),
                        children: <Widget>[
                          StatsWidget(
                            color: MyColors.lightBlue,
                            icon: Icon(
                              Icons.trending_up,
                              color: MyColors.blue,
                              size: 16,
                            ),
                            percentage: "43.69%",
                            value: "20,837",
                            title: "Visitors",
                          ),
                          StatsWidget(
                            color: MyColors.orange,
                            icon: Icon(
                              Icons.trending_down,
                              color: Colors.orange,
                              size: 16,
                            ),
                            percentage: "4.43%",
                            value: "35,021",
                            title: "PageViews",
                          ),
                          StatsWidget(
                            color: MyColors.lightBlue,
                            icon: Icon(
                              Icons.trending_up,
                              color: MyColors.blue,
                              size: 16,
                            ),
                            percentage: "15.96%",
                            value: "3,123",
                            title: "Download Files",
                          ),
                          StatsWidget(
                            color: MyColors.orange,
                            icon: Icon(
                              Icons.trending_down,
                              color: Colors.orange,
                              size: 16,
                            ),
                            percentage: "2.12%",
                            value: "12.3 GB",
                            title: "Bandwidth Usage",
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
