import 'package:flutter/material.dart';

import 'chat_main_screen.dart';

class RowView extends StatefulWidget {
  const RowView({Key? key, required this.name, required this.pic})
      : super(key: key);
  final String name;
  final String pic;

  @override
  State<RowView> createState() => _RowViewState();
}

class _RowViewState extends State<RowView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14.0, top: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Image.asset(
                widget.pic,
                width: 62,
                height: 62,
              ),
              const SizedBox(height: 4),
              Text(
                widget.name,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
              )
            ],
          )
        ],
      ),
    );
  }
}

class Listgenrate extends StatelessWidget {
  const Listgenrate({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final ChatScreen widget;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
            children: List.generate(
                10,
                (index) => RowView(
                    name: widget.name[index], pic: 'images/logo.png'))));
  }
}
