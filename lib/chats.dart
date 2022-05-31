import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (_) {
          _.disallowGlow();
          return true;
        },
        child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage("https://i.postimg.cc/6pVCh07w/Image-2022-05-31-at-13-21-54.jpg"),
                radius: 30,
              ),
              title: Text(
                'Anita Fransiska',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Row(
                children: [
                  Icon(
                    Icons.access_alarm,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                  Text('Yuk besok kita meet time?'),
                ],
              ),
              trailing: Text('07.00'),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage("https://i.postimg.cc/V60hvp6m/2022-05-31-at-13-21-53.jpg"),
                radius: 30,
              ),
              title: Text(
                'Indah Dwi',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Row(
                children: [
                  Icon(
                    Icons.done_all_rounded,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                  Text('Bagaimana kabar Anda?'),
                ],
              ),
              trailing: Text('18.00'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: Icon(
          Icons.chat_bubble,
          color: Colors.white,
        ),
      ),
    );
  }
}
