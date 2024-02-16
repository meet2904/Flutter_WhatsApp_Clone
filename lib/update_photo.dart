import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Status_img extends StatelessWidget {
  String photo;

  Status_img({super.key, required this.photo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Icon(Icons.arrow_back),
        ),
        actions: [
          Icon(Icons.more_vert),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(child: Image.asset(photo)),
      ),
    );
  }
}
