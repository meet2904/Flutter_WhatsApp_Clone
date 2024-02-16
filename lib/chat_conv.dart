// import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
// import 'package:emojis/emojis.dart';
import 'package:flutter/material.dart';

class Chat_conv extends StatefulWidget {
  String photo;
  String name;

  Chat_conv({super.key, required this.photo, required this.name});

  @override
  State<Chat_conv> createState() => _Chat_convState();
}

class _Chat_convState extends State<Chat_conv> {
  TextEditingController _controller = TextEditingController();
  bool show = false;
  bool isMicButtonVisible = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 75,
          leading: InkWell(
              onTap: () => Navigator.pop(context),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.arrow_back,
                  ),
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(widget.photo),
                  ),
                ],
              )),
          title: Row(
            children: [
              Text(widget.name),
            ],
          ),
          actions: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.videocam_rounded),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.call),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.more_vert),
                ),
              ],
            )
          ],
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              "assets/image/back.jpg",
              fit: BoxFit.cover,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width - 55,
                        child: Card(
                          margin: EdgeInsets.only(right: 2, left: 2, bottom: 8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: TextFormField(
                            onTap: () {
                              isMicButtonVisible=!isMicButtonVisible;
                            },

                            // controller: _controller,
                            textAlignVertical: TextAlignVertical.center,
                            keyboardType: TextInputType.multiline,
                            maxLines: 5,
                            minLines: 1,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Message",
                                contentPadding: EdgeInsets.all(5),
                                prefixIcon: IconButton(
                                    // onPressed: () => (
                                    //       // setState(
                                    //       //   () {
                                    //       //     // show = !show;
                                    //       //   },
                                    //       ),
                                    //     ),
                                    icon: Icon(Icons.emoji_emotions_outlined), onPressed: () {  },),
                                suffixIcon: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(Icons.attach_file),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(Icons.camera_alt),
                                    )
                                  ],
                                )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Cicon()
                      ),

                    ],
                  ),
                  // show ? emojiSelect() : Container(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget Cicon(){
    return CircleAvatar(
      backgroundColor: Colors.green,
      radius: 25,
      child: IconButton(onPressed: () {
        setState(() {
          if(isMicButtonVisible=true){
            Icon(Icons.mic);
          }
          else{
            Icon(Icons.send);
          }
        }
        );
      }, icon: Icon(Icons.mic)),
    );
  }

// Widget emojiSelect() {
//   rows:
//   4;
//   columns:
//   7;
//   return EmojiPicker(onEmojiSelected: (emoji, catagori) {
//     print(emoji);
//     // setState(() {
//     //   _controller.text = _controller.text + emoji!;
//     // });
//   });
// }
}

// import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
// import 'package:flutter/material.dart';
//
// class ChatConv extends StatefulWidget {
//   String photo;
//   String name;
//
//   ChatConv({Key? key, required this.photo, required this.name})
//       : super(key: key);
//
//   @override
//   State<ChatConv> createState() => _ChatConvState();
// }
//
// class _ChatConvState extends State<ChatConv> {
//   TextEditingController _controller = TextEditingController();
//   bool showEmojiPicker = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         // ... (rest of your code)
//
//         body: Stack(
//           fit: StackFit.expand,
//           children: [
//             Image.asset(
//               "assets/image/back.jpg",
//               fit: BoxFit.cover,
//             ),
//             Align(
//               alignment: Alignment.bottomCenter,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Container(
//                         width: MediaQuery.of(context).size.width - 55,
//                         child: Card(
//                           margin:
//                           EdgeInsets.only(right: 2, left: 2, bottom: 8),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(25),
//                           ),
//                           child: TextFormField(
//                             controller: _controller,
//                             textAlignVertical: TextAlignVertical.center,
//                             keyboardType: TextInputType.multiline,
//                             maxLines: 5,
//                             minLines: 1,
//                             decoration: InputDecoration(
//                                 border: InputBorder.none,
//                                 hintText: "Message",
//                                 contentPadding: EdgeInsets.all(5),
//                                 prefixIcon: IconButton(
//                                     onPressed: () {
//                                       setState(() {
//                                         showEmojiPicker = !showEmojiPicker;
//                                       });
//                                     },
//                                     icon: Icon(Icons.emoji_emotions_outlined)),
//                                 suffixIcon: Row(
//                                   mainAxisSize: MainAxisSize.min,
//                                   children: [
//                                     Padding(
//                                       padding: const EdgeInsets.all(8.0),
//                                       child: Icon(Icons.attach_file),
//                                     ),
//                                     Padding(
//                                       padding: const EdgeInsets.all(8.0),
//                                       child: Icon(Icons.camera_alt),
//                                     )
//                                   ],
//                                 )),
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(bottom: 8.0),
//                         child: CircleAvatar(
//                           backgroundColor: Colors.green,
//                           radius: 25,
//                           child: Icon(
//                             Icons.mic,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   // if (showEmojiPicker)
//                   //   EmojiPicker(onEmojiSelected: onEmojiSelected),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }

//   void onEmojiSelected(String emoji, String category) {
//     setState(() {
//       _controller.text = _controller.text + emoji;
//     });
//   }
// }
