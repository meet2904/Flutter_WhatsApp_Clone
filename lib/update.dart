import 'package:flutter/material.dart';
import 'package:whatsapp/list_s.dart';
import 'package:whatsapp/update_list.dart';

class Updates extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var updateList = getStatus();
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Status",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 23,
                    fontWeight: FontWeight.w600),
              ),
              Icon(Icons.more_vert),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey))),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircleAvatar(
                  radius: 26,
                  backgroundImage: AssetImage("assets/image/ashudidi.png"),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,children: [
                Text("My status",style: TextStyle(color: Colors.black, fontSize: 18),),
                Text("Tap to add status update",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),),
              ],)
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: updateList.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              Map stat = updateList[index];
              return Updates_list(status_1: stat['image'],name: stat['name'],samay: stat['time'],);
            },
          ),
        ),
      ],
    ));
  }
}
