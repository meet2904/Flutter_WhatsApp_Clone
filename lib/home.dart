import 'package:flutter/material.dart';
import 'package:whatsapp/update.dart';

import 'calls.dart';
import 'chats.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "WhatsApp",
            style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.camera_alt),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
            PopupMenuButton<String>(
                color: Colors.white,
                itemBuilder: (BuildContext context) {
                  return [
                    PopupMenuItem(child: Text("New group")),
                    PopupMenuItem(child: Text("New brodcast")),
                    PopupMenuItem(child: Text("Linked diviced")),
                    PopupMenuItem(child: Text("Starred messages")),
                    PopupMenuItem(child: Text("Payments")),
                    PopupMenuItem(child: Text("Settings")),
                  ];
                })
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: () {},
          child: Icon(Icons.chat,color: Colors.white,),
        ),
        body: Column(
          children: [
            TabBar(
                tabs: [
              Tab(
                icon: Icon(Icons.person_add_alt_outlined),
              ),
              Tab(
                child: Text(
                  "Chats",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  "Updates",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  "Calls",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ]),
            Expanded(
              child: TabBarView(
                children: [
                  //1st tab
                  Container(
                    color: Colors.blueAccent,
                    child: Center(
                      child: Text(
                        "COMMUNITY",
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  //2nd tab
                  Chats(),
                  //3rd tab
                  Updates(),
                  //4th tab
                  Calls()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
