// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone/widgets/contacts_list.dart';
import 'package:flutter_whatsapp_clone/widgets/web_profile_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // profile bar
                  WebProfileBar(),
                  // search bar
                  ContactsList()
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.7,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('images/backgroundImage.png'),
              fit: BoxFit.cover,
            )),
          )
        ],
      ),
    );
  }
}
