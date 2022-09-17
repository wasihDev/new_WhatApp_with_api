import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../model/chat.dart';
import '../message_screen/messages.dart';
import 'status_View.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  get name => [
        'jack lee',
        'Lucking mathew',
        'Awais fahmeed',
        'Haris Iqbal',
        'SHoaib Bhai',
        'Ibrahim khan',
        'jack lee',
        'Lucking mathew',
        'Awais fahmeed',
        'Haris Iqbal',
      ];

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  Future<List<ChatsModel>> getChatsApi() async {
    final respone = await rootBundle.loadString('json/model.json');
    var data = json.decode(respone) as List<dynamic>;
    //final chats = chatsFromJson(jsonString);
    // print(respone);
    return data.map((e) => ChatsModel.fromJson(e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: const Color.fromARGB(255, 1, 19, 46),
          leading: const Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: CircleAvatar(backgroundImage: AssetImage('images/pic.png')),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Icon(Icons.search, color: Colors.white),
            )
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 1, 19, 46),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(height: 8),
          const Padding(
            padding: EdgeInsets.only(left: 18.0),
            child: Text(
              'Messages',
              style: TextStyle(fontSize: 26, color: Colors.white),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
              child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      )),
                  // Row Status View
                  child: Column(children: [
                    Listgenrate(widget: widget),
                    const SizedBox(height: 15),
                    // Column Chats View
                    Expanded(
                      child: FutureBuilder(
                          future: getChatsApi(),
                          builder: (context, snapshot) {
                            if (snapshot.hasError) {
                              return const Center(child: Text('Error'));
                            } else if (snapshot.hasData) {
                              var items = snapshot.data as List<ChatsModel>;
                              return ListView.builder(
                                  itemCount: items.length,
                                  itemBuilder: (context, index) {
                                    return GestureDetector(
                                      // splashColor: Colors.grey[400],
                                      // highlightColor: Colors.amber[300],
                                      onTap: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  MessagesScreen(
                                                    name: items[index]
                                                        .name
                                                        .toString(),
                                                    pic: items[index]
                                                        .picture
                                                        .toString(),
                                                    text: items[index]
                                                        .lastChat
                                                        .toString(),
                                                    time: items[index]
                                                        .latestTimestamp
                                                        .toString(),
                                                  ))),
                                      onLongPress: () {},
                                      child: ListTile(
                                        leading: CircleAvatar(
                                          radius: 22,
                                          backgroundImage: NetworkImage(
                                              items[index].picture.toString()),
                                        ),
                                        title: Text(
                                          items[index].name.toString(),
                                        ),
                                        subtitle: Text(
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            softWrap: true,
                                            items[index].lastChat.toString()),
                                        trailing: Text(items[index]
                                            .latestTimestamp
                                            .toString()),
                                      ),
                                    );
                                  }

                                  // return Center(child: Text(snapshot.data!.name.toString()));
                                  );
                            } else {
                              return const Center(child: Text('samnashta'));
                            }
                          }),
                    ),
                  ])))
        ]));
  }
}
