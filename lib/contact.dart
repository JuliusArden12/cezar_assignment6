import 'package:flutter/material.dart';

class ViewContact extends StatefulWidget {
  ViewContact(
      {Key? key,
      required this.first,
      required this.last,
      required this.num,
      required this.addr,
      required this.email})
      : super(key: key);
  String first;
  String last;
  String num;
  String addr;
  String email;

  @override
  State<ViewContact> createState() => _ViewContactState();
}

class _ViewContactState extends State<ViewContact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: (Text('View Contact')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Text(widget.first),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Text(widget.last),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Text(widget.num),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Text(widget.addr),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Text(widget.email),
            ),
          ),
        ],
      ),
    );
  }
}
