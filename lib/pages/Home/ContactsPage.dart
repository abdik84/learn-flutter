import 'package:flutter/material.dart';
import 'package:my_first_app/pages/Contacts/Detail.dart';

class ContactsPage extends StatelessWidget {
  ContactsPage({Key key}) : super(key: key);
  final String title = "Contacts Page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            title,
            style: TextStyle(color: Colors.teal, fontSize: 16),
          ),
          backgroundColor: Colors.white,
        ),
        body: Center(
          child: ContactList(),
        ));
  }
}

class ContactList extends StatelessWidget {
  ContactList({Key key}) : super(key: key);

  final listCount = 3;

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.all(0),
        child: ListView.separated(
            padding: const EdgeInsets.all(0),
            separatorBuilder: (_, ___) => Divider(
                  height: 1,
                  indent: 10,
                  endIndent: 10,
                ),
            itemCount: listCount,
            itemBuilder: (context, index) {
              return Column(
                children: <Widget>[
                  ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Detail(
                                    name: "List " + (index + 1).toString())));
                      },
                      title: Text(
                        "List " + (index + 1).toString(),
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://via.placeholder.com/50/000000/FFFFFF?text=A+K"),
                      ),
                      trailing: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Text('Lihat Detail'),
                          Icon(Icons.chevron_right),
                        ],
                      )),
                ],
              );
            }));
  }
}
