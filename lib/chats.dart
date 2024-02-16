import 'package:flutter/material.dart';
import 'package:whatsapp/chat_list.dart';

import 'list_s.dart';

class Chats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // print(DateTime.now().toString()+"  Inside widget built  ");
    var chatsList = getChats();
    return Scaffold(
        body: ListView.builder(
          itemCount: chatsList.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            Map meet = chatsList[index];
            return Chatlist(
              photo: meet['image'],
              name: meet['name'],
            );
          },
        )
    );
  }
}
