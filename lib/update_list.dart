import 'package:flutter/material.dart';
import 'package:whatsapp/update_photo.dart';

class Updates_list extends StatelessWidget {
  String status_1;
  String name;
  String samay;

  var time;

  Updates_list({required this.status_1,required this.name,required this.samay});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Status_img(photo: status_1),)),
      child: Row(
        children: [
          Container(
              padding: EdgeInsets.all(10.0),
              child: CircleAvatar(
                radius: 26,
                backgroundImage: AssetImage(status_1),
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
                              samay,
                              style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                height: 70,
              )),
        ],
      ),
    );
  }
}
