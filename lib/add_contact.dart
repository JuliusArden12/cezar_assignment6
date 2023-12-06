import 'package:flutter/material.dart';

class AddItems extends StatefulWidget {
  AddItems({super.key, required this.addInfos});
  Function addInfos;
  @override
  State<AddItems> createState() => _AddItemsState();
}

class _AddItemsState extends State<AddItems> {
  // List<InfoItems> _itemList = [];
  var firstController = TextEditingController();
  var lastController = TextEditingController();
  var numberController = TextEditingController();
  var addressController = TextEditingController();
  var emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add items'),
      ),
      body: Column(
        children: [
          Card(
            child: Padding(
              padding: EdgeInsets.all(4),
              child: Column(
                children: [
                  TextField(
                    controller: firstController,
                    decoration: InputDecoration(labelText: 'First Name'),
                  ),
                  TextField(
                    controller: lastController,
                    decoration: InputDecoration(labelText: 'Last Name'),
                  ),
                  TextField(
                    controller: numberController,
                    decoration: InputDecoration(labelText: 'Contact number'),
                    keyboardType: TextInputType.number,
                  ),
                  TextField(
                    controller: addressController,
                    decoration: InputDecoration(labelText: 'Address'),
                  ),
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(labelText: 'Email Address'),
                  ),
                  TextButton(
                      onPressed: () {
                        widget.addInfos(
                            firstController.text,
                            lastController.text,
                            numberController.text,
                            addressController.text,
                            emailController.text);
                        Navigator.pop(context);
                      },
                      child: Text('Add Contact'))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
