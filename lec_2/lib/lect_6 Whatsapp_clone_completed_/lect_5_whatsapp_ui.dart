import 'package:flutter/material.dart';
import 'package:lec_2/lect_6%20Whatsapp_clone_completed_/model/chatmodel.dart';

class WhatsappUi extends StatelessWidget {
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
        body: Container(
          child: TabBarView(children: [
            Center(
              child: Text(
                "CAMERA",
                style: TextStyle(fontSize: 60),
              ),
            ),
            ListView.separated(
                itemCount: chatList.length,
                separatorBuilder: (context, index) => Divider(),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      print(chatList[index].name);
                    },
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(chatList[index].avatar),
                      ),
                      title: Text(chatList[index].name),
                      subtitle: Text(chatList[index].message),
                      trailing: Text(chatList[index].time),
                    ),
                  );
                }),
            // ListView(
            //     children: chatList
            //         .map((e) => ListTile(
            //               leading: CircleAvatar(
            //                 backgroundImage: NetworkImage(e.avatar),
            //               ),
            //               title: Text(e.name),
            //               subtitle: Text(e.message),
            //               trailing: Text(e.time),
            //             ))
            //         .toList()),
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
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.explore), label: "explore"),
            BottomNavigationBarItem(
                icon: Icon(Icons.explore), label: "explore"),
            BottomNavigationBarItem(
                icon: Icon(Icons.explore), label: "explore"),
          ],
        ),
      ),
    );
  }
}
