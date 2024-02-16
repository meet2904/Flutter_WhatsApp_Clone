import 'package:flutter/material.dart';
import 'package:whatsapp/chat_conv.dart';

import 'list_s.dart';



class Chatlist extends StatelessWidget {
  String photo;

  String name;
  Chatlist({required this.photo,required this.name});

  @override
  Widget build(BuildContext context) {

    int imageIndex = 0;
    return InkWell(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Chat_conv(name: name,photo: photo),)),
      child: Padding(
        padding: const EdgeInsets.only(top: 2, bottom: 2),
        child: Row(
          children: [
            Container(
                padding: EdgeInsets.all(10.0),
                child: CircleAvatar(
                  radius: 26,
                  backgroundImage: AssetImage(photo),
                )),
            Expanded(
                child: Container(
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          Text(
                            "kav hamna",
                            style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "26/01/2023",
                            style: TextStyle(color: Colors.grey,fontSize: 12,fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              height: 70,
            )),
          ],
        ),
      ),
    );
  }
}
