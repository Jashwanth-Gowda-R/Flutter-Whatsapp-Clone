// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone/colors.dart';

class WebProfileBar extends StatelessWidget {
  const WebProfileBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.30,
      height: MediaQuery.of(context).size.height * 0.077,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border(
          right: BorderSide(
            color: dividerColor,
          ),
        ),
        color: webAppBarColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://pbs.twimg.com/profile_images/1439288610419732484/8vcmpY9X_400x400.jpg'),
            radius: 20,
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.comment),
                color: Colors.grey,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert),
                color: Colors.grey,
              ),
            ],
          )
        ],
      ),
    );
  }
}
