import 'package:flutter/material.dart';
import 'package:share_market/sharemarket_model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Market posts = new Market();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Divider(),
            FutureBuilder(
                future: posts.getMarket(),
                builder: (context, snapshots) {
                  if (!snapshots.hasData) {
                    return CircularProgressIndicator();
                  } else {
                    return ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: snapshots.data.length,
                      itemBuilder: (context, index) {
                        return Card(
                          color: Colors.transparent,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              height: 360,
                              width: MediaQuery.of(context).size.height - 30,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.red,
                                    Colors.green,
                                  ],
                                ),
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    snapshots.data[index]["companyName"]
                                        .toString(),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Divider(
                                    thickness: 2,
                                    color: Colors.black,
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Wrap(
                                        children: [
                                          Text(
                                            "No of Transations : ",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),
                                          ),
                                          Text(
                                            snapshots.data[index]
                                                    ["noOfTransactions"]
                                                .toString(),
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),
                                          ),
                                          Divider(
                                            thickness: 3,
                                            color: Colors.black,
                                          ),
                                          SizedBox(),
                                          Text(
                                            "Max Price : ",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),
                                          ),
                                          Text(
                                            snapshots.data[index]["maxPrice"]
                                                .toString(),
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),
                                          ),
                                          //edit it
                                          Divider(
                                            thickness: 3,
                                            color: Colors.black,
                                          ),
                                          SizedBox(),
                                          Text(
                                            "Min Price : ",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),
                                          ),
                                          Text(
                                            snapshots.data[index]["minPrice"]
                                                .toString(),
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),
                                          ),

                                          //edit it 2
                                          Divider(
                                            thickness: 3,
                                            color: Colors.black,
                                          ),
                                          SizedBox(),
                                          Text(
                                            "Closing Price : ",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),
                                          ),
                                          Text(
                                            snapshots.data[index]
                                                    ["closingPrice"]
                                                .toString(),
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),
                                          ),

                                          Divider(
                                            thickness: 3,
                                            color: Colors.black,
                                          ),
                                          SizedBox(),
                                          Text(
                                            "Traded Shares : ",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),
                                          ),
                                          Text(
                                            snapshots.data[index]
                                                    ["tradedShares"]
                                                .toString(),
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),
                                          ),

                                          Divider(
                                            thickness: 3,
                                            color: Colors.black,
                                          ),
                                          SizedBox(),
                                          Text(
                                            "Amounts : ",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),
                                          ),
                                          Text(
                                            snapshots.data[index]["amount"]
                                                .toString(),
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),
                                          ),

                                          Divider(
                                            thickness: 3,
                                            color: Colors.black,
                                          ),
                                          SizedBox(),
                                          Text(
                                            "Previous Closings : ",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),
                                          ),
                                          Text(
                                            snapshots.data[index]
                                                    ["previousClosing"]
                                                .toString(),
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),
                                          ),

                                          Divider(
                                            thickness: 3,
                                            color: Colors.black,
                                          ),
                                          SizedBox(),
                                          Text(
                                            "Differences : ",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),
                                          ),
                                          Text(
                                            snapshots.data[index]["difference"]
                                                .toString(),
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  }
                }),
          ],
        ),
      ),
    );
  }
}
