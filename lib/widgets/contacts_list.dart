// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone/colors.dart';
import 'package:flutter_whatsapp_clone/info.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: info.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(
                      bottom: 8,
                    ),
                    child: ListTile(
                      title: Text(
                        info[index]['name'].toString(),
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          info[index]['message'].toString(),
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      leading: CircleAvatar(
                        backgroundImage:
                            NetworkImage(info[index]['profilePic'].toString()),
                      ),
                      trailing: Text(
                        info[index]['time'].toString(),
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Divider(
            color: dividerColor,
            indent: 85,
          )
        ],
      ),
    );
  }
}
