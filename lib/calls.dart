import 'package:flutter/material.dart';
import 'package:whatsapp/call_list.dart';
import 'package:whatsapp/list_s.dart';

class Calls extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var callList = getCall();
    return Scaffold(
        body: ListView.builder(
          itemCount: callList.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            Map meet = callList[index];
            return CallList(
              photo: meet['image'],
              name: meet['name'],
              time: meet['time'],
            );
          },
        )
    );
  }

}