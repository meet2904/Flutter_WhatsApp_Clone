import 'package:flutter/material.dart';

class CallList extends StatelessWidget {
  String photo;
  String name;

  String time;


  CallList({super.key,required this.name,required this.photo,required this.time});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                              time,
                              style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.w400),
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
                            Icon(Icons.call,color: Colors.green,)
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
    );
  }
}
