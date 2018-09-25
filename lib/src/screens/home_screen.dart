import 'package:flutter/material.dart';
import 'build_drawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: BuildDrawer(),
      appBar: AppBar(
        title: Text("Kamadhenu"),
        actions: <Widget>[
          IconButton(
            tooltip: "Search",
            icon: Icon(
              Icons.search,
              semanticLabel: "Search",
            ),
            onPressed: () {},
          ),
          IconButton(
            tooltip: "Filter",
            icon: Icon(
              Icons.tune,
              semanticLabel: "Filter",
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16.0),
        childAspectRatio: 8.0 / 9.0,
        children: _buildGridCards(10),
      ),
    );
  }

  List<Card> _buildGridCards(int count) {
    List<Card> cards = List.generate(
      count,
      (int index) => Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 18.0 / 11.0,
                  child: Icon(Icons.transform),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Title"),
                      SizedBox(height: 8.0),
                      Text("Sub title"),
                    ],
                  ),
                ),
              ],
            ),
          ),
    );
    return cards;
  }
}
