import 'package:flutter/material.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({Key? key, this.time, this.name, this.pic, this.text})
      : super(key: key);
  final String? name;
  final String? pic;
  final String? text;
  final String? time;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(name!),
          ),
          const SizedBox(width: 10),
          Text(name!),
        ]),
        backgroundColor: const Color.fromARGB(255, 1, 19, 46),
        actions: const [
          SizedBox(width: 20),
          Icon(Icons.video_call_rounded),
          SizedBox(width: 20),
          Icon(Icons.call),
          SizedBox(width: 20),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            flex: 5,
            child: SizedBox(
              height: 80,
              width: 250,
              child: Card(
                  color: Colors.grey[300],
                  elevation: 4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Wrap(children: [
                          Text(
                              softWrap: true,
                              text!,
                              style: const TextStyle(fontSize: 20)),
                        ]),
                      ),
                      Expanded(
                        child: Text(
                            softWrap: true,
                            time!,
                            style: const TextStyle(fontSize: 16)),
                      )
                    ],
                  )),
            ),
          ),
          Expanded(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Divider(
                    thickness: 2,
                  ),
                  TextField(
                      style: TextStyle(color: Colors.black, fontSize: 18),
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: 'Write a message..',
                        prefixIcon: Icon(
                          Icons.add_box_rounded,
                        ),
                        suffixIcon: Icon(
                          Icons.emoji_emotions_sharp,
                          color: Colors.grey,
                          size: 32,
                        ),
                      )),
                ]),
          ),
        ],
      ),
    );
  }
}
