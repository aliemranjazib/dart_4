import 'package:flutter/material.dart';

class WhatsappUi extends StatelessWidget {
  List chats = ["one", "two", "three"];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.flight_land),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.wb_sunny_sharp),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            ),
            PopupMenuButton(
              itemBuilder: (context) {
                return [
                  PopupMenuItem(child: Text("FMMods")),
                  PopupMenuItem(child: Text("FMMods")),
                  PopupMenuItem(child: Text("FMMods")),
                  PopupMenuItem(child: Text("FMMods")),
                ];
              },
            ),
          ],
          title: Text('Whatsapp'),
          bottom: TabBar(
            indicatorColor: Color(0xFF128C7e),
            tabs: [
              Tab(
                child: Icon(
                  Icons.camera_alt,
                  //color: Color(0xFF128C7e),
                ),
              ),
              Tab(
                child: Text(
                  "CHAT",
                ),
              ),
              Tab(
                child: Text("GROUPS"),
              ),
              Tab(
                child: Text("STATUS"),
              ),
              Tab(
                child: Text("CALLS"),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xFF128C7e),
          onPressed: () {},
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        body: TabBarView(children: [
          Center(
            child: Text(
              "CAMERA",
              style: TextStyle(fontSize: 60),
            ),
          ),
          ListTile(
            leading: CircleAvatar(),
            title: Text("mannan"),
            subtitle: Text("hi hope you are good ❤️"),
            trailing: Text(DateTime.now().toString()),
          ),
          Center(
            child: Text(
              "GROUPS",
              style: TextStyle(fontSize: 60),
            ),
          ),
          Center(
            child: Text(
              "STATUS",
              style: TextStyle(fontSize: 60),
            ),
          ),
          Center(
            child: Text(
              "CALLS",
              style: TextStyle(fontSize: 60),
            ),
          ),
        ]),
      ),
    );
  }
}
