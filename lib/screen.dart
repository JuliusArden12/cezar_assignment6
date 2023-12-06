import 'package:cezar_assignment6/add_contact.dart';
import 'package:cezar_assignment6/contact.dart';
import 'package:cezar_assignment6/contactlist.dart';
import 'package:flutter/material.dart';

class ContactScreen extends StatefulWidget {
  ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  List<Organizer> contactlist = [];
  void addInfos(String firstname, lastname, contactNumber, addr, email) {
    int _id = 1;
    setState(() {
      if (contactlist.isNotEmpty) {
        _id = contactlist.last.id + 1;
      }
      var infos = Organizer(
          id: _id,
          firstname: firstname,
          lastname: lastname,
          contactNumber: contactNumber,
          addr: addr,
          email: email);

      contactlist.add(infos);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Contact Organizer'),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (ctx) {
                      return AddItems(
                        addInfos: addInfos,
                      );
                    },
                  ));
                },
                icon: Icon(Icons.add_box)),
          ],
        ),
        body: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: contactlist.length,
              itemBuilder: (ctx, ind) {
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                        child: Text(
                            '${contactlist[ind].firstname[0]}${contactlist[ind].lastname[0]}')),
                    title: Text(
                        '${contactlist[ind].firstname} ${contactlist[ind].lastname}'),
                    subtitle: Text(contactlist[ind].contactNumber.toString()),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ViewContact(
                                  first: contactlist[ind].firstname,
                                  last: contactlist[ind].lastname,
                                  num: contactlist[ind].contactNumber,
                                  addr: contactlist[ind].addr,
                                  email: contactlist[ind].email)));
                    },
                    trailing: IconButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  content: Text(
                                      'Do you want to delete this contact information?'),
                                  actions: [
                                    TextButton(
                                        onPressed: () {
                                          setState(() {
                                            contactlist.removeAt(ind);
                                            Navigator.pop(context);
                                          });
                                        },
                                        child: Text('Delete')),
                                    TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text('Cancel'))
                                  ],
                                );
                              });
                        },
                        icon: Icon(Icons.delete)),
                  ),
                );
              },
            )),
          ],
        ));
  }
}
